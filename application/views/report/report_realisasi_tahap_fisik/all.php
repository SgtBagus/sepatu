
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>Report Report_realisasi_tahap_fisik</h1>
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
                <a class="btn btn-success pull-right btn-flat" href="<?= base_url('report/Report_realisasi_tahap_fisik/getExcel/') ?>" target="_blank"><i class="fa fa-file-excel-o"></i> Export Excel</a>
                </div>
              </div>
              <!-- FILTER  -->
            </div>
            <div class="panel-body">
                <table class="table table-hover" id="idTable" style="width: 100%">
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>Tanggal</th><th>Penyuluhan</th><th>Inventarisasi dan identifikasi os</th><th>Pengukuran dan pemetaan</th><th>Sidang ppl</th><th>Penetapan obyek dan subyek</th><th>Sk redis</th><th>Pembukuan hak dan penerbitan sertipikat</th><th>Keterangan</th><th>Name</th>
                      <th></th>
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
          "url": "<?php echo base_url('report/Report_realisasi_tahap_fisik/ajaxall/')?>",
          "type": "POST"
        },
        //Set column definition initialisation properties.
        "columnDefs": [
        { 
            "targets": [ 0 ], //first column / numbering colum
            "orderable": true, //set not orderable
          },
          ],
        });
  });


  function detail(){
    // alert('Detailnya buat sendiri ya cuk :)')
  }
</script>
