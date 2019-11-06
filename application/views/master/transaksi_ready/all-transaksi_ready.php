<div class="content-wrapper">
  <section class="content-header">
    <h1>
      Transaksi Ready
      <small>master</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li><a href="#">master</a></li>
      <li class="active">Transaksi Ready</li>
    </ol>
  </section>
  <section class="content">
    <div class="row">
      <div class="col-xs-12">
        <div class="box">
          <div class="box-header">
            <div class="row">
              <div class="col-md-6">
                <select onchange="loadtable(this.value)" id="select-status" style="width: 150px" class="form-control">
                  <option value="ENABLE">ENABLE</option>
                  <option value="DISABLE">DISABLE</option>
                </select>
              </div>
              <div class="col-md-6">
                <div class="pull-right"> <a href="<?= base_url('master/transaksi_ready/create') ?>">
                    <button type="button" class="btn btn-sm btn-success"><i class="fa fa-plus"></i> Tambah Transaksi Ready</button>
                  </a>
                </div>
              </div>
            </div>
          </div>
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
<div class="modal fade bd-example-modal-sm" tabindex="-1" transaksi_ready="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true" id="modal-delete">
  <div class="modal-dialog modal-sm">
    <div class="modal-content">
      <form id="upload-delete" action="<?= base_url('master/transaksi_ready/delete') ?>">
        <div class="modal-header">
          <h5 class="modal-title">Confirm delete</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <input type="hidden" name="id" id="delete-input">
          <p>Are you sure to delete this data?</p>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-danger btn-send">Yes, Delete</button>
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
        </div>
      </form>
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
      '<th>Customer</th>' +
      '<th>Kurir</th>' +
      '<th>Biaya Kirim</th>' +
      '<th>Subtotal</th>' +
      '<th>Bank</th>' +
      '<th>Dropshipper</th>' +
      '<th>Status Pembayaran</th>' +
      '<th>Tanggal Pembayaran</th>' +
      '       <th style="width:150px">Status</th>' +
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
        "url": "<?= base_url('master/transaksi_ready/json?status=') ?>" + status,
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
          "data": "id_customer"
        },
        {
          "data": "id_kurir"
        },
        {
          "data": "biaya_kirim"
        },
        {
          "data": "sub_total"
        },
        {
          "data": "id_bank"
        },
        {
          "data": "id_dropshipper"
        },
        {
          "data": "status_pembayaran"
        },
        {
          "data": "tgl_status_pembayaran"
        },
        {
          "data": "status"
        },
        {
          "data": "view",
          "orderable": false
        }
      ],
      order: [
        [1, 'desc']
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
            var htmls = '<div align="center"><small class="label bg-blue"><i class="fa fa-check"> </i> Di Proses </small></div>';
          } else if (row['status_order'] == 'Selesai') {
            var htmls = '<div align="center"><small class="label bg-green"><i class="fa fa-check"> </i> Selesai </small></div>';
          } else if (row['status_order'] == 'Cancel') {
            var htmls = '<div align="center"><small class="label bg-red"><i class="fa fa-ban"> </i> Cancel </small></div>';
          }
          return htmls;
        }
      }, {
        targets: [5],
        render: function(data, type, row, meta) {
          var htmls = '<div align="center"><b> Rp ' + maskRupiah(row['biaya_kirim']) + '</b></div>';
          return htmls;
        }
      }, {
        targets: [6],
        render: function(data, type, row, meta) {
          var htmls = '<div align="center"><b> Rp ' + maskRupiah(row['sub_total']) + '</b></div>';
          return htmls;
        }
      }, {
        targets: [9],
        render: function(data, type, row, meta) {
          if ((row['status_pembayaran'] == 'Belum Dibayar') || (row['status_pembayaran'] == 'Belum Lunas')) {
            var kurang = "";
            if (row['kembalian'] < 0) {
              kurang = "Kurang : Rp " + maskRupiah(row['kembalian'] * -1);
            } else {
              kurang = "Kembalian : Rp " + maskRupiah(row['kembalian'] * -1);
            }

            var htmls = '<div align="center"><small class="label bg-yellow">' +
              '<i class="fa fa-warning"> </i> Pembayaran Belum Lunas </small><br>' +
              kurang +
              '<hr>' +
              '<div class="row" align="center">' +
              '<div class="col-md-12">' +
              '<div class="btn-group">' +
              '<button type="button" class="btn btn-primary" onclick="lunas(' + row['id'] + ')"><i class="fa fa-check-circle"></i> Lunas</button>' +
              '<button type="button" class="btn btn-warning" onclick="cicil(' + row['id'] + ')"><i class="fa fa-money"></i> Cicil</button>' +
              '</div>' +
              '</div>' +
              '</div>' +
              '</div>';
          } else if (row['status_pembayaran'] == 'Lunas') {
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
          if (row['status'] == 'ENABLE') {
            var htmls = '<a href="<?= base_url('master/transaksi_ready/status/') ?>' + row['id'] + '/DISABLE">' +
              '    <button type="button" class="btn btn-sm btn-sm btn-success"><i class="fa fa-home"></i> ENABLE</button>' +
              '</a>';
          } else {
            var htmls = '<a href="<?= base_url('master/transaksi_ready/status/') ?>' + row['id'] + '/ENABLE">' +
              '   <button type="button" class="btn btn-sm btn-sm btn-danger"><i class="fa fa-home"></i> DISABLE</button>' +
              '</a>';
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

  function inv(id) {
    location.href = "<?= base_url('master/transaksi_ready/inv/') ?>" + id;
  }

  function hapus(id) {
    $("#modal-delete").modal('show');
    $("#delete-input").val(id);
  }

  function cicil(id) {
    $("#load-form").html('loading...');
    $("#modal-form").modal();
    $("#title-form").html('Lunasi Pembayaran');
    $("#load-form").load("<?= base_url('master/transaksi_ready/cicil/') ?>" + id);
  }

  function lunas(id) {
    location.href = "<?= base_url('master/transaksi_ready/lunas/') ?>" + id;
  }
  

  function proses(id) {
    $.ajax({
      type: "POST",
      url: "<?= base_url('master/transaksi_ready/actionproses/') ?>" + id,
      cache: false,
      contentType: false,
      processData: false,
      beforeSend: function() {},
      success: function(response, textStatus, xhr) {
        var str = response;
        if (str.indexOf("success") != -1) {
          $(".show_error").hide().html(response).slideDown("fast");
          window.location.href = "<?=base_url('master/transaksi_ready/proses')?>";
        } else {
          $(".show_error").hide().html(response).slideDown("fast");
          loadtable($("#select-status").val());
        }
      },
      error: function(xhr, textStatus, errorThrown) {}
    });
    return false;
  }
  
  function cancel(id) {
    location.href = "<?= base_url('master/transaksi_ready/actioncancel/') ?>" + id;
  }

  $("#upload-delete").submit(function() {
    $.ajax({
      type: "POST",
      url: form.attr("action"),
      cache: false,
      contentType: false,
      processData: false,
      beforeSend: function() {
        $(".btn-send").addClass("disabled").html("<i class='la la-spinner la-spin'></i>  Processing...").attr('disabled', true);
        $(".show_error").slideUp().html("");
      },

      success: function(response, textStatus, xhr) {
        var str = response;
        if (str.indexOf("success") != -1) {
          $(".show_error").hide().html(response).slideDown("fast");
          $(".btn-send").removeClass("disabled").html('Yes, Delete it').attr('disabled', false);
        } else {
          setTimeout(function() {
            $("#modal-delete").modal('hide');
          }, 1000);
          $(".show_error").hide().html(response).slideDown("fast");
          $(".btn-send").removeClass("disabled").html('Yes , Delete it').attr('disabled', false);
          loadtable($("#select-status").val());
        }
      },
      error: function(xhr, textStatus, errorThrown) {}
    });
    return false;
  });
</script>