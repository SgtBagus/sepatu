<div class="content-wrapper">
    <section class="content-header">
        <h1>
            Transaksi Ready Selesai
            <small>master</small>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">master</a></li>
            <li class="active">Transaksi Ready Selesai</li>
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
<script type="text/javascript">
    function loadtable() {
        var table = '<table class="table table-bordered" id="mytable">' +
        '     <thead>' +
        '     <tr class="bg-success">' +
        '       <th style="width:20px">No</th>' +
        '<th>Kode</th>' +
        '<th>Status Transaksi</th>' +
        '<th>Customer</th>' +
        '<th>Kurir</th>' +
        '<th>Nomor Resi</th>' +
        '<th>Subtotal</th>' +
        '<th>Total Bayar</th>' +
        '<th>Bank</th>' +
        '<th>Dropshipper</th>' +
        '<th>Status Pembayaran</th>' +
        '<th>Tanggal Selesai</th>' +
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
                "url": "<?= base_url('master/transaksi_ready/jsonselesai') ?>",
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
                "data": "resi_pengiriman"
            },
            {
                "data": "sub_total"
            },
            {
                "data": "jumlah_bayar"
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
                "data": "tgl_status_order"
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
                    if (row['status_order'] == 'Selesai') {
                        var htmls = '<div align="center"><small class="label bg-green"><i class="fa fa-check"> </i> Selesai </small></div>';
                    } else if (row['status_order'] == 'Cancel') {
                        var htmls = '<div align="center"><small class="label bg-red"><i class="fa fa-ban"> </i> Cancel </small></div>';
                    }
                    return htmls;
                }
            }, {
                targets: [5],
                render: function(data, type, row, meta) {
                    if (!row['resi_pengiriman']) {
                        var htmls = '<p class="help-block">Belum Tersedia</p>';
                    } else {
                        var htmls = '<div align="center"><b> ' + row['resi_pengiriman'] + '</b></div>';
                    }
                    return htmls;
                }
            }, {
                targets: [6],
                render: function(data, type, row, meta) {
                    var htmls = '<div align="center"><b> Rp ' + maskRupiah(row['sub_total']) + '</b></div>';
                    return htmls;
                }
            }, {
                targets: [7],
                render: function(data, type, row, meta) {
                    var htmls = '<div align="center"><b> Rp ' + maskRupiah(row['jumlah_bayar']) + '</b></div>';
                    return htmls;
                }
            }, {
                targets: [10],
                render: function(data, type, row, meta) {
                    if (row['status_pembayaran'] == 'Lunas') {
                        var htmls = '<div align="center"><small class="label bg-green"><i class="fa fa-check"> </i> Pembayaran Lunas </small></div>';
                    } else {
                        var htmls = '<p class="help-block">Belum Tersedia</p>';
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
</script>