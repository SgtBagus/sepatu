<script type="text/javascript" src="<?= base_url('assets/tinymce/js/tinymce/tinymce.min.js') ?>"></script>
<style>
  .table-ajax{
    position: relative;
  }
  .table-ajax tbody:after{
    content: '';
    background-color: rgba(255,255,255,0.5);
    background-image: url('<?= base_url('assets/dist/img/load.gif') ?>');
    background-size: 30px 30px;
    background-repeat: no-repeat;
    background-position: center center;
    position: absolute;
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
    box-shadow: 0px 0px 3px 0px rgba(0,0,0,0.1);
    z-index: -1;
    opacity: 0;
  }
  .table-ajax.loading tbody:after{
    opacity: 1;
    z-index: 99;
    transform: 0.6s;
  }
</style>
 <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        CRUD Ajax
        <small></small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Tables</a></li>
        <li class="active">Data tables</li>
      </ol>
    </section>
    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <!-- /.box-header -->
            <div class="box-body">
                <div class="form-group">
                  <div class="row">
                    <div class="col-md-3">
                      <select class="form-control" id="g_status" onchange="loadTable()">
                        <option>ENABLE</option>
                        <option>DISABLE</option>
                      </select>
                    </div>
                    <div class="col-md-9">
                      <div class="pull-right">
                        <button type="button"  data-toggle="modal" data-target="#modal-add-customer" class="btn btn-primary btn-flat"><i class="fa fa-plus"></i> Tambah Customer</button>
                      </div>
                    </div>
                  </div>
                </div>
                <table class="table table-condensed table-bordered table-ajax">
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>Nama</th>
                      <th>Email</th>
                      <th>Telp</th>
                      <th>Alamat</th>
                      <th style="width: 130px;"></th>
                    </tr>
                  </thead>
                  <tbody id="result-table"></tbody>
                </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <div class="modal fade" id="modal-add-customer">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title">Tambah Customer</h4>
      </div>
      <form action="<?= base_url('crud-ajax/tambah') ?>" id="form-tambah-customer" enctype="multipart/form-data">
      <div class="modal-body">
        <div class="form-group">
          <label>Nama</label>
          <input type="text" class="form-control" name="dt[nama]">
        </div>
        <div class="form-group">
          <label>Email</label>
          <input type="text" class="form-control" name="dt[email]">
        </div>
        <div class="form-group">
          <label>Telp</label>
          <input type="text" class="form-control" name="dt[telp]">
        </div>
        <div class="form-group">  
          <label>Alamat</label>
          <input type="text" class="form-control" name="dt[alamat]">
        </div>
        <div class="form-group">
          <label>File</label>
          <input type="file" class="form-control" name="file">
        </div>
        <div class="show-error-add-customer"></div>
        <button type="submit" class="btn btn-primary btn-block btn-add-customer"><i class="fa fa-save"></i> Simpan</button>
      </div>
      </form>
    </div>
  </div>
</div>

  <div class="modal fade" id="modal-edit-customer">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title">Edit Customer</h4>
      </div>
      <div class="modal-body">
        <div id="result-edit-customer"></div>
      </div>
    </div>
  </div>
</div>

<script>
  function loadTable () {
    var status = $('#g_status').val();
    $.ajax({
        type: "POST",
        url: '<?= base_url('crud-ajax/ajaxGetTableCustomer') ?>/'+status,
        cache: false,
        contentType: 'text',
        processData: false,
        beforeSend : function(){
            $('.table-ajax').addClass('loading');
        },
        success: function(response, textStatus, xhr) {
            $('.table-ajax').removeClass('loading');
            $('#result-table').html(response);
        },
        error: function(xhr, textStatus, errorThrown) {
        }
    });
  }
  loadTable();

  $("#form-tambah-customer").submit(function(){
      var form = $(this);
      var mydata = new FormData(this);
      $.ajax({
          type: "POST",
          url: form.attr("action"),
          data: mydata,
          cache: false,
          contentType: false,
          processData: false,
          beforeSend : function(){
              $(".btn-add-customer").addClass("disabled").html("<i class='fa fa-spinner fa-spin'></i>  Processing...").attr('disabled',true);
              form.find(".show-error-add-customer").slideUp().html("");
          },
          success: function(response, textStatus, xhr) {
              // alert(mydata);
             var str = response;
              if (str.indexOf("success") != -1){
                  form.find(".show-error-add-customer").hide().html(response).slideDown("fast");
                  setTimeout(function(){ 
                     $('#modal-add-customer').modal('hide');
                    $("#form-tambah-customer")[0].reset();
                     loadTable(); 
                  }, 500);
                  setTimeout(function(){ 
                    form.find(".show-error-add-customer").slideUp().html("");
                  }, 2000);
                  $(".btn-add-customer").removeClass("disabled").html('<i class="fa fa-save"></i> Simpan').attr('disabled',false);
              }else{
                  form.find(".show-error-add-customer").hide().html(response).slideDown("fast");
                  $(".btn-add-customer").removeClass("disabled").html('<i class="fa fa-save"></i> Simpan').attr('disabled',false);
                  
              }
          },
          error: function(xhr, textStatus, errorThrown) {
            console.log(xhr);
              $(".btn-add-customer").removeClass("disabled").html('<i class="fa fa-save"></i> Simpan').attr('disabled',false);
              form.find(".show-error-add-customer").hide().html(xhr).slideDown("fast");

          }
      });
      return false;

  });

  function hapus(id) {
    if (confirm('Apakah anda yakin ingin menghapus data ini ?')) {
      $.ajax({
          type: "POST",
          url: '<?= base_url('crud-ajax/hapus') ?>/'+id,
          cache: false,
          contentType: 'text',
          processData: false,
          beforeSend : function(){
            $('.table-ajax').addClass('loading');
          },
          success: function(response, textStatus, xhr) {
            loadTable();
          },
          error: function(xhr, textStatus, errorThrown) {
          }
      });
    } else {
      return false;
    }
  }

  function edit(id) {
    $.ajax({
          type: "POST",
          url: '<?= base_url('crud-ajax/ajaxGetModalCustomer') ?>/'+id,
          cache: false,
          contentType: 'text',
          processData: false,
          beforeSend : function(){
            $('#modal-edit-customer').modal('show');
            $('#result-edit-customer').html('<center><i class="fa fa-spin fa-spinner"></i> Loading...</center>');
          },
          success: function(response, textStatus, xhr) {
            $('#result-edit-customer').html(response);
          },
      });
  }
</script>