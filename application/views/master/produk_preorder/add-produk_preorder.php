

  <!-- Content Wrapper. Contains page content -->

  <div class="content-wrapper">

    <!-- Content Header (Page header) -->

    <section class="content-header">

      <h1>

        Produk Preorder

        <small>Master</small>

      </h1>

      <ol class="breadcrumb">

        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>

        <li><a href="#">master</a></li>

        <li class="active">Produk Preorder</li>

      </ol>

    </section>

    <!-- Main content -->

    <section class="content">

    <form method="POST" action="<?= base_url('master/Produk_preorder/store') ?>" id="upload-create" enctype="multipart/form-data">



      <div class="row">

        <div class="col-xs-8">

          <div class="box">

            <!-- /.box-header -->

            <div class="box-header">

              <h5 class="box-title">

                  Tambah Produk Preorder

              </h5>

            </div>

            <div class="box-body">

                <div class="show_error"></div><div class="form-group">

                      <label for="form-id_suplier">Id Suplier</label>

                      <select name="dt[id_suplier]" class="form-control select2">

                        <?php 

                        $suplier = $this->mymodel->selectWhere('suplier',null);

                        foreach ($suplier as $suplier_record) {

                          echo "<option value=".$suplier_record['id'].">".$suplier_record['nama_suplier']."</option>";

                        }

                        ?>

                      </select>

                  </div><div class="form-group">

                      <label for="form-id_kategori">Id Kategori</label>

                      <select name="dt[id_kategori]" class="form-control select2">

                        <?php 

                        $master_kategori_produk = $this->mymodel->selectWhere('master_kategori_produk',null);

                        foreach ($master_kategori_produk as $master_kategori_produk_record) {

                          echo "<option value=".$master_kategori_produk_record['id'].">".$master_kategori_produk_record['nama_kategori']."</option>";

                        }

                        ?>

                      </select>

                  </div><div class="form-group">

                      <label for="form-id_bahanbaku">Id Bahanbaku</label>

                      <select name="dt[id_bahanbaku]" class="form-control select2">

                        <?php 

                        $master_bahanbaku = $this->mymodel->selectWhere('master_bahanbaku',null);

                        foreach ($master_bahanbaku as $master_bahanbaku_record) {

                          echo "<option value=".$master_bahanbaku_record['id'].">".$master_bahanbaku_record['nama_bahanbaku']."</option>";

                        }

                        ?>

                      </select>

                  </div><div class="form-group">

                      <label for="form-kode_barang">Kode Barang</label>

                      <input type="text" class="form-control" id="form-kode_barang" placeholder="Masukan Kode Barang" name="dt[kode_barang]">

                  </div><div class="form-group">

                      <label for="form-nama_produk">Nama Produk</label>

                      <input type="text" class="form-control" id="form-nama_produk" placeholder="Masukan Nama Produk" name="dt[nama_produk]">

                  </div><div class="form-group">

                      <label for="form-ket_produk">Ket Produk</label>

                      <textarea name="dt[ket_produk]" class="form-control"></textarea>

                  </div><div class="form-group">

                      <label for="form-harga_produksi">Harga Produksi</label>

                      <input type="text" class="form-control" id="form-harga_produksi" placeholder="Masukan Harga Produksi" name="dt[harga_produksi]">

                  </div><div class="form-group">

                      <label for="form-harga_jual">Harga Jual</label>

                      <input type="text" class="form-control" id="form-harga_jual" placeholder="Masukan Harga Jual" name="dt[harga_jual]">

                  </div><div class="form-group">

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

                           window.location.href = "<?= base_url('master/Produk_preorder') ?>";

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