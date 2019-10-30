<!DOCTYPE html>
<html>
  <head>
    <title>
    Persetujuan Pemusnahan
    </title>
    <link href="https://fonts.googleapis.com/css?family=Merriweather&display=swap" rel="stylesheet">
  </head>
  <body>
    <style>
    *{
    font-size: 12pt;
    font-family: 'Merriweather', serif;
    text-align: justify;
    vertical-align: top;
    }
    th{
    text-align: center !important;
    }
    </style>
    <?php 
    $data = json_decode($dta['d_attributes']);
    for($i = 0; $i <=30 ; $i++) {}
        ?>
        <form action="<?=@base_url('master/dokumen;savedoc/'.$dta['d_id']); ?>" method="post">
      
      <table style="width:100%;">
        <tr>
          <td style="width:15%">Nomor</td>
          <td style="width:1%">:</td>
          <td><?=@$data[0];?></td>
          <td></td>
        </tr>
        <tr>
          <td>Sifat</td>
          <td>:</td>
          <td>Biasa</td>
          <td></td>
        </tr>
        <tr>
          <td>Lampiran</td>
          <td>:</td>
          <td>1 (satu) Lembar</td>
          <td></td>
        </tr>
        <tr style="vertical-align: top;">
          <td>hal</td>
          <td>:</td>
          <td>Persetujuan Pemusnahan Barang Milik Negara<br>Pada <?=@$data[1];?></td>
          
          
          
          <td></td>
        </tr>
      </table>
      <table style="width:100%;">
        <tr>
          <td colspan="2">Yth :</td>
        </tr>
        <tr>
          <td colspan="2"><?=@$data[2];?></td>
        </tr>
        <tr>
          <td colspan="2">di Jakarta</td>
        </tr>
        <tr>
          <td colspan="2">Sehubungan <?=@$data[3];?> Nomor <?=@$data[4];?> tanggal <?=@$data[5];?> hal <?=@$data[6];?>, dengan ini diberitahukan bahwa <?=@$data[7];?> pada <?=@$data[8];?> dengan nilai perolehan sebesar Rp. <?=@$data[9];?> (<?=@$data[10];?>) sebagaimana tercantum dalam lampiran surat ini, pada prinsipnya dapat disetujui dengan ketentuan penjualan dilaksanakan secara lelang.<br></td>
        </tr>
        <tr>
          <td colspan="2">Guna tertib administrasi pengelolaan Barang Milik Negara, pelaksanaan Penghapusan tersebut agar  berpedoman pada  Peraturan Pemerintah Nomor 27 Tahun 2014 tentang Pengelolaan Barang Milik Negara/Daerah dan Peraturan Menteri Keuangan Nomor 83/PMK.06/2016 tentang Tata Cara Pelaksanaan Pemusnahan dan Penghapusan Barang Milik Negara, dengan ketentuan sebagai berikut:<br></td>
        </tr>
      </table>
      <table style="width:100%;">
        <tr>
          <td style="width:1%;">1.</td>
          <td>Penjualan BMN tidak mengganggu tugas operasional kantor Saudara dan persetujuan penjualan ini tidak merupakan jaminan disediakannya dana anggaran untuk pengadaan BMN yang baru sebagai pengganti BMN yang dijual.</td>
        </tr>
        <tr>
          <td>2.</td>
          <td>Persetujuan ini segera ditindak lanjuti dengan penjualan BMN secara lelang.</td>
        </tr>
        <tr>
          <td>3.</td>
          <td>Pengajuan permohonan atas pelaksanaan lelang paling lama 2 (dua) bulan sejak tanggal persetujuan diterbitkan.</td>
        </tr>
        <tr>
          <td>4.</td>
          <td>Penjualan Secara lelang atas BMN agar dilakukan melalui Kantor Pelayanan Kekayaan Negara dan Lelang (KPKNL) setempat dengan harga limit sebesar Rp. <?=@$data[11];?> (<?=@$data[12];?>) berdasarkan penilaian panitia penghapusan Nomor <?=@$data[13];?> tanggal <?=@$data[14];?>.</td>
        </tr>
        <tr>
          <td>5.</td>
          <td>Pelaksanaan penjualan secara lelang dituangkan dalam Berita Acara Serah Terima paling lama 1 (satu) bulan setelah tanggal pelaksanaan lelang.</td>
        </tr>
        <tr>
          <td>6.</td>
          <td>Usul Penetapan keputusan penghapusan BMN diajukan kepada Pengguna Barang paling lama 2 (dua) bulan sejak tanggal Berita Acara Serah Terima Barang.</td>
        </tr>
        <tr>
          <td>7.</td>
          <td>Kebenaran Materil atas jenis, jumlah, tahun dan nilai BMN yang dijual tersebut menjadi tanggung jawab Saudara.</td>
        </tr>
        <tr>
          <td>8.</td>
          <td>Apabila dikemudian hari terdapat kekeliruan dalam persetujuan ini, maka akan diadakan perbaikan sebagaimana mestinya.</td>
        </tr>
        <tr>
          <td></td>
          <td>Atas perhatian Saudara, diucapkan terima kasih.</td>
        </tr>
        <tr>
          <td></td>
          <td></td>
        </tr>
      </table>
      <table style="width:100%;">
        <tr>
          <td style="width:60%;"></td>
          <td style="width:5%;"></td>
          <td><b>Ditetapkan di Jakarta<br>pada tanggal <?=@$data[15];?></b></td>
        </tr>
        <tr style="text-align:justify;vertical-align:top;">
          <td></td>
          <td>a.n</td>
          <td>MENTERI PERTANIAN<br>REPUBLIK INDONESIA<br>SEKRETARIS JENDERAL,</td>
        </tr>
        <tr>
          <td></td>
          <td></td>
          <td><br><br><br><br><span>SYUKUR IWANTORO  </span><br>NIP 19590530 198403 1 001</td>
        </tr>
      </table>
      <table style="width:100%;">
        <tr>
          <td colspan="2">Tembusan</td>
        </tr>
        <tr>
          <td style="width:1%;">1.</td>
          <td>Menteri Pertanian</td>
        </tr>
        <tr>
          <td>2.</td>
          <td>Inspektur Jendral</td>
        </tr>
        <tr>
          <td>3.</td>
          <td>Direktur Barang Milik Negara, Direktirat Jendral Kekayaan Negara</td>
        </tr>
        <tr>
          <td>4.</td>
          <td>Kepala Kantor Pelayanan Kekayaan Negara dan Lelang Setempat</td>
        </tr>
        <tr>
          <td>5.</td>
          <td>Kepala <?=@$data[16];?></td>
        </tr>
      </table>
      <table style="width:100%;font-family:'Arial', Helvetica, sans-serif">
        <tr>
          <th colspan="3"><span style="font-weight:bold; text-align: center;">NOTA DINAS</span></th>
        </tr>
        <tr>
          <td colspan="3" style="text-align: center;">Nomor: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
        <tr style="text-align: justify; vertical-align: center">
          <td style="width:10%;">Yth</td>
          <td style="width:1%;">:</td>
          <td>Kepala Biro Keuangan dan Perlengkapan</td>
        </tr>
        <tr style="text-align: justify; vertical-align: center">
          <td>Dari</td>
          <td>:</td>
          <td>Kepala Bagian Perlengkapan</td>
        </tr>
        <tr style="text-align: justify; vertical-align: center">
          <td>Hal</td>
          <td>:</td>
          <td>Penetapan Penghapusan Barang Milik Negara pada  <?=@$data[17];?></td>
        </tr>
        <tr style="text-align: justify; vertical-align: center;">
          <td>Tanggal</td>
          <td>:</td>
          <td><?=@$data[18];?></td>
        </tr>
      </table>
      <table style="width:100%">
        <tr style="text-align: justify; vertical-align: center;">
          <td style="border-bottom: 2px solid #333;" colspan="3"></td>
        </tr>
        <tr>
          <td colspan="3"><br></td>
        </tr>
        <tr>
          <td colspan="3">Sehubungan <?=@$data[19];?> Nomor <?=@$data[20];?> tanggal <?=@$data[21];?> hal <?=@$data[22];?>, dengan ini kami sampaikan hal-hal sebagai berikut:</td>
        </tr>
        <tr>
          <td colspan="3"><br></td>
        </tr>
        <tr>
          <td style="width:1%;">1. </td>
          <td colspan="2">Bahwa di dalam Peraturan Menteri Keuangan Nomor 4/PMK.06/2015 tentang Pendelegasian Kewenangan dan Tanggung Jawab Tertentu dari Pengelola Barang Kepada Pengguna Barang disebutkan bahwa:</td>
        </tr>
        <tr>
          <td></td>
          <td style="width:1%;">a) </td>
          <td>Pasal 5 ayat (1) menyatakan bahwa: “Pengguna Barang berwenang dan bertanggung jawab memberikan persetujuan atas permohonan pemindahtanganan  BMN berupa:<br>a.  Penjualan,<br>b.  Hibah. </td>
        </tr>
        <tr>
          <td></td>
          <td style="width:1%;">b)</td>
          <td>b)  Pasal 5 ayat (2) huruf a mengatur bahwa Persetujuan Penjualan BMN selain tanah dan/atau bangunan, yang tidak mempunyai dokumen kepemilikan, dengan nilai perolehan sampai dengan Rp. 100.000.000,- (seratus juta rupiah) per unit/satuan merupakan wewenang dan tanggung jawab Pengguna Barang.</td>
        </tr>
        <tr>
          <td colspan="3"><br></td>
        </tr>
        <tr>
          <td>2. </td>
          <td colspan="2">Berkenaan dengan hal tersebut, bersama ini disampaikan konsep surat persetujun BMN pada <?=@$data[23];?> <?=@$data[24];?> Apabila Bapak berkenan, mohon konsep surat tersebut dapat ditandatangani.<br></td>
        </tr>
        <tr>
          <td colspan="3">Atas perhatian dan perkenan  Bapak,  kami ucapkan terima kasih.</td>
        </tr>
      </table>
      <table style="width:100%;font-family:'Arial', Helvetica, sans-serif">
        <tr>
          <td width="80%"></td>
          <td><br><br><br>Widono</td>
        </tr>
      </table>
      <table style="width:100%;font-family:'Arial', Helvetica, sans-serif">
        
        <tr>
          <th colspan="3"><span style="font-weight:bold; text-align: center;">NOTA DINAS</span></th>
        </tr>
        <tr>
          <td colspan="3" style="text-align: center;">Nomor: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
        <tr style="text-align: justify; vertical-align: center">
          <td style="width:15%;">Yth</td>
          <td style="width:1%;">:</td>
          <td>Kepala Biro Keuangan dan Perlengkapan</td>
        </tr>
        <tr style="text-align: justify; vertical-align: center">
          <td>Dari</td>
          <td>:</td>
          <td>Kepala Bagian Perlengkapan</td>
        </tr>
        <tr style="text-align: justify; vertical-align: center">
          <td>Hal</td>
          <td>:</td>
          <td>Penetapan Penghapusan Barang Milik Negara pada  <?=@$data[25];?></td>
        </tr>
        <tr style="text-align: justify; vertical-align: center;">
          <td>Tanggal</td>
          <td>:</td>
          <td><?=@$data[26];?></td>
        </tr>
      </table>
      <table style="width:100%">
        <tr style="text-align: justify; vertical-align: center;">
          <td style="border-bottom: 2px solid #333;" colspan="3"></td>
        </tr>
        <tr>
          <td colspan="3"><br></td>
        </tr>
        <tr style="text-align: justify; vertical-align: center">
          <td colspan="3">Sehubungan dengan surat <?=@$data[27];?> Nomor <?=@$data[28];?> tanggal <?=@$data[29];?> hal <?=@$data[30];?>, bersama ini disampaikan konsep surat atas nama Menteri Pertanian hal Persetujuan Penjualan BMN pada <?=@$data[31];?> <?=@$data[32];?> serta nota dinas Kepala Biro Keuangan dan Perlengkapan kepada Sekretaris Jenderal.</td>
        </tr>
        <tr>
          <td colspan="3"><br></td>
        </tr>
        <tr style="text-align: justify; vertical-align: center">
          <td colspan="3">Berdasarkan  verifikasi dan telaahan yang telah kami lakukan terhadap dokumen yang diajukan, dapat kami sampaikan bahwa usulan tersebut telah memenuhi persyaratan yang ditetapkan sehingga dapat dipertanggungjawabkan sesuai ketentuan yang berlaku.</td>
        </tr>
        <tr>
          <td colspan="3"><br></td>
        </tr>
        <tr style="text-align: justify; vertical-align: center">
          <td colspan="3">Apabila Bapak berkenan, mohon konsep nota dinas Bapak Kepala Biro Keuangan dan Perlengkapan dapat ditandatangani, dan konsep surat Sekrearis Jendral a.n. Menteri Pertanian tersebut dapat diparaf.</td>
        </tr>
        <tr>
          <td colspan="3"><br></td>
        </tr>
        <tr style="text-align: justify; vertical-align: center">
          <td colspan="3">Demikian, atas perhatian dan perkenan Bapak diucapkan terima kasih.</td>
        </tr>
      </table>
      <table style="width:100%;font-family:'Arial', Helvetica, sans-serif">
        <tr>
          <td width="80%"></td>
          <td><br><br><br>Fuadi</td>
        </tr>
      </table>
    </form>
  </body>
</html>