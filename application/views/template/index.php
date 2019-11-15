<div class="content-wrapper">
  <section class="content-header">
    <h1>Dashboard</h1>
  </section>
  <section class="content">
    <div class="row">
      <div class="col-lg-3 col-xs-6">
        <div class="small-box bg-aqua">
          <div class="inner">
            <h3><?= $itemTerjual ?></h3>
            <p>Item Terjual Hari Ini</p>
          </div>
          <div class="icon">
            <i class="ion ion-bag"></i>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-green">
          <div class="inner">
            <h3>Rp. <?= number_format($totalOmzet, 0, ',', '.') ?>,-</h3>
            <p>Total Omzet Hari Ini (Ongkir)</p>
          </div>
          <div class="icon">
            <i class="ion ion-stats-bars"></i>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-xs-6">
        <div class="small-box bg-red">
          <div class="inner">
            <h3>Rp. <?= number_format($totalOmzetNONonkir, 0, ',', '.') ?>,-</h3>
            <p>Omzet Hari Ini (Tanpa Ongkir)</p>
          </div>
          <div class="icon">
            <i class="ion ion-stats-bars"></i>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-xs-6">
        <div class="small-box bg-yellow">
          <div class="inner">
            <h3><?= $belumLunas ?></h3>
            <p>Belum Lunas</p>
          </div>
          <div class="icon">
            <i class="ion ion-stats-bars"></i>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-6 col-xs-6">
        <div class="box">
          <div class="box-body">
            <h4>Produk Terlaris</h4>
            <table class="table table-hover" id="idTableProduk" style="width: 100%">
              <thead>
                <tr>
                  <th>No</th>
                  <th>Nama produk</th>
                  <th>Warna produk</th>
                  <th>Jumlah stok</th>
                  <th>Terjual</th>
                </tr>
              </thead>
              <tbody>
              </tbody>
            </table>
          </div>
        </div>
      </div>
      <div class="col-lg-6 col-xs-6">
        <div class="box">
          <div class="box-body">
            <h4>Kota Terlaris</h4>
            <table class="table table-hover" id="idTableKota" style="width: 100%">
              <thead>
                <tr>
                  <th>No</th>
                  <th>Provinsi</th>
                  <th>COUNT</th>
                </tr>
              </thead>
              <tbody>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </section>
</div>

<script type="text/javascript">
  var table;
  $(document).ready(function() {
    //datatables
    table = $('#idTableProduk').DataTable({
      "processing": true, //Feature control the processing indicator.
      "serverSide": true, //Feature control DataTables' server-side processing mode.
      "order": [], //Initial no order.
      "scrollX": true,
      // Load data for the table's content from an Ajax source
      "ajax": {
        "url": "<?php echo base_url('report/Produk_terlaris/ajaxall/') ?>",
        "type": "POST"
      },
      "order": [[4, 'desc']],
      //Set column definition initialisation properties.
      "columnDefs": [{
        "targets": [0], //first column / numbering colum
        "orderable": true, //set not orderable
      }, ],
    });
  });


  $(document).ready(function() {
    $('#idTableKota').DataTable({
      "processing": true, //Feature control the processing indicator.
      "serverSide": true, //Feature control DataTables' server-side processing mode.
      "order": [], //Initial no order.
      "scrollX": true,
      // Load data for the table's content from an Ajax source
      "ajax": {
        "url": "<?php echo base_url('report/Kota_terlaris/ajaxall/') ?>",
        "type": "POST"
      },
      "order": [[2, 'desc']],
      //Set column definition initialisation properties.
      "columnDefs": [{
        "targets": [0], //first column / numbering colum
        "orderable": true, //set not orderable
      }, ],
    });
  });
</script>