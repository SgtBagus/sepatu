<div class="content-wrapper">
  <section class="content-header">
    <h1>
      Proses Transaksi Preorder
      <small>master</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li><a href="#">master</a></li>
      <li class="active">ProsesTransaksi Preorder</li>
    </ol>
  </section>
  <section class="content">
    <div class="row">
      <div class="col-xs-12">
        <div class="box">
          <div class="box-body">
            <div class="show_error"></div>
            <div class="table-responsive">
              <div id="load-table"></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</div>
<div class="modal fade bd-example-modal-sm" tabindex="-1" master_bank="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true" id="modal-form">
  <div class="modal-dialog modal-md">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="title-form"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div id="load-form"></div>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript">
  function loadtable(status) {
    var table = '<table class="table table-bordered" id="mytable">' +
      '     <thead>' +
      '     <tr class="bg-success">' +
      '       <th style="width:20px">No</th>' +
      '<th>Kode</th>' +
      '<th>Status Transaksi</th>' +
      '<th>Tanggal Pembayaran</th>' +
      '<th>Customer</th>' +
      '<th>Kurir</th>' +
      '<th>Nomor Resi</th>' +
      '<th>Status Pengiriman</th>' +
      '<th>Tanggal Di Pengiriman</th>' +
      '       <th style="width:150px"></th>' +
      '     </tr>' +
      '     </thead>' +
      '     <tbody>' +
      '     </tbody>' +
      ' </table>';
    $("#load-table").html(table)
    var t = $("#mytable").dataTable({
      initComplete: function() {
        var api = this.api();
        $('#mytable_filter input')
          .off('.DT').on('keyup.DT', function(e) {
            if (e.keyCode == 13) {
              api.search(this.value).draw();
            }
          });
      },
      oLanguage: {
        sProcessing: "loading..."
      },
      processing: true,
      serverSide: true,
      ajax: {
        "url": "<?= base_url('master/Transaksi_preorder/jsonproses') ?>",
        "type": "POST"
      },
      columns: [{
          "data": "id",
          "orderable": false
        },
        {
          "data": "kode_transaksi"
        },
        {
          "data": "status_order"
        },
        {
          "data": "tgl_status_pembayaran"
        },
        {
          "data": "id_customer"
        },
        {
          "data": "id_kurir"
        },
        {
          "data": "resi_pengiriman"
        },
        {
          "data": "status_pembayaran"
        },
        {
          "data": "tgl_status_pengiriman"
        },
        {
          "data": "view",
          "orderable": false
        }
      ],
      order: [
        [1, 'asc']
      ],
      columnDefs: [{
        targets: [2],
        render: function(data, type, row, meta) {
          if ((row['status_order'] == 'Pesanan Baru')) {
            var htmls = '<div align="center"><small class="label bg-yellow">' +
              '<i class="fa fa-warning"> </i> Belum Di Proses </small><br>' +
              '<hr>' +
              '<div class="row" align="center">' +
              '<div class="col-md-12">' +
              '<div class="btn-group">' +
              '<button type="button" class="btn btn-primary" onclick="proses(' + row['id'] + ')"><i class="fa fa-check"></i></button>' +
              '<button type="button" class="btn btn-danger" onclick="cancel(' + row['id'] + ')"><i class="fa fa-ban"></i></button>' +
              '</div>' +
              '</div>' +
              '</div>' +
              '</div>';
          } else if (row['status_order'] == 'Diproses') {
            var htmls = '<div align="center"><small class="label bg-yellow">' +
              '<i class="fa fa-blue"> </i> Di Proses </small><br>' +
              '<hr>' +
              '<div class="row" align="center">' +
              '<div class="col-md-12">' +
              '<div class="btn-group">' +
              '<button type="button" class="btn btn-success" onclick="selesai(' + row['id'] + ')"><i class="fa fa-check"></i></button>' +
              '<button type="button" class="btn btn-danger" onclick="cancel(' + row['id'] + ')"><i class="fa fa-ban"></i></button>' +
              '</div>' +
              '</div>' +
              '</div>' +
              '</div>';
          } else if (row['status_order'] == 'Selesai') {
            var htmls = '<div align="center"><small class="label bg-green"><i class="fa fa-check"> </i> Selesai </small></div>';
          } else if (row['status_order'] == 'Cancel') {
            var htmls = '<div align="center"><small class="label bg-red"><i class="fa fa-ban"> </i> Cancel </small></div>';
          }
          return htmls;
        }
      }, {
        targets: [6],
        render: function(data, type, row, meta) {
          if (!row['resi_pengiriman']) {
            var htmls = '<p class="help-block">Belum Tersedia</p>';
          } else {
            var htmls = '<div align="center"><b> ' + row['resi_pengiriman'] + '</b></div>';
          }
          return htmls;
        }
      }, {
        targets: [7],
        render: function(data, type, row, meta) {
          if (row['status_pengiriman'] == 'Belum Dikirim') {
            var htmls = '<div align="center"><small class="label bg-yellow">' +
              '<i class="fa fa-warning"> </i> Konfirmasi Pengiriman</small>' +
              '<hr>' +
              '<div class="row" align="center">' +
              '<div class="col-md-12">' +
              '<div class="btn-group">' +
              '<button type="button" class="btn btn-primary" onclick="kirim(' + row['id'] + ')"><i class="fa fa-check-circle"></i> Kirim </button>' +
              '</div>' +
              '</div>' +
              '</div>' +
              '</div>';
          } else if (row['status_pengiriman'] == 'Sudah Dikirim') {
            var htmls = '<div align="center"><small class="label bg-green"><i class="fa fa-check-circle"> </i> Selesai </small></div>';
          }
          return htmls;
        }
      }, {
        targets: [8],
        render: function(data, type, row, meta) {
          if (!row['tgl_status_pembayaran']) {
            var htmls = '<p class="help-block">Belum Tersedia</p>';
          } else {
            var htmls = row['tgl_status_pembayaran'];
          }
          return htmls;
        }
      }],

      rowCallback: function(row, data, iDisplayIndex) {
        var info = this.fnPagingInfo();
        var page = info.iPage;
        var length = info.iLength;
        var index = page * length + (iDisplayIndex + 1);
        $('td:eq(0)', row).html(index);
      }
    });
  }
  loadtable($("#select-status").val());

  function kirim(id) {
    $("#load-form").html('loading...');
    $("#modal-form").modal();
    $("#title-form").html('Status Pemesanan');
    $("#load-form").load("<?= base_url('master/transaksi_preorder/kirim/') ?>" + id);
  }

  function inv(id) {
    location.href = "<?= base_url('master/Transaksi_preorder/inv/') ?>" + id;
  }

  function selesai(id) {
    location.href = "<?= base_url('master/Transaksi_preorder/actionselesai/') ?>" + id;
  }

  function cancel(id) {
    location.href = "<?= base_url('master/Transaksi_preorder/actioncancel/') ?>" + id;
  }
</script>