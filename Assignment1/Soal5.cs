using System;

public class Soal5
{
    public static void Main(string[] args)
    {
        // Meminta input angka yang akan diubah menjadi bentuk tulisan
        Console.Write("Enter the number: ");
        string number = Console.ReadLine();

        // Iterasi seluruh angka yang ada, dan print bentuk tulisannya
        foreach (char c in number)
        {
            if (c == '0')
            {
                Console.Write("zero ");
            }
            else if (c == '1')
            {
                Console.Write("one ");
            }
            else if (c == '2')
            {
                Console.Write("two ");
            }
            else if (c == '3')
            {
                Console.Write("three ");
            }
            else if (c == '4')
            {
                Console.Write("four ");
            }
            else if (c == '5')
            {
                Console.Write("five ");
            }
            else if (c == '6')
            {
                Console.Write("six ");
            }
            else if (c == '7')
            {
                Console.Write("seven ");
            }
            else if (c == '8')
            {
                Console.Write("eight ");
            }
            else if (c == '9')
            {
                Console.Write("nine ");
            }
        }
    }
}