using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using PaymentAPI.Data;
using PaymentAPI.Models;

namespace PaymentAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PaymentDetailController : ControllerBase
    {
        private readonly ApiDbContext _context;

        public PaymentDetailController(ApiDbContext context)
        {
            _context = context;
        }

        [HttpGet]
        public async Task<ActionResult> GetPayments()
        {
            var items = await _context.PaymentDetails.ToListAsync();
            return Ok(items);
        }

        [HttpPost]
        public async Task<ActionResult> CreatePaymentDetails(PaymentDetails data)
        {
            if (ModelState.IsValid)
            {
                await _context.PaymentDetails.AddAsync(data);
                await _context.SaveChangesAsync();

                return CreatedAtAction("CreatePaymentDetails", new { data.PaymentDetailId }, data);
            }
            return new JsonResult("Something went wrong.") { StatusCode = 500 };
        }

        [HttpGet("{id}")]
        public async Task<ActionResult> GetPaymentDetails(int id)
        {
            var item = await _context.PaymentDetails.FirstOrDefaultAsync(x => x.PaymentDetailId == id);

            if (id != item.PaymentDetailId)
            {
                return BadRequest();
            }
            return Ok(item);
        }

        [HttpPut("{id}")]
        public async Task<ActionResult> UpdateItem(int id, PaymentDetails item)
        {
            if (id != item.PaymentDetailId)
            {
                return BadRequest();
            }

            var existItem = await _context.PaymentDetails.FirstOrDefaultAsync(x => x.PaymentDetailId == id);

            if (existItem == null)
            {
                return NotFound();
            }

            existItem.CardOwnerName = item.CardOwnerName;
            existItem.CardNumber = item.CardNumber;
            existItem.ExpirationDate = item.ExpirationDate;
            existItem.SecurityCode = item.SecurityCode;

            await _context.SaveChangesAsync();

            return NoContent();
        }

        [HttpDelete("{id}")]
        public async Task<ActionResult> DeleteItem(int id)
        {
            var existItem = await _context.PaymentDetails.FirstOrDefaultAsync(x => x.PaymentDetailId == id);

            if (existItem == null)
            {
                return NotFound();
            }

            _context.PaymentDetails.Remove(existItem);
            await _context.SaveChangesAsync();

            return Ok(existItem);
        }
    }
}