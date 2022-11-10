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
