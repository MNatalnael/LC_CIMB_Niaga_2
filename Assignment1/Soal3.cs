using System;
public class Soal3
{
    public static void Main()
    {
        // Meminta angka untuk dihitung faktorialnya
        Console.Write("Enter any number: ");
        int num = int.Parse(Console.ReadLine());

        // Print jumlah faktorial dari angka tersebut
        Console.WriteLine("Factorial of " + num + " is " + factorial(num));
    }

    // Method rekursif yang menghitung faktorial angka tertentu.
    static int factorial(int num)
    {
        if (num == 0)
            return 1;

        return num * factorial(num - 1);
    }
}
