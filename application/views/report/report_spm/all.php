
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>Report Report_spm</h1>
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
                <div class="form-group">
                  <form action="<?= base_url("report/Report_spm/") ?>" method="post">
                  &nbsp&nbsp&nbsp&nbsp<label> Tanggal Awal </label>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<label> Tanggal Akhir </label><br>
                  <i class="fa fa-calendar"><input type="date" value="<?= $this->session->userdata('tanggalAwal');?>" name="tanggalAwal" required>
                  -
                  <input type="date" value="<?= $this->session->userdata('tanggalAkhir'); ?>" name="tanggalAkhir" required>
                  
                  <button class="btn btn-success btn-flat"><i class="fa fa-search"></i></button>
                  </i>
                  </form>
                  <a class="btn btn-success pull-right btn-flat" href="<?= base_url('report/Report_spm/getExcel/') ?>" target="_blank"><i class="fa fa-file-excel-o"></i> Export Excel</a>
                </div>
                </div>
              </div>
              <!-- FILTER  -->
            </div>
            <div class="panel-body">
                <table class="table table-hover" id="idTable" style="width: 100%">
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>Category</th><th>Jumlah</th><th>Total</th>
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
          "url": "<?php echo base_url('report/Report_spm/ajaxall/')?>",
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
    alert('Detailnya buat sendiri ya cuk :)')
  }
</script>
