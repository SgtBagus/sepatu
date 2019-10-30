  <link rel="stylesheet" href="<?= base_url('assets/plugins/bootstrap-tagsinput/') ?>bootstrap-tagsinput.css">
  <script src="<?= base_url('assets/plugins/bootstrap-tagsinput/') ?>bootstrap-tagsinput.min.js"></script>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Form Input
        <small></small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Plugin</a></li>
        <li class="active">Form Input</li>
      </ol>
    </section>
    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <!-- /.box-header -->
            <div class="box-body">
              <h4 style="border-bottom: 1px solid #ddd;padding-bottom: 10px;">Auto Complete</h4>
              <div class="row">
                <div class="col-md-3">
                  <div class="form-group">
                    <label>Nama (Auto Complete)</label>
                    <input type="text" class="form-control txt-autocomplete" id="get-customer">
                    <button type="button" class="btn btn-danger btn-xs" style="display: none;" id="reset-autocomplete" onclick="resetAutocomplete()"><i class="fa fa-refresh"></i> Reset</button>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="form-group">
                    <label>Email</label>
                    <input type="text" class="form-control txt-autocomplete" id="get-email">
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="form-group">
                    <label>Telp</label>
                    <input type="text" class="form-control txt-autocomplete" id="get-telp">
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="form-group">
                    <label>Alamat</label>
                    <input type="text" class="form-control txt-autocomplete" id="get-alamat">
                  </div>
                </div>
              </div>
              <br>

              <h4 style="border-bottom: 1px solid #ddd;padding-bottom: 10px;">Tags Input</h4>
              <?php 
              $res = '';
              $customer = $this->mymodel->selectWhere('customer',array('status'=>'ENABLE'));
              foreach ($customer as $key => $value) {
                if ($key>0) {
                  $res .= ',';
                }
                $res .= $value['nama'];
              }
              ?>
              <div class="row">
                <div class="col-md-4">
                  <div class="form-group">
                    <label>Nama</label>
                    <input type="text" class="form-control" data-role="tagsinput" value="<?= $res ?>">
                    <a href="https://bootstrap-tagsinput.github.io/bootstrap-tagsinput/examples/" target="_blank">Dokumentasi</a>
                  </div>
                </div>
              </div>
              <br>

              <h4 style="border-bottom: 1px solid #ddd;padding-bottom: 10px;">Harga (Thousand Separator)</h4>
              <div class="row">
                <div class="col-md-4  ">
                  <div class="form-group">
                    <label>Harga</label>
                    <input type="text" class="form-control rupiah" value="<?= $this->template->rupiah(2000000) ?>">
                  </div>
                </div>
              </div>
              <br>

              <h4 style="border-bottom: 1px solid #ddd;padding-bottom: 10px;">Kalender</h4>
              <div class="row">
                <div class="col-md-4">
                  <div class="form-group">
                    <label>Tanggal</label>
                    <input type="text" class="form-control tgl" autocomplete="off" value="">
                  </div>
                </div>
              </div>
              <br>

              <h4 style="border-bottom: 1px solid #ddd;padding-bottom: 10px;">Dropdown (Tambah data ajax)</h4>
              <div class="form-group">
                <label>Customer</label>
                <div class="row">
                  <div class="col-md-4">
                    <select name="" id="dd-customer" class="form-control select2">
                      <option value="">--Pilih Customer--</option>
                    </select>
                  </div>
                  <div class="col-md-8">
                    <button type="button" data-toggle="modal" data-target="#modal-add-customer" class="btn btn-success btn-flat"><i class="fa fa-plus"></i></button>
                  </div>
                </div>
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
        <h4 class="modal-title">Tambah Customer Baru</h4>
      </div>
      <form action="<?= base_url('master/Customer/store') ?>" id="form-tambah-customer" enctype="multipart/form-data">
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
        <div class="show-error-add-customer"></div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-dismiss="modal"><i class="fa fa-close"></i> Tutup</button>
        <button type="submit" class="btn btn-primary btn-add-customer"><i class="fa fa-save"></i> Simpan</button>
      </div>
      </form>
    </div>
  </div>
</div>

  <script>
  // start autocomplete
  $(function () {
    $("#get-customer").autocomplete({    //id kode sebagai key autocomplete yang akan dibawa ke source url
      minLength:1, //minimal huruf untuk memunculkan list
      delay:0,
      maxShowItems: 5,
      source: function( request, response ) {
       // Fetch data
       $.ajax({
        url: '<?= base_url('form-input/ajaxGetCustomer') ?>',
        type: 'get',
        dataType: "json",
        data: {
         term: request.term
        },
        success: function( data ) {
         response( data );
        }
       });
      },
      select:function(event, ui){
          $('#get-email').val(ui.item.email);
          $('#get-telp').val(ui.item.telp);
          $('#get-alamat').val(ui.item.alamat);
          $('#reset-autocomplete').show();
      },
      focus: function(event, ui) {
            
        }
      });
  });

  function resetAutocomplete() {
    $('.txt-autocomplete').val('');
    $('#reset-autocomplete').hide();
  }
  // end autocomplete

  // start ajax add dropdown
  function ajaxGetSelectCustomer() {
   $.ajax({
        type: "POST",
        url: '<?= base_url('form-input/ajaxGetSelectCustomer') ?>/',
        cache: false,
        contentType: 'text',
        processData: false,
        beforeSend : function(){
            $('#dd-customer').html('<option>Loading...</option>');
        },
        success: function(response, textStatus, xhr) {
            $('#dd-customer').html(response);
        },
        error: function(xhr, textStatus, errorThrown) {
        }
    });
  }
  ajaxGetSelectCustomer();

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
              $(".btn-add-customer").addClass("disabled").html("<i class='la la-spinner la-spin'></i>  Processing...").attr('disabled',true);
              form.find(".show-error-add-customer").slideUp().html("");
          },
          success: function(response, textStatus, xhr) {
              // alert(mydata);
             var str = response;
              if (str.indexOf("success") != -1){
                  form.find(".show-error-add-customer").hide().html(response).slideDown("fast");
                  setTimeout(function(){ 
                     $('#modal-add-customer').modal('hide');
                     ajaxGetSelectCustomer();
                  }, 1000);
                  $(".btn-add-customer").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled',false);


              }else{
                  form.find(".show-error-add-customer").hide().html(response).slideDown("fast");
                  $(".btn-add-customer").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled',false);
                  
              }
          },
          error: function(xhr, textStatus, errorThrown) {
            console.log(xhr);
              $(".btn-add-customer").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled',false);
              form.find(".show-error-add-customer").hide().html(xhr).slideDown("fast");

          }
      });
      return false;

  });
  // end ajax add dropdown

  </script>