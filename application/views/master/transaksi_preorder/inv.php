<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>
      Invoice
      <small><?= $transaksi['kode_transaksi'] ?></small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li><a href="#">Transaksi Pre Order</a></li>
      <li class="active">Invoice</li>
    </ol>
  </section>
  <section class="invoice">
    <div class="row">
      <div class="col-xs-12">
        <h2 class="page-header">
          <i class="fa fa-file"></i>Invoice : <b> <?= $transaksi['kode_transaksi'] ?> </b>
          <small class="pull-right">Tanggal Transaksi: <b><?= date('d M Y h:i', strtotime($transaksi['created_at'])) ?></b></small>
        </h2>
      </div>
    </div>
    <div class="row invoice-info">
      <div class="col-md-12">
        <?php if ($transaksi['status_order'] == 'Selesai') { ?>
          <div class="callout callout-success">
            <h4>Invoice Siap Di Print</h4>
          </div>
        <?php } else if ($transaksi['status_order'] == 'Cancel') { ?>
          <div class="callout callout-danger">
            <h4>Invoice Dibatalkan</h4>
          </div>
        <?php } else if ($transaksi['status_order'] == 'Pesanan Baru') { ?>
          <div class="callout callout-warning">
            <h4>Invoice Belum Di Proses</h4>
          </div>
        <?php } else { ?>
          <div class="callout callout-warning">
            <h4>Perhatian!</h4>
            <p>Invoice Transaksi ini Masih Dalam Proses, List Penyelesaian</p>
            <ol>
              <?php if ($transaksi['status_pembayaran'] == 'Lunas') { ?>
                <li>Invoice ini Belum Lunas Terbayar. </li>
              <?php } ?>
              <?php if ($transaksi['status_pengiriman'] == 'Sudah Dikirim') { ?>
                <li>Invoice ini Belum DiKirim. </li>
              <?php } ?>
            </ol>
          </div>
        <?php } ?>
      </div>
      <div class="col-md-12" align="center">
        <img src="<?= base_url('assets/invoice.png') ?>" witdh="100%">
      </div>
      <div class="col-sm-12 invoice-col">
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
          Nama Dropshipper : <strong><?= $dropshipper['nama_customer'] ?> - <?= $customer['hp_customer'] ?></strong><br>
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
              <?php $i = 1; foreach ($transaksi_kemasan as $row) {
                $master_kemasan = $this->mymodel->selectDataone('master_kemasan', array('id' => $row['id_kemasan'])) ?>
                <tr>
                  <td><?= $i ?></td>
                  <td><?= $master_kemasan['value']?></td>
                  <td><?= $master_kemasan['keterangan']?></td>
                  <td><?= $row['qty']?></td>
                  <td>
                    <b>Rp. <?= number_format($master_kemasan['hpp'], 0, ',', '.') ?>,- </b>
                  </td>
                  <td>
                    <b>Rp. <?= number_format($row['harga_total'], 0, ',', '.') ?>,- </b>
                  </td>
                </tr>
              <?php $i++; } ?>
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
    <br>
    <div class="row no-print">
      <div class="col-xs-12" align="right">
        <a href="<?= base_url('master/Transaksi_preorder/cetak/' . $transaksi['kode_transaksi']) ?>" target="_blank" class="btn btn-default"><i class="fa fa-print"></i> Print</a>
      </div>
    </div>
  </section>
</div>