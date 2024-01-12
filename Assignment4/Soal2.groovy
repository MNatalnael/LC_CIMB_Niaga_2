Scanner scan = new Scanner(System.in)
println("Masukkan jumlah barang yang akan ditambahkan: ")
def jumlahBarangStr = scan.nextLine()
def jumlahBarangInt = Integer.parseInt(jumlahBarangStr)
def listProduk = [][]
def inventaris = 0

for (int i = 1; i <= jumlahBarangInt; i++) {
    println("Masukkan ID barang ke-$i: ")
    def idBarang = scan.nextLine()
    println("Masukkan nama barang: ")
    def namaBarang = scan.nextLine()
    println("Masukkan harga barang: ")
    def hargaBarang = scan.nextLine()
    println("Masukkan stok barang: ")
    def stokBarang = scan.nextLine()
    
    def satuanProduk = [idBarang, namaBarang, hargaBarang, stokBarang]
    listProduk[i-1] = satuanProduk
}

println()
println("Daftar Barang: ")
for(int i = 0; i < listProduk.size(); i++) {
    println("ID: ${listProduk[i][0]}, Nama: ${listProduk[i][1]}, Harga: ${listProduk[i][2]}, Stok: ${listProduk[i][3]}")
    inventaris += Integer.parseInt(listProduk[i][2]) * Integer.parseInt(listProduk[i][3])
}

println()
println("Total nilai inventaris toko: ${inventaris}")