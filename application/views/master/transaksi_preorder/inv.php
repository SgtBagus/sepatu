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
    <!-- info row -->
    <div class="row invoice-info">
      <div class="col-md-12" align="center">
        <img src="<?= base_url('assets/invoice.png') ?>" witdh="100%">
      </div>
      <div class="col-sm-12 invoice-col">
        <address>
          Nomor Nota : <strong><?= $transaksi['kode_transaksi'] ?></strong><br>
          Nama Customer : <strong><?= $customer['nama_customer'] ?> - <?= $customer['hp_customer'] ?></strong><br>
          <?= $customer['alamat_customer'] ?>, Kelulahan : <?=  $kelurahan['kelurahan'] ?>
          , Kecamatan : <?=  $kecamatan['kecamatan'] ?>, Kabupatan : <?=  $kabupaten['kabupaten_kota'] ?>, Kota : <?=  $provinsi['provinsi'] ?> <br>
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
              <th>Product</th>
              <th>Serial #</th>
              <th>Description</th>
              <th>Subtotal</th>
            </tr>
          </thead>
          <tbody>
            <?php foreach ($transaksi_produk as $row){ ?>
              <tr>
                <td>1</td>
                <td>Call of Duty</td>
                <td>455-981-221</td>
                <td>El snort testosterone trophy driving gloves handsome</td>
                <td>$64.50</td>
              </tr>
              <tr>
                <td>1</td>
                <td>Need for Speed IV</td>
                <td>247-925-726</td>
                <td>Wes Anderson umami biodiesel</td>
                <td>$50.00</td>
              </tr>
              <tr>
                <td>1</td>
                <td>Monsters DVD</td>
                <td>735-845-642</td>
                <td>Terry Richardson helvetica tousled street art master</td>
                <td>$10.70</td>
              </tr>
              <tr>
                <td>1</td>
                <td>Grown Ups Blue Ray</td>
                <td>422-568-642</td>
                <td>Tousled lomo letterpress</td>
                <td>$25.99</td>
              </tr>
            <?php } ?>
          </tbody>
        </table>
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->

    <div class="row">
      <!-- accepted payments column -->
      <div class="col-xs-6">
        <p class="lead">Payment Methods:</p>
        <img src="../../dist/img/credit/visa.png" alt="Visa">
        <img src="../../dist/img/credit/mastercard.png" alt="Mastercard">
        <img src="../../dist/img/credit/american-express.png" alt="American Express">
        <img src="../../dist/img/credit/paypal2.png" alt="Paypal">

        <p class="text-muted well well-sm no-shadow" style="margin-top: 10px;">
          Etsy doostang zoodles disqus groupon greplin oooj voxy zoodles, weebly ning heekya handango imeem plugg
          dopplr jibjab, movity jajah plickers sifteo edmodo ifttt zimbra.
        </p>
      </div>
      <!-- /.col -->
      <div class="col-xs-6">
        <p class="lead">Amount Due 2/22/2014</p>

        <div class="table-responsive">
          <table class="table">
            <tbody><tr>
              <th style="width:50%">Subtotal:</th>
              <td>$250.30</td>
            </tr>
            <tr>
              <th>Tax (9.3%)</th>
              <td>$10.34</td>
            </tr>
            <tr>
              <th>Shipping:</th>
              <td>$5.80</td>
            </tr>
            <tr>
              <th>Total:</th>
              <td>$265.24</td>
            </tr>
          </tbody></table>
        </div>
      </div>
      <!-- /.col -->
    </div>
    <!-- /.row -->

    <!-- this row will not appear when printing -->
    <div class="row no-print">
      <div class="col-xs-12">
        <a href="invoice-print.html" target="_blank" class="btn btn-default"><i class="fa fa-print"></i> Print</a>
        <button type="button" class="btn btn-success pull-right"><i class="fa fa-credit-card"></i> Submit Payment
        </button>
        <button type="button" class="btn btn-primary pull-right" style="margin-right: 5px;">
          <i class="fa fa-download"></i> Generate PDF
        </button>
      </div>
    </div>
  </section>
  <!-- /.content -->
  <div class="clearfix"></div>
</div>