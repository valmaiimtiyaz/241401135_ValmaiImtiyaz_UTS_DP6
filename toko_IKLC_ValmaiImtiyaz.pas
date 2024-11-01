program toko_iklc;
uses crt;

var
kembalian, jumlahlembarkoin : longint;

begin
  clrscr;
    writeln ('===== selamat datang di toko iklc =====');
    write ('Masukkan uang kembalian pembeli : '); //menuliskan untuk memerintah user menginput uang kembalian
    readln(kembalian); //input uang kembalian
  
    jumlahlembarkoin :=0; //inisialisasi lembar uang kembalian jadi 0
    while kembalian > 0 do //menggunakan looping while utk menjalankan perintah selama uang masih lebih besar dari 0 atau kondisi yg diberikan masih benar

  if (kembalian >= 100000) then //jika kembalian lebih besar atau sama dengan 100 ribu 
    begin
      jumlahlembarkoin := jumlahlembarkoin + (kembalian div 100000); //jumlah lembar kembalian 100 ribu akan sesuai dengan div nya
      kembalian := kembalian mod 100000; // sisa kembalian akan sesuai dengan hasil modnya, jika <> 0 maka akan mengecek if selanjutnya
    end
  else if (kembalian >= 75000)then //jika kembalian lebih besar atau sama dengan 75 ribu
    begin
      jumlahlembarkoin := jumlahlembarkoin + (kembalian div 75000); //jumlah lembar kembalian 75 ribu akan sesuai dengan div nya
      kembalian := kembalian mod 75000; // sisa kembalian akan sesuai dengan hasil modnya, jika <> 0 maka akan mengecek if selanjutnya
    end
  else if (kembalian >= 50000) then //jika kembalian lebih besar atau sama dengan 50 ribu
    begin
      jumlahlembarkoin := jumlahlembarkoin + (kembalian div 50000); //jumlah lembar kembalian 50 ribu akan sesuai dengan div nya
      kembalian := kembalian mod 50000; // sisa kembalian akan sesuai dengan hasil modnya, jika <> 0 maka akan mengecek if selanjutnya
    end
  else if (kembalian >= 20000) then //jika kembalian lebih besar atau sama dengan 20 ribu
    begin
      jumlahlembarkoin := jumlahlembarkoin + (kembalian div 20000); //jumlah lembar kembalian 20 ribu akan sesuai dengan div nya
      kembalian := kembalian mod 20000; //sisa kembalian akan sesuai dengan hasil modnya, jika <> 0 maka akan mengecek if selanjutnya
    end
  else if (kembalian >= 10000) then //jika kembalian lebih besar atau sama dengan 10 ribu
    begin
      jumlahlembarkoin := jumlahlembarkoin + (kembalian div 10000); //jumlah lembar kembalian 10 ribu akan sesuai dengan div nya
      kembalian := kembalian mod 10000; //sisa kembalian akan sesuai dengan hasil modnya, jika <> 0 maka akan mengecek if selanjutnya
    end
  else if (kembalian >= 5000) then //jika kembalian lebih besar atau sama dengan 5 ribu
    begin
      jumlahlembarkoin := jumlahlembarkoin + (kembalian div 5000); //jumlah lembar kembalian 5 ribu akan sesuai dengan div nya
      kembalian := kembalian mod 5000; //sisa kembalian akan sesuai dengan hasil modnya, jika <> 0 maka akan mengecek if selanjutnya
    end
  else if (kembalian >= 2000) then //jika kembalian lebih besar atau sama dengan 2 ribu
    begin
      jumlahlembarkoin := jumlahlembarkoin + (kembalian div 2000); //jumlah lembar kembalian 2 ribu akan sesuai dengan div nya
      kembalian := kembalian mod 2000; //sisa kembalian akan sesuai dengan hasil modnya, jika <> 0 maka akan mengecek if selanjutnya
    end
  else if (kembalian >= 1000) then //jika kembalian lebih besar atau sama dengan seribu
    begin
      jumlahlembarkoin := jumlahlembarkoin + (kembalian div 1000); //jumlah lembar kembalian seribu akan sesuai dengan div nya
      kembalian := kembalian mod 1000; //sisa kembalian akan sesuai dengan hasil modnya, jika <> 0 maka akan mengecek if selanjutnya
    end
  else if (kembalian >= 500) then //jika kembalian lebih besar atau sama dengan 500 perak
    begin
      jumlahlembarkoin := jumlahlembarkoin + (kembalian div 500); //jumlah koin kembalian 500 perak akan sesuai dengan div nya
      kembalian := kembalian mod 500; //sisa kembalian akan sesuai dengan hasil modnya, jika <> 0 maka akan mengecek if selanjutnya
    end
  else if (kembalian >= 200) then //jika kembalian lebih besar atau sama dengan 200 perak
    begin
      jumlahlembarkoin := jumlahlembarkoin + (kembalian div 200); //jumlah koin kembalian 200 perak akan sesuai dengan div nya
      kembalian := kembalian mod 200; //sisa kembalian akan sesuai dengan hasil modnya, jika <> 0 maka akan mengecek if selanjutnya
    end
  else if (kembalian >= 100) then //jika kembalian lebiih besar atau sama dengan 100 perak
    begin
      jumlahlembarkoin := jumlahlembarkoin + (kembalian div 100); //jumlah koin kembalian 100 perak akan sesuai dengan div nya
      kembalian := kembalian mod 100; //kembalian akan sesuai dengan hasil modnya, jika <> 0 maka akan mengecek if selanjutnya
    end
  else
    begin
      write('eror!! >_<'); //jika hasil tidak sesuai didalam kondisi maka akan terjadi eror
    end;

  write ('jumlah minimum lembaran atau koin yang dibutuhkan : ', jumlahlembarkoin); //menuliskan semua jumlah lembar atau koin yg dibutuhkan
  
end.
