

  <!-- Content Wrapper. Contains page content -->



    <form method="POST" action="<?= base_url('master/Tbl_kelurahan/update') ?>" id="upload-create" enctype="multipart/form-data">

    <input type="hidden" name="id" value="<?= $tbl_kelurahan['id'] ?>">



                <div class="show_error"></div><div class="form-group">

                      <label for="form-kecamatan_id">Kecamatan Id</label>

                      <input type="text" class="form-control" id="form-kecamatan_id" placeholder="Masukan Kecamatan Id" name="dt[kecamatan_id]" value="<?= $tbl_kelurahan['kecamatan_id'] ?>">

                  </div><div class="form-group">

                      <label for="form-kelurahan">Kelurahan</label>

                      <input type="text" class="form-control" id="form-kelurahan" placeholder="Masukan Kelurahan" name="dt[kelurahan]" value="<?= $tbl_kelurahan['kelurahan'] ?>">

                  </div><div class="form-group">

                      <label for="form-kd_pos">Kd Pos</label>

                      <input type="text" class="form-control" id="form-kd_pos" placeholder="Masukan Kd Pos" name="dt[kd_pos]" value="<?= $tbl_kelurahan['kd_pos'] ?>">

                  </div>
                <hr>

                <button type="submit" class="btn btn-primary btn-send" ><i class="fa fa-save"></i> Save</button>

                <button type="reset" class="btn btn-danger"><i class="fa fa-refresh"></i> Reset</button>

             

           
      </form>


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

                          // window.location.href = "<?= base_url('master/Tbl_kelurahan') ?>";
                          $("#load-table").html('');
                          loadtable($("#select-status").val());
                          $("#modal-form").modal('hide');

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