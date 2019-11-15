


    <form method="POST" action="<?= base_url('master/Master_produk/store') ?>" id="upload-create" enctype="multipart/form-data">

                <div class="show_error"></div><div class="form-group">

                      <label for="form-nama_produk">Nama Produk</label>

                      <input type="text" class="form-control" id="form-nama_produk" placeholder="Masukan Nama Produk" name="dt[nama_produk]">

                  </div><div class="form-group">

                      <label for="form-ket_produk">Ket Produk</label>

                      <input type="text" class="form-control" id="form-ket_produk" placeholder="Masukan Ket Produk" name="dt[ket_produk]">

                  </div><div class="form-group">

                      <label for="form-harga_produksi">Harga Produksi</label>

                      <input type="text" class="form-control" id="form-harga_produksi" placeholder="Masukan Harga Produksi" name="dt[harga_produksi]">

                  </div><div class="form-group">

                      <label for="form-harga_jual">Harga Jual</label>

                      <input type="text" class="form-control" id="form-harga_jual" placeholder="Masukan Harga Jual" name="dt[harga_jual]">

                  </div><div class="form-group">

                      <label for="form-file">File</label>

                      <input type="file" class="form-control" id="form-file" placeholder="Masukan File" name="file">

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

                           // window.location.href = "<?= base_url('master/Master_produk') ?>";
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