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
            <div id="load-table"></div>
          </div>
        </div>
      </div>
      <div class="col-lg-6 col-xs-6">
        <div class="box">
          <div class="box-body">
            <h4>Kota Terlaris</h4>
            <div id="load-table-kota"></div>
          </div>
        </div>
      </div>
    </div>
  </section>
</div>
<script>
  function loadtableproduk() {
    var tableProduk = '<table class="table table-bordered" id="mytableProduk">' +
      '     <thead>' +
      '     <tr class="bg-success">' +
      '       <th style="width:20px">No</th>' +
      '<th>Nama Produk</th>' +
      '<th>Jumlah Terjual</th>' +
      '<th>Sisa Stok</th>' +
      '     </tr>' +
      '     </thead>' +
      '     <tbody>' +
      '     </tbody>' +
      ' </table>';
    $("#load-table").html(tableProduk)
    var t = $("#mytableProduk").dataTable({
      oLanguage: {
        sProcessing: "loading..."
      },
      processing: true,
      serverSide: true,
      searching: false,
      ajax: {
        "url": "<?= base_url('home/jsonproduk') ?>",
        "type": "POST"
      },
      columns: [{
          "data": "id",
          "orderable": false
        },
        {
          "data": "nama_produk"
        },
        {
          "data": "qty"
        },
        {
          "data": "jumlah_stok"
        }
      ],
      order: [
        [3, 'desc']
      ],

      rowCallback: function(row, data, iDisplayIndex) {
        var info = this.fnPagingInfo();
        var page = info.iPage;
        var length = info.iLength;
        var index = page * length + (iDisplayIndex + 1);
        $('td:eq(0)', row).html(index);
      }
    });
  }

  loadtableproduk();

  
  function loadtablekota() {
    var tableProduk = '<table class="table table-bordered" id="mytableKota">' +
      '     <thead>' +
      '     <tr class="bg-success">' +
      '       <th style="width:20px">No</th>' +
      '<th>Provinsi</th>' +
      '<th>Jumlah Pembeli</th>' +
      '     </tr>' +
      '     </thead>' +
      '     <tbody>' +
      '     </tbody>' +
      ' </table>';
    $("#load-table-kota").html(tableProduk)
    var t = $("#mytableKota").dataTable({
      oLanguage: {
        sProcessing: "loading..."
      },
      processing: true,
      serverSide: true,
      searching: false,
      ajax: {
        "url": "<?= base_url('home/jsonkota') ?>",
        "type": "POST"
      },
      columns: [{
          "data": "id",
          "orderable": false
        },
        {
          "data": "provinsi"
        },
        {
          "data": "COUNT"
        },
      ],
      order: [
        [2, 'desc']
      ],

      rowCallback: function(row, data, iDisplayIndex) {
        var info = this.fnPagingInfo();
        var page = info.iPage;
        var length = info.iLength;
        var index = page * length + (iDisplayIndex + 1);
        $('td:eq(0)', row).html(index);
      }
    });
  }

  loadtablekota();
</script>