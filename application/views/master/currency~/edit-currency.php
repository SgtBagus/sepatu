
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Currency
        <small>Master</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">master</a></li>
        <li class="active">Currency</li>
      </ol>
    </section>
    <!-- Main content -->
    <section class="content">
    <form method="POST" action="<?= base_url('master/Currency/update') ?>" id="upload-create" enctype="multipart/form-data">
    <input type="hidden" name="cu_id" value="<?= $currency['cu_id'] ?>">


      <div class="row">
        <div class="col-xs-8">
          <div class="box">
            <!-- /.box-header -->
            <div class="box-header">
              <h5 class="box-title">
                  Edit Currency
              </h5>
            </div>
            <div class="box-body">
                <div class="show_error"></div><div class="form-group">
                      <label for="form-cu_name">Cu Name</label>
                      <input type="text" class="form-control" id="form-cu_name" placeholder="Masukan Cu Name" name="dt[cu_name]" value="<?= $currency['cu_name'] ?>">
                  </div><div class="form-group">
                      <label for="form-cu_rate">Cu Rate</label>
                      <input type="text" class="form-control" id="form-cu_rate" placeholder="Masukan Cu Rate" name="dt[cu_rate]" value="<?= $currency['cu_rate'] ?>">
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
                           window.location.href = "<?= base_url('master/Currency') ?>";
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