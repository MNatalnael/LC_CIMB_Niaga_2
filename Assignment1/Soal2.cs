using System;
public class Soal2
{
    public static void Main(string[] args)
    {
        // Meminta input jumlah baris angka yang akan di print
        Console.Write("Enter the number of alphabets: ");
        int rows = int.Parse(Console.ReadLine());

        // Awal dari karakter angka
        char ch = '1';

        // Loop 1: Untuk iterasi baris 
        for (int i = 1; i <= rows; i++)
        {
            // Loop 2: Untuk print baris kosong sehingga segitiga berada ditengah
            for (int j = rows; j >= i; j--)
                Console.Write(" ");

            // Loop 3: Untuk print angka 1 sampai angka sesuai jumlah baris
            for (int k = 1; k <= i; k++)
                Console.Write(ch++);
            ch--;

            // Loop 4: Untuk print angka secara terbalik sampai ke 1
            for (int l = 1; l < i; l++)
                Console.Write(--ch);

            // Print baris baru
            Console.Write("\n");
            ch = '1';
        }
    }
}