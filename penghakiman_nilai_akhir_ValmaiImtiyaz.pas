program penghakiman_nilaiakhir;
uses crt;

var
  tugas1, tugas2, tugas3, tugas4, tugas5, tugas6, tugas7, tugas8: real;
  UTS, UAS, nilai_tugas, total :real;
  nilai_huruf : string;
  total1 : integer;
  

begin
  clrscr;
    write('Silahkan masukkan nilai tugas 1 anda : '); //memberikan instruksi utk memasukkan nilai tugas1
    readln(tugas1); //menginput nilai tugas1
    write('Silahkan masukkan nilai tugas 2 anda : '); //memberikan instruksi utk memasukkan nilai tugas2
    readln(tugas2); //menginput nilai tugas2
    write('Silahkan masukkan nilai tugas 3 anda : '); //memberikan instruksi utk memasukkan nilai tugas3
    readln(tugas3); //menginput nilai tugas3
    write('Silahkan masukkan nilai tugas 4 anda : '); //memberikan instruksi utk memasukkan nilai tugas4
    readln(tugas4); //menginput nilai tugas4
    write('Silahkan masukkan nilai tugas 5 anda : '); //memberikan instruksi utk memasukkan nilai tugas5
    readln(tugas5); //menginput nilai tugas5
    write('Silahkan masukkan nilai tugas 6 anda : '); //memberikan instruksi utk memasukkan nilai tugas6
    readln(tugas6); //menginput nilai tugas6
    write('Silahkan masukkan nilai tugas 7 anda : '); //memberikan instruksi utk memasukkan nilai tugas7
    readln(tugas7); //menginput nilai tugas7
    write('Silahkan masukkan nilai tugas 8 anda : '); //memberikan instruksi utk memasukkan nilai tugas8
    readln(tugas8); //menginput nilai tugas8
    write('Silahkan masukkan nilai UTS anda : '); //memberikan instruksi utk memasukkan nilai UTS
    readln(UTS); //menginput nilai UTS
    write('Silahkan masukkan nilai UAS anda : '); //memberikan instruksi utk memasukkan nilai UAS
    readln(UAS); //menginput nilai UAS

  nilai_tugas := 0.25 * ((tugas1 + tugas2 + tugas3 + tugas4 + tugas5 + tugas6 + tugas7 + tugas8) / 8); //menghitung rata rata ke8 nilai tugas lalu di persenkan
  UTS := 0.35 * (UTS); //menghitung persen dari nilai UTS
  UAS := 0.4 * (UAS); //menhitung persen dari nilai UAS

  total := (nilai_tugas + UTS + UAS); //menjumlahkan semua nilai yang sudah di persenkan tadi (tugas, uts, dan uas)
  writeln('Nilai angka : ',total:4:2);

total1 := round(total); //membulatkan bilangan dari si total agar bisa integer untuk masuk ke case of
  
case (total1) of //untuk menentukan apakah nilai dari total termasuk ke bagian nilai huruf yang mana
  85..100 : nilai_huruf := 'A';
  80..84 : nilai_huruf := 'B+';
  75..79 : nilai_huruf := 'B';
  70..74 : nilai_huruf := 'B-';
  65..69 : nilai_huruf := 'C+';
  60..64 : nilai_huruf := 'C';
  40..59 : nilai_huruf := 'D';
  0..39 : nilai_huruf := 'E';
else
  writeln('Nilai anda tidak valid'); //jika total nilai yang dihasilkan diluar dari sini maka nilai tidak valid
end;
  writeln('Nilai huruf : ',nilai_huruf); //menuliskan output yang membaca nilai huruf tadi

end.