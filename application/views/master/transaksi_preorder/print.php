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
                <address>
                    Nomor Nota : <strong><?= $transaksi['kode_transaksi'] ?></strong><br>
                    Nama Customer : <strong><?= $customer['nama_customer'] ?> - <?= $customer['hp_customer'] ?></strong><br>
                    <?= $customer['alamat_customer'] ?>, Kelulahan : <?= $kelurahan['kelurahan'] ?>
                    , Kecamatan : <?= $kecamatan['kecamatan'] ?>, Kabupatan : <?= $kabupaten['kabupaten_kota'] ?>, Kota : <?= $provinsi['provinsi'] ?> <br>
                    Kode POST : <?= $customer['kode_post'] ?>
                    <br>
                    Email: <?= $customer['email_customer'] ?>
                </address>
            </div>
            <div class="row">
                <div class="col-xs-12 table-responsive">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Produk + Keterangan</th>
                                <th>Ukuran</th>
                                <th>Warna</th>
                                <th>Qty</th>
                                <th>Satuan</th>
                                <th>Diskon</th>
                                <th>Biaya Lain</th>
                                <th>Total</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($transaksi_produk as $row) {
                                $produk_ready = $this->mymodel->selectDataone('produk_ready', array('id' => $row['id_produk_preorder']));
                                $ukuran = $this->mymodel->selectDataone('master_ukuran', array('id' => $row['ukuran']));
                                ?>
                                <tr>
                                    <td><?= $produk_ready['nama_produk'] ?><br><small><?= $row['keterangan'] ?></small></td>
                                    <td><?= $ukuran['value'] ?></td>
                                    <td><?= $row['warna'] ?></td>
                                    <td><?= $row['qty'] ?></td>
                                    <td>
                                        <b>Rp. <?= number_format($row['harga_satuan'], 0, ',', '.') ?>,- </b>
                                    </td>
                                    <td>
                                        <?php if ($row['diskon']) { ?>
                                            <b> <?= $row['diskon'] ?> % </b>
                                        <?php } else { ?>
                                            -
                                        <?php } ?>
                                    </td>
                                    <td>
                                        <?php if ($row['biaya_lain']) { ?>
                                            <b>Rp. <?= number_format($row['biaya_lain'], 0, ',', '.') ?>,- </b>
                                        <?php } else { ?>
                                            -
                                        <?php } ?>
                                    </td>
                                    <td>
                                        <?php if ($row['harga_total']) { ?>
                                            <b>Rp. <?= number_format($row['harga_total'], 0, ',', '.') ?>,- </b>
                                        <?php } else { ?>
                                            -
                                        <?php } ?>
                                    </td>
                                </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-6">
                    <p class="lead">Dropshipper</p>
                    <address>
                        Nama Dropshipper : <br>
                        <strong><?= $dropshipper['nama_customer'] ?> - <?= $customer['hp_customer'] ?></strong><br>
                        <?= $customer['alamat_customer'] ?>, Kelulahan : <?= $dropshipper_kelurahan['kelurahan'] ?>
                        , Kecamatan : <?= $dropshipper_kecamatan['kecamatan'] ?>, Kabupatan : <?= $dropshipper_kabupaten['kabupaten_kota'] ?>, Kota : <?= $dropshipper_provinsi['provinsi'] ?> <br>
                        Kode POST : <?= $dropshipper['kode_post'] ?>
                        <br>
                        Email: <?= $dropshipper['email_customer'] ?>
                    </address>
                    <ol>
                        <li>Invoice ini merupakan bukti pembelian yang sah dari Shoeka Shoes. </li>
                        <li>Sepatu yang telah dibeli atau dipesan tidak dapat ditukar, sepatu hanya dapat ditukar apabila terdapat cacat produksi.</li>
                        <li>Tanggung jawab Shoeka Shoes hanya terbatas pada produksi dan hingga mengirimkan pesanan kepada jasa pengiriman/ekspedisi dan memberikan
                            bukti pengiriman berupa resi kepada konsumen. Apabila terjadi keterlambatan, kehilangan dan kerusakan yang diakibatkan oleh kesalahan jasa
                            pengiriman/ekspedisi menjadi tanggung jawab ekspedisi yang bersangkutan. Shoeka Shoes akan membantu memonitor pengiriman kepada konsumen.
                        </li>
                    </ol>
                </div>
                <div class="col-xs-6">
                    <p class="lead">Kemasan</p>
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Nama</th>
                                    <th>Keterangan</th>
                                    <th>Qty</th>
                                    <th>Harga</th>
                                    <th>Subtotal</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php $i = 1;
                                foreach ($transaksi_kemasan as $row) {
                                    $master_kemasan = $this->mymodel->selectDataone('master_kemasan', array('id' => $row['id_kemasan'])) ?>
                                    <tr>
                                        <td><?= $i ?></td>
                                        <td><?= $master_kemasan['value'] ?></td>
                                        <td><?= $master_kemasan['keterangan'] ?></td>
                                        <td><?= $row['qty'] ?></td>
                                        <td>
                                            <b>Rp. <?= number_format($master_kemasan['hpp'], 0, ',', '.') ?>,- </b>
                                        </td>
                                        <td>
                                            <b>Rp. <?= number_format($row['harga_total'], 0, ',', '.') ?>,- </b>
                                        </td>
                                    </tr>
                                <?php $i++;
                                } ?>
                            </tbody>
                        </table>
                    </div>
                    <p class="lead">Sub Total</p>
                    <div class="table-responsive">
                        <table class="table">
                            <tbody>
                                <tr>
                                    <td style="width:50%">Kurir</td>
                                    <td>
                                        <?= $kurir['value'] ?>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width:50%">No Resi</td>
                                    <td>
                                        <?php if (!$transaksi['resi_pengiriman']) { ?>
                                            -
                                        <?php } else { ?>

                                            <?= $transaksi['resi_pengiriman'] ?>
                                        <?php } ?>
                                    </td>
                                </tr>
                                <tr>
                                    <td>BIAYA KIRIM SICEPAT REG</td>
                                    <td>
                                        Rp. <?= number_format($transaksi['biaya_kirim'], 0, ',', '.') ?>,-
                                    </td>
                                </tr>
                                <tr>
                                    <th>TOTAL</th>
                                    <th>
                                        Rp. <?= number_format($transaksi['sub_total'], 0, ',', '.') ?>,-
                                    </th>
                                </tr>
                                <tr>
                                    <td>JUMLAH BAYAR</td>
                                    <td>
                                        Rp. <?= number_format($transaksi['jumlah_bayar'], 0, ',', '.') ?>,-
                                    </td>
                                </tr>
                                <?php if ($transaksi['kembalian'] < 0) { ?>
                                    <tr>
                                        <td>KEKURANGAN</td>
                                        <td>
                                            Rp. <?= number_format($transaksi['kembalian'] * -1, 0, ',', '.') ?>,-
                                        </td>
                                    </tr>
                                <?php } else { ?>
                                    <tr>
                                        <td>Kembalian</td>
                                        <td>
                                            Rp. <?= number_format($transaksi['kembalian'], 0, ',', '.') ?>,-
                                        </td>
                                    </tr>
                                <?php } ?>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="col-xs-12" align="right">
                    Shoeka Shoes - 08113777014 <br>
                    Jl. Danau Maninjau Barat B3/A34, Sawojajar, Kedungkandang, Kota Malang, Jawa Timur 65139 <br>
                    Dicetak pada tanggal : <?= date("d M Y"); ?>
                </div>
            </div>
        </section>
    </div>
</body>

</html>