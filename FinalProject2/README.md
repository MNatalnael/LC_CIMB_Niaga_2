## Final Project 2

Final Project 2 - Groovy Scripts and JMeter Tests Pokémon API

1. Task 1 - Find the Next Evolution of Pikachu
   Menggunakan Offset 0 dan Limit 20, dan Endpoint yang diberikan, maka naikkan Offset sampai hasil JSON mengandung entri Pikachu.

   Penambahan Offset dilakukan dengan Looping menggunakan While Controller. Ketika ditemukan, maka entri Pikachu disimpan dan digunakan.

   Evolusi dari Pikachu dapat diakses dari Url yang ditemukan dari Endpoint, dan namanya dapat diambil dari hasil JSON tersebut. Nama dari Pokémon Evolusi dari Pikachu kemudian ditampilkan melalui Log.

2. Task 2 - Find All Pokémon with Wings
   Menggunakan Endpoint yang diberikan, dapat diambil seluruh bentuk Pokémon yang ada. Untuk Task ini, dibutuhkan Pokémon yang memiliki Sayap.

   Entri Sayap ini diambil, dan mengakses Url tersebut memungkinkan pengambilan seluruh Pokémon yang memiliki Sayap. Seluruh Pokémon tersebut kemudian ditampilkan melalui Log.

Hasil dari masing-masing Tests dapat dilihat pada Screenshot yang terdapat dalam repositori.
