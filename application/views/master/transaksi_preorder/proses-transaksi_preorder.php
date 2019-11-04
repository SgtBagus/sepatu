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
        <h5 class="modal-title" id="title-form" ></h5>
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
    '<th>Tanggal Di Proses</th>' +
    '<th>Customer</th>' +
    '<th>Kurir</th>' +
    '<th>Nomor Resi</th>' +
    '<th>Biaya Kirim</th>' +
    '<th>Subtotal</th>' +
    '<th>Total Bayar</th>' +
    '<th>Status Pembayaran</th>' +
    '<th>Tanggal Pembayaran</th>' +
    '<th>Status Pengiriman</th>' +
    '<th>Tanggal Pengiriman</th>' +
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
        "data": "tgl_status_order"
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
        "data": "biaya_kirim"
      },
      {
        "data": "sub_total"
      },
      {
        "data": "jumlah_bayar"
      },
      {
        "data": "status_pembayaran"
      },
      {
        "data": "tgl_status_pembayaran"
      },
      {
        "data": "status_pengiriman"
      },
      {
        "data": "tgl_status_pengiriman"
      },
      {
        "data": "view",
        "orderable": false
      }
      ],
      order: [[1, 'asc']],
      columnDefs: [{
        targets: [5],
        render: function(data, type, row, meta) {
          var htmls = '<div align="center"><b>'+row['resi_pengiriman']+'</div>';
          return htmls;
        }
      }, {
        targets: [6],
        render: function(data, type, row, meta) {
          var htmls = '<div align="center"><b> Rp '+maskRupiah(row['biaya_kirim'])+'</b></div>';
          return htmls;
        }
      }, {
        targets: [7],
        render: function(data, type, row, meta) {
          var htmls = '<div align="center"><b> Rp '+maskRupiah(row['sub_total'])+'</b></div>';
          return htmls;
        }
      }, {
        targets: [8],
        render: function(data, type, row, meta) {
          var htmls = '<div align="center"><b> Rp '+maskRupiah(row['jumlah_bayar'])+'</b></div>';
          return htmls;
        }
      }, {
        targets: [9],
        render: function(data, type, row, meta) {
          if (row['status_pembayaran'] == 'Belum Dibayar') {
            
            var kurang = ""
            if(row['kembalian'] < 0){
              kurang = "Kurang : Rp " + maskRupiah(row['kembalian']*-1);
            }else{
              kurang = "Kurang : Rp 0";
            }

            var htmls = '<div align="center"><small class="label bg-yellow">'+
            '<i class="fa fa-warning"> </i> Pembayaran Belum Lunas </small><br>'+
            kurang +
            '<hr>'+
            '<div class="row" align="center">'+
            '<div class="col-md-12">'+
            '<div class="btn-group">'+
            '<button type="button" class="btn btn-primary" onclick="lunas('+row['id']+')"><i class="fa fa-check-circle"></i> Lunas</button>'+
            '<button type="button" class="btn btn-warning" onclick="cicil('+row['id']+')"><i class="fa fa-money"></i> Cicil</button>'+
            '</div>'+
            '</div>'+
            '</div>'+
            '</div>';
          } else if (row['status_order'] == 'Lunas') {
            var htmls = '<div align="center"><small class="label bg-green"><i class="fa fa-check"> </i> Pembayaran Lunas </small></div>';
          } 
          return htmls;
        }
      }, {
        targets: [10],
        render: function(data, type, row, meta) {
          if (!row['tgl_status_pembayaran']) {
            var htmls = '<p class="help-block">Belum Tersedia</p>';
          } else {
            var htmls = row['tgl_status_pembayaran'];
          }
          return htmls;
        }
      }, {
        targets: [11],
        render: function(data, type, row, meta) {
          if (row['status_pengiriman'] == 'Belum Dikirim') {
            var htmls = '<div align="center"><small class="label bg-yellow">'+
            '<i class="fa fa-warning"> </i> Belum Di Kirim </small>'+
            '<hr>'+
            '<div class="row" align="center">'+
            '<div class="col-md-12">'+
            '<div class="btn-group">'+
            '<button type="button" class="btn btn-primary" onclick="kirim('+row['id']+')"><i class="fa fa-check-circle"></i> Kirim</button>'+
            '</div>'+
            '</div>'+
            '</div>'+
            '</div>';
          } else if (row['status_order'] == 'Sudah Di Kirim') {
            var htmls = '<div align="center"><small class="label bg-green"><i class="fa fa-check"> </i> Sudah Di Kirim </small></div>';
          } 
          return htmls;
        }
      },{
        targets: [12],
        render: function(data, type, row, meta) {
          if (!row['tgl_status_pengiriman']) {
            var htmls = '<p class="help-block">Belum Tersedia</p>';
          } else {
            var htmls = row['tgl_status_pengiriman'];
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

  function cicil(id) {
    $("#load-form").html('loading...');
    $("#modal-form").modal();
    $("#title-form").html('Lunasi Pembayaran');
    $("#load-form").load("<?= base_url('master/transaksi_preorder/cicil/') ?>"+id);
  }
  
  function lunas(id) {
    location.href = "<?= base_url('master/Transaksi_preorder/lunas/') ?>" + id;
  }

  function kirim(id) {
    location.href = "<?= base_url('master/Transaksi_preorder/kirim/') ?>" + id;
  }

  function inv(id) {
    location.href = "<?= base_url('master/Transaksi_preorder/inv/') ?>" + id;
  }
</script>