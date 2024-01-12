def jumlah = 0
println("Masukkan jumlah data: ")
Scanner scan = new Scanner(System.in)
def jumlahData = scan.nextInt()
try {
    for(int i = 1; i <= jumlahData; i++) {
        println("Masukkan bilangan ke-$i: ")
        def angka = scan.nextInt();
        jumlah += angka
    }
    def rata2 = jumlah/jumlahData
    print("Rata-rata: $rata2")
} catch (InputMismatchException e) {
    println("Error: Masukkan harus berupa angka")
}