using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace PaymentAPI.Models
{
    public class PaymentDetails
    {
        [Key]
        [Required]
        public int PaymentDetailId { get; set; }
        [Required]
        public string CardOwnerName { get; set; }
        [Required]
        public string CardNumber { get; set; }
        [Required]
        public string ExpirationDate { get; set; }
        [Required]
        public string SecurityCode { get; set; }
    }
}