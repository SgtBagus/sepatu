

  <!-- Content Wrapper. Contains page content -->

  <div class="content-wrapper">

    <!-- Content Header (Page header) -->

    <section class="content-header">

      <h1>

        Transaksi Preorder

        <small>Master</small>

      </h1>

      <ol class="breadcrumb">

        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>

        <li><a href="#">master</a></li>

        <li class="active">Transaksi Preorder</li>

      </ol>

    </section>

    <!-- Main content -->

    <section class="content">

    <form method="POST" action="<?= base_url('master/Transaksi_preorder/update') ?>" id="upload-create" enctype="multipart/form-data">

    <input type="hidden" name="id" value="<?= $transaksi_preorder['id'] ?>">





      <div class="row">

        <div class="col-xs-8">

          <div class="box">

            <!-- /.box-header -->

            <div class="box-header">

              <h5 class="box-title">

                  Edit Transaksi Preorder

              </h5>

            </div>

            <div class="box-body">

                <div class="show_error"></div><div class="form-group">

                      <label for="form-kode_transaksi">Kode Transaksi</label>

                      <input type="text" class="form-control" id="form-kode_transaksi" placeholder="Masukan Kode Transaksi" name="dt[kode_transaksi]" value="<?= $transaksi_preorder['kode_transaksi'] ?>">

                  </div><div class="form-group">

                      <label for="form-id_produk_preorder">Id Produk Preorder</label>

                      <select name="dt[id_produk_preorder]" class="form-control select2">

                        <?php 

                        $produk_preorder = $this->mymodel->selectWhere('produk_preorder',null);

                        foreach ($produk_preorder as $produk_preorder_record) {

                          $text="";

                          if($produk_preorder_record['id']==$transaksi_preorder['id_produk_preorder']){

                            $text = "selected";

                          }



                          echo "<option value=".$produk_preorder_record['id']." ".$text." >".$produk_preorder_record['nama_produk']."</option>";

                        }

                        ?>

                      </select>

                  </div><div class="form-group">

                      <label for="form-qty">Qty</label>

                      <input type="text" class="form-control" id="form-qty" placeholder="Masukan Qty" name="dt[qty]" value="<?= $transaksi_preorder['qty'] ?>">

                  </div><div class="form-group">

                      <label for="form-ukuran">Ukuran</label>

                      <input type="text" class="form-control" id="form-ukuran" placeholder="Masukan Ukuran" name="dt[ukuran]" value="<?= $transaksi_preorder['ukuran'] ?>">

                  </div><div class="form-group">

                      <label for="form-warna">Warna</label>

                      <input type="text" class="form-control" id="form-warna" placeholder="Masukan Warna" name="dt[warna]" value="<?= $transaksi_preorder['warna'] ?>">

                  </div><div class="form-group">

                      <label for="form-keterangan">Keterangan</label>

                      <textarea name="dt[keterangan]" class="form-control"><?= $transaksi_preorder['keterangan'] ?></textarea>

                  </div><div class="form-group">

                      <label for="form-harga_satuan">Harga Satuan</label>

                      <input type="text" class="form-control" id="form-harga_satuan" placeholder="Masukan Harga Satuan" name="dt[harga_satuan]" value="<?= $transaksi_preorder['harga_satuan'] ?>">

                  </div><div class="form-group">

                      <label for="form-biaya_lain">Biaya Lain</label>

                      <input type="text" class="form-control" id="form-biaya_lain" placeholder="Masukan Biaya Lain" name="dt[biaya_lain]" value="<?= $transaksi_preorder['biaya_lain'] ?>">

                  </div><div class="form-group">

                      <label for="form-diskon">Diskon</label>

                      <input type="text" class="form-control" id="form-diskon" placeholder="Masukan Diskon" name="dt[diskon]" value="<?= $transaksi_preorder['diskon'] ?>">

                  </div><div class="form-group">

                      <label for="form-harga_total">Harga Total</label>

                      <input type="text" class="form-control" id="form-harga_total" placeholder="Masukan Harga Total" name="dt[harga_total]" value="<?= $transaksi_preorder['harga_total'] ?>">

                  </div><div class="form-group">

                      <label for="form-created_by">Created By</label>

                      <input type="text" class="form-control" id="form-created_by" placeholder="Masukan Created By" name="dt[created_by]" value="<?= $transaksi_preorder['created_by'] ?>">

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

                           window.location.href = "<?= base_url('master/Transaksi_preorder') ?>";

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