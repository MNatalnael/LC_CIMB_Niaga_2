using System;

public class Soal4
{
    public static void Main(string[] args)
    {
        // Meminta input string angka yang akan diputar urutannya
        Console.Write("Enter a number: ");
        string angka = Console.ReadLine();

        // Mengubah string menjadi array berisi characters
        char[] arrAngka = angka.ToCharArray();

        // Menjalankan method Reverse untuk memutar urutan character pada string
        Reverse(arrAngka, 0, (arrAngka.Length - 1));

        // Mengubah array character menjadi string
        string reversedString = new string(arrAngka);

        // Melakukan print hasil perubahan urutan string
        Console.WriteLine("Reversed Number: " + reversedString);
    }

    // Method yang mengubah urutan value pada array
    // menggunakan index
    public static void Reverse(char[] arr, int startIndex, int endIndex)
    {
        while (startIndex < endIndex)
        {
            char temp = arr[startIndex];
            arr[startIndex] = arr[endIndex];
            arr[endIndex] = temp;
            startIndex++;
            endIndex--;
        }
    }
}