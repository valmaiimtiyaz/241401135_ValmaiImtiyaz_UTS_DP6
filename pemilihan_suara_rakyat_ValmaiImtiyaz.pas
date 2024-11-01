program pemilihan_suara_rakyat;
uses crt;

var 
  pilihan_pemilih : char;
  opsi_a, opsi_b, n_pemilih, i : integer;

begin
  Clrscr;

    opsi_a := 0; //inisialisasi jumlah pemilih yg memilih a jadi 0
    opsi_b := 0; //inisialisasi jumlah pemilih yg memilih b jadi 0

    write('Masukkan jumlah pemilih : '); //memberi instruksi untuk memasukkan jumlah pimilih
    readln(n_pemilih);  //menginput dan membaca jumlah orang pemilihan suara rakyat

    for i := 1 to n_pemilih do //untuk si i maka lakukan 1 to (jumlah orang pemilihan suara rakyat), akan melakukan perulangan ke atas sebanyak jumlah orang pemilih tadi
    begin
      write('Masukkan pilihan pemilih ', i, '(A/B) : '); //memeberikan instruksi untuk memasukkan pilihan pemilih
      readln(pilihan_pemilih); //menginput pilihan apa yang dipilih oleh rakyat

      if (pilihan_pemilih = 'A') or (pilihan_pemilih = 'a') then //jika pilihan rakyat A atau a maka
        begin
          opsi_a:= opsi_a + 1; //menambahkan jumlah opsi a
        end
      else if (pilihan_pemilih = 'B') or (pilihan_pemilih = 'b') then //ijka pilihan rakyat B atau b maka
        begin
          opsi_b:= opsi_b + 1; //menambahkan jumlah opsi b
        end
      else
        begin
          write('pilihan anda tidak valid!'); //jika user menginput selai A atau a dan B atau b
        end;
        end;

    writeln(''); //biar lebih rapi ada space nya
    writeln('Jumlah pemilih yang memilih opsi A : ', opsi_a); //menuliskan berapa orang yang milih a
    writeln('jumlah pemilih yang memilih opsi B : ', opsi_b); //menuliskan berapa orang yang milih b
end.