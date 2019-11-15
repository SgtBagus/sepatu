<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>Report Laporan produk</h1>
    <h5 style="padding-left:1px;"></h5>
  </section>

  <!-- Main content -->
  <section class="content">
    <div class="row">
      <div class="col-md-12">
        <div class="panel panel-success">
          <div class="panel-heading">
            <!-- FILTER  -->
            <div class="row">
              <div class="col-md-12">
                <a class="btn btn-success pull-right btn-flat" href="<?= base_url('report/Laporan_produk/getExcel/') ?>" target="_blank"><i class="fa fa-file-excel-o"></i> Export Excel</a>
              </div>
            </div>
            <!-- FILTER  -->
          </div>
          <div class="panel-body">
            <div class="row">
              <div class="col-md-12">
                <h4> Filter Tanggal</h4>
              </div>
              <form method="GET" action="<?= base_url('report/Laporan_produk') ?>">
                <div class="col-md-4">
                  <input type="text" name="dateAwal" placeholder="Tanggal Awal" class="form-control tgl" <?php if ($_GET['dateAwal']) {
                                                                                                            echo "value='" . $_GET['dateAwal'] . "'";
                                                                                                          } ?>>
                </div>
                <div class="col-md-2" align="center">
                  <h4> Sampai</h4>
                </div>
                <div class="col-md-4">
                  <input type="text" name="dateAkhir" placeholder="Tanggal Akhir" class="form-control tgl" <?php if ($_GET['dateAkhir']) {
                                                                                                              echo "value='" . $_GET['dateAkhir'] . "'";
                                                                                                            } ?>>
                </div>
                <div class="col-md-2">
                  <button type="submit" class="btn btn-primary btn-block">
                    <i class="fa fa-search"></i>
                    Cari
                  </button>
                </div>
              </form>
            </div>
            <br>
            <table class="table table-hover" id="idTable" style="width: 100%">
              <thead>
                <tr>
                  <th>No</th>
                  <th>Nama produk</th>
                  <th>Ket produk</th>
                  <th>Harga produksi</th>
                  <th>Harga jual</th>
                  <th>Dibuat pada</th>
                  <th>Diubah pada</th>
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
    table = $('#idTable').DataTable({
      "processing": true, //Feature control the processing indicator.
      "serverSide": true, //Feature control DataTables' server-side processing mode.
      "order": [], //Initial no order.
      "scrollX": true,
      // Load data for the table's content from an Ajax source
      "ajax": {
        "url": "<?php echo base_url('report/Laporan_produk/ajaxall/') ?>",
        "type": "POST"
      },
      "order": [
        [6, 'desc']
      ],
      //Set column definition initialisation properties.
      "columnDefs": [{
        "targets": [0], //first column / numbering colum
        "orderable": true, //set not orderable
      }, ],
    });
  });
</script>