
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Condition
        <small>Master</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">master</a></li>
        <li class="active">Condition</li>
      </ol>
    </section>
    <!-- Main content -->
    <section class="content">
    <form method="POST" action="<?= base_url('master/Condition/update') ?>" id="upload-create" enctype="multipart/form-data">
    <input type="hidden" name="" value="<?= $condition[''] ?>">


      <div class="row">
        <div class="col-xs-8">
          <div class="box">
            <!-- /.box-header -->
            <div class="box-header">
              <h5 class="box-title">
                  Edit Condition
              </h5>
            </div>
            <div class="box-body">
                <div class="show_error"></div><div class="form-group">
                      <label for="form-co_id">Co Id</label>
                      <input type="text" class="form-control" id="form-co_id" placeholder="Masukan Co Id" name="dt[co_id]" value="<?= $condition['co_id'] ?>">
                  </div><div class="form-group">
                      <label for="form-co_name">Co Name</label>
                      <input type="text" class="form-control" id="form-co_name" placeholder="Masukan Co Name" name="dt[co_name]" value="<?= $condition['co_name'] ?>">
                  </div><?php
                  if($file['dir']!=""){
                  $types = explode("/", $file['mime']);
                  if($types[0]=="image"){
                  ?>
                    <img src="<?= base_url($file['dir']) ?>" style="width: 200px" class="img img-thumbnail">
                    <br>
                  <?php }else{ ?>
                    
                    <i class="fa fa-file fa-5x text-danger"></i>
                    <br>
                    <a href="<?= base_url($file['dir']) ?>" target="_blank"><i class="fa fa-download"></i> <?= $file['name'] ?></a>
                    <br>
                  <br>
                <?php } ?>
                <?php } ?><div class="form-group">
                      <label for="form-file">File</label>
                      <input type="file" class="form-control" id="form-file" placeholder="Masukan File" name="file">
                  </div></div>
            <div class="box-footer">
                <button type="submit" class="btn btn-primary btn-send" ><i class="fa fa-save"></i> Save</button>
                <button type="reset" class="btn btn-danger"><i class="fa fa-refresh"></i> Reset</button>
             
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->

          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
      </form>

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <script type="text/javascript">
      $("#upload-create").submit(function(){
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
                    $(".btn-send").addClass("disabled").html("<i class='la la-spinner la-spin'></i>  Processing...").attr('disabled',true);
                    form.find(".show_error").slideUp().html("");
                },
                success: function(response, textStatus, xhr) {
                    // alert(mydata);
                   var str = response;
                    if (str.indexOf("success") != -1){
                        form.find(".show_error").hide().html(response).slideDown("fast");
                        setTimeout(function(){ 
                           window.location.href = "<?= base_url('master/Condition') ?>";
                        }, 1000);
                        $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled',false);


                    }else{
                        form.find(".show_error").hide().html(response).slideDown("fast");
                        $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled',false);
                        
                    }
                },
                error: function(xhr, textStatus, errorThrown) {
                  console.log(xhr);
                    $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled',false);
                    form.find(".show_error").hide().html(xhr).slideDown("fast");

                }
            });
            return false;
    
        });
  </script>