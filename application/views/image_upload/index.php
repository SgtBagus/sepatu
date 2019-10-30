<style>
#myBar {
  width: 100%;
  background-color: #ddd;
}

#myProgress {
  width: 1%;
  height: 30px;
  background-color: #4CAF50;
}
</style>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Image Upload
        <small>Control panel</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-cloud-upload"></i> Home</a></li>
        <li class="active">Image Upload</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <!-- /.row -->
      <!-- Main row -->
      <div class="row">
        <section class="col-lg-12 col-md-12 col-xs-12">
          <div class="row">
            <div class="col-md-12">
              <div class="box box-primary">
                <div class="box-header">
                  <div class="col-lg-6">
                    <h4>Image Upload With Async</h4>  
                  </div>
                  <div class="col-lg-6">
                    <button style="float: right; color: white;" type="button" class="btn btn-primary btn-default" data-toggle="modal" data-target="#uploadmodal">
                      <i class="fa fa-upload">Upload Image</i>
                    </button>
                  </div>
                </div>
                <div class="box-body">
                  <table></table>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
      <!-- /.row (main row) -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

<!-- Modal -->
<div id="uploadmodal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Upload Image</h4>
      </div>
      <div class="modal-body">
        <?php if($this->session->flashdata('message')!=""){ ?>
        <div class="alert alert-<?= @$this->session->flashdata('class') ?>">
          <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
          <?php echo $this->session->flashdata('message') ?>
        </div>
        <?php } ?>
        <div class="col-xs-4" style="border-left: solid; border-top: solid; border-right: solid; border-bottom: solid;padding:12px !important;position:relative;">
          <form method="post" id="upload_form" align="center" enctype="multipart/form-data">
            <button type="button" class="btn btn-fill" onclick="unlinkImage(1)" style="position: absolute;border-radius: 100%;height: 40px;width: 40px;top: -21px;padding: 0;right: -10px;z-index:99999999;"><i class="fa fa-minus"></i></button>
            <img src="http://simpleicon.com/wp-content/uploads/cloud-upload-1.png" id="img_1_l" style="width: 100%; height: 120px;">
            <div class="btn btn-default btn-file btn-block btn-sm">
              <label>Upload File</label>
            <input type="file" class="input_img u_photo" id="img_1" onchange="readURL(this,this.id)"  required="" data-target="#img_1_l" name="file" data-number="1" style="cursor: pointer;margin-top: 5px;">
            </div>
          </form>
        </div>
        <div class="col-xs-8">
          <div id="myBar" style="display: none;">
            <div id="myProgress"><div id="angka" style="color: #fff;"></div></div>
          </div>
          <h4>File Name :</h4>
          <input type="text" class="form-control" id='text_1' name="img_txt" readonly="">
        </div>
        <br><br><br>
        <br><br><br><br><br>
      </div>
      <br>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
<!-- end modal -->

<script>
  function readURL(input,id) {
    if (input.files && input.files[0]) {
      var reader = new FileReader();

      reader.onload = function(e) {
        $('#'+id+'_l').attr('src', e.target.result);
      }

      reader.readAsDataURL(input.files[0]);
    }
  }

  $(document).on('change','.u_photo',function(e){
    var number = $('#'+this.id).attr('data-number');
    var fileold = './'+$("#text_"+number).val();
    e.preventDefault();
    var bar = $('#mybar');
    var percent = $('#myProgress');
    var angka = $('#angka');
    var link="<?= base_url('UploadImage/uploadAjax/') ?>";
    var form_data = new FormData();  
    form_data.append("file", $("#img_"+number).prop("files")[0]);  
    form_data.append("fileold", fileold);  
    $.ajax({
      url: link,
      type: 'POST',
      processData: false, // important
      contentType: false, // important
      dataType : 'text',
      data: form_data,
      beforeSend: function() {
        var percentVal = '0%';
        bar.width(percentVal);
        percent.width(percentVal);
        angka.html(percentVal);
      },
      uploadProgress: function(event, position, total, percentComplete) {
        $('#myBar').show();
        var percentVal = percentComplete + '%';
        bar.width(percentVal)
        percent.width(percentVal);
        angka.html(percentVal);
      },
      success: function(response){
        $('#myBar').show();
        $('#text_'+number).val(response);
        bar.width("100%");
        percent.width("100%");
        angka.html("100%");
      }
    });
  });

  function unlinkImage(number) {
    var link="<?= base_url('UploadImage/ajaxImageUnlink/') ?>";
    var file = './'+$('#text_'+number).val();
    $.ajax({
      url: link,
      type: 'POST',
      data: {"file":file},
      success: function(response){  
        $('#text_'+number).val('');
        $('#img_'+number+'_l').attr('src','http://simpleicon.com/wp-content/uploads/cloud-upload-1.png');
        $('#myBar').hide();
      }
    });
  }
</script>