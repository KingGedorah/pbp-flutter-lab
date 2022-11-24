# Tugas 7 : Elemen Dasar Flutter

## Stateless Widget vs Stateful Widget
Stateless widget merupakan widget yang keadaannya tidak dapat diubah setelah widget tersebut dibuat (immutable). Sedangkan Stateful widget merupakan widget yang keadaanya dapat kita ubah setelah widget tersebut dibuat.

## Widget yang digunakan pada tugas
- `Text`, untuk menampilkan tulisan
- `Floating Action Button`, button yang dapat melakukan action tertentu seperti mengurangi nilai counter atau menambah nilai counter
- `Padding`,  untuk mengatur ukuran _padding_
- `Row`, untuk menapilkan `children` dalam format horizontal

## Kegunaan `setState()`
`setState()` berfungsi untuk memberi tahu _stateful widget_ jika terdapat _state_ yang akan mengalami perubahan _value_ sehingga aplikasi nantinya akan menampilkan _value_ yang telah diupdate.

## `const` vs `final`
`const` dan `final` merupakan _modifier_ yang digunakan untuk variabel yang nilainya tidak bisa diubah setelah pembuatannya. Perbedaan antara keduanya ialah `const` _modifier_ yang nilainya di_assign_ sebelum _runtime_ sedangkan `final` merupakan _modifier_ yang nilainya di_assign_ pada saat _runtime_. 

## Impelementasi
- Membuat projek baru flutter bernama `counter_7`
- Membuat fungsi `_decrementCounter` untuk mengurangi nilai `_counter` dan fungsi -  `_checkingNumber` untuk menentukan apakah angka tersebut ganjil atau genap
- Membuat `button` yang ketika diklik akan terhubung dengan fungsi `_decrement counter` dan mengatur _padding_nya.

# Tugas 8 : Flutter Form

## Perbedaan `Navigator.push` dan `Navigator.pushReplacement`
`Navigator.push` menambahkan `route` ke bagian paling atas dari stack `navigator`. Sedangkan `Navigator.pushReplacement` menambahkan `route` ke _top of stack_ dan juga menghilangkan `route` sebelumnya.

## Widget yang digunakan
1.  `Text`, menampilkan string dengan _single style_
2.  `Row`, menampilkan children secara horizontal
3.  `Column`, menampilkan children secara vertikal
4.  `Scaffold`, menerapkan dasar _visual layout_ material design
5.  `Padding`, memberi padding kepda child
6.  `Drawer`, panel horizontal di pinggir scaffold yang berguna untuk navigaso dalam aplikasi
7.  `ListTile`, baris yang mengandung teks dan ikon
8.  `Card`, panel yang biasa digunakan untuk menampilkan informasi.
9.  `Form`, container untuk grouping form field widget
10. `TextFormField`, field text yang bisa digunakan sebagai inputan
11. `TextButton`, button yang berisi teks
12. `Navigator`, mengelola child widgets dengan prinsip stack
13. `Center`, mengatur child widget ke posisi tengah

## Event pada Flutter
1.  `onSaved`
2.  `onPressed`
3.  `onChanged`

## Cara kerja `Navigator`
Navigator memiliki prinsip stack. Jadi halaman yang ditampilkan adalah halaman yang berada pada _top of stack_

## Implementasi
1.  Membuat `form.dart`
2.  Membuat field - field inputan yang sesuai dengan perintah soal
2.  Membuat `data.dart`
3.  Menampilkan inputan dari field yang sudah ada di `form.dart` tadi
4.  Membuat `Drawer / Hamburger Menu` sebagai navigator halaman

<br>

# Tugas 9 : Integrasi Web Service pada Flutter

## Apakah bisa mengambil data JSON tanpa membuat model terlebih dahulu?
Bisa, kita bisa mengambil data JSON tanpa membuat model terlebih dahulu. Namun, untuk memudahkan kita dalam membuat program dan sebagai contoh best practice kita dapat membuat modelnya terlebih dahulu

<br>

## Widget yang digunakan kali ini
1.  `Text`, menampilkan string dengan _single style_
2.  `Row`, menampilkan children secara horizontal
3.  `Column`, menampilkan children secara vertikal
4.  `Scaffold`, menerapkan dasar _visual layout_ material design
5.  `Padding`, memberi padding kepda child
6.  `Drawer`, panel horizontal di pinggir scaffold yang berguna untuk navigaso dalam aplikasi
7.  `ListTile`, baris yang mengandung teks dan ikon

## Mekanisme pengambilan datar dari JSON
- Membuat fungsi `fetchMyWatchList` yang akan dipanggil oleh `FutureBuilder`
- Mengambil data JSON dari url yang sudah dimasukkan yang nantinya diconvert menjadi objek `MyWatchList` 
- Mengambalikan data yang sudah dikonversi tadi dan menampilkannya pada flutter app

## Implementasi
Implementasi tugas ini mirip dengan tutorial lab 8 flutter. Mmebuat model yang diperlukan lalu menginstall package http. Membuat `mywatchlsit.dart`, `mywatchlist_page.dart` dan `mywatchlist_detail.dart`. Menambahkan navigasi pada drawer yang sudah dibuat sebelumnya. 