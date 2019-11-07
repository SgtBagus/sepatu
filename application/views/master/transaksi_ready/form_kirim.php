<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?= TITLE_APPLICATION  ?></title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <link rel="stylesheet" href="<?= base_url('assets/') ?>bower_components/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?= base_url('assets/') ?>bower_components/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="<?= base_url('assets/') ?>bower_components/Ionicons/css/ionicons.min.css">
    <link rel="stylesheet" href="<?= base_url('assets/') ?>dist/css/AdminLTE.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
</head>

<style>
    /* width */
    ::-webkit-scrollbar {
        width: 0px;
    }
</style>

<body onload="window.print();">
    <div class="wrapper">
        <section class="invoice">
            <div class="col-md-12" align="center">
                <img src="<?= base_url('assets/invoice.png') ?>" witdh="100%">
            </div>
            <div class="col-xs-12">
                <h1 align="center">KETENTUAN PENGIRIMAN PAKET</h1>
                <hr>
                <ol>
                    <li>
                        Semua produk yang dikirimkan sudah melalui proses quality control, untuk memastikan barang
                        yang dikirimkan dalam kondisi baik dan sesuai dengan pesanan konsumen.
                    </li>
                    <li>
                        Produk yang telah dibeli tidak dapat ditukar, produk hanya dapat ditukar/diganti apabila terdapat
                        kesalahan pembuatan/pengiriman dari penjual.
                    </li>
                    <li>
                        Tanggung jawab penjual hanya sampai mengirimkan pesanan melalui jasa pengiriman/ekspedisi
                        dan memberikan nomor resi kepada konsumen. Segala bentuk keterlambatan, kehilangan, dan
                        kerusakan dalam proses pengiriman akibat kelalaian pihak ekspedisi menjadi tanggung jawab
                        ekspedisi. Penggantian paket yang rusak atau hilang saat proses pengiriman mengikuti prosedur dari
                        pihak penyedia jasa ekspedisi yang digunakan.
                    </li>
                    <li>
                        Apabila terjadi kerusakan/kehilangan yang diakibatkan force majeure seperti (kebakaran,
                        kecelakaan, huru-hara, kerusuhan, konflik, peperangan dll) menjadi resiko bersama dan tidak ada
                        penggantian barang.

                    </li>
                    <li>
                        Pihak ekspedisi DILARANG membuka isi paket tanpa sepengetahuan dan persetujuan dari pihak
                        pengirim atau penerima.
                    </li>
                    <li>
                        Pastikan paket anda diterima dalam kondisi baik.
                    </li>
                </ol>
                <hr>
                <h3>PENGIRIM</h3>
                <address>
                    SHOEKA SHOES - 08113777014 <br>
                    JL. DANAU MANINJAU BARAT B3/A34, SAWOJAJAR, KEDUNGKANDANG, <br>
                    KOTA MALANG, JAWA TIMUR 65139 <br>
                </address>
                <h3>PENERIMA</h3>
                <address>
                    <strong><?= $dropshipper['nama_customer'] ?> - <?= $customer['hp_customer'] ?></strong><br>
                    <?= $customer['alamat_customer'] ?>, Kelulahan : <?= $dropshipper_kelurahan['kelurahan'] ?>
                    , Kecamatan : <?= $dropshipper_kecamatan['kecamatan'] ?>, Kabupatan : <?= $dropshipper_kabupaten['kabupaten_kota'] ?>, Kota : <?= $dropshipper_provinsi['provinsi'] ?> <br>
                    Kode POST : <?= $dropshipper['kode_post'] ?>
                    <br>
                    Email: <?= $dropshipper['email_customer'] ?>
                </address>
                <h3 style="color:red" >SICEPAT REG</h3>
                <h3 style="color:blue" align="center" >CATATAN</h3>
                <h3 style="color:red" align="center" >"Hati-Hati"</h3>
            </div>
        </section>
    </div>
</body>

</html>