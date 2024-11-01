program panit_suka_telat;
uses crt;

var
  nama, jabatan: string;
  jam_datang, menit_datang: integer;
  terlambat, denda, denda1: longint;

begin
  clrscr;
  write('Nama : ');
  readln(nama);
  write('Jabatan : ');
  readln(jabatan);
  write('jam datang : ');
  readln(jam_datang);
  write('menit datang : ');
  readln(menit_datang);

 
  terlambat := (jam_datang*60+menit_datang) - (7*60);

  if (terlambat > 0) then
    begin
      case jabatan of
        'presidium' :
          denda := 20000;
        'ketua umum' :
          denda := 20000;
        'sekretaris umum' :
          denda := 20000;
        'bendahara umum' :
          denda := 20000;
        'anggota': 
          denda := 10000; 
      else
        begin
          writeln('Error! jabatan tidak valid >_<');
        end;
    end;

  denda1 := (terlambat div 5) * denda;
    end
  else
    begin
      denda1 := 0;
    end;
   
  writeln('Total Denda : Rp', denda1);

end.
