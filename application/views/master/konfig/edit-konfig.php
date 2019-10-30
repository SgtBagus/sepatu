

  <!-- Content Wrapper. Contains page content -->

  <div class="content-wrapper">

    <!-- Content Header (Page header) -->

    <section class="content-header">

      <h1>

        Konfig

        <small>Master</small>

      </h1>

      <ol class="breadcrumb">

        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>

        <li><a href="#">master</a></li>

        <li class="active">Konfig</li>

      </ol>

    </section>

    <!-- Main content -->

    <section class="content">

    <form method="POST" action="<?= base_url('master/Konfig/update') ?>" id="upload-create" enctype="multipart/form-data">

    <input type="hidden" name="id" value="<?= $konfig['id'] ?>">





      <div class="row">

        <div class="col-xs-8">

          <div class="box">

            <!-- /.box-header -->

            <div class="box-header">

              <h5 class="box-title">

                  Edit Konfig

              </h5>

            </div>

            <div class="box-body">

                <div class="show_error"></div><div class="form-group">

                      <label for="form-slug">Slug</label>

                      <input type="text" class="form-control" id="form-slug" placeholder="Masukan Slug" name="dt[slug]" value="<?= $konfig['slug'] ?>">

                  </div><div class="form-group">

                      <label for="form-value">Value</label>

                      <input type="text" class="form-control" id="form-value" placeholder="Masukan Value" name="dt[value]" value="<?= $konfig['value'] ?>">

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
        <div class="col-md-4">
          <div class="box box-solid" style="max-width: 300px;">
            <div class="box-body no-padding">
                <table id="layout-skins-list" class="table table-striped bring-up nth-2-center">
                    <thead>
                    <tr>
                        <th style="width: 210px;">Skin Class</th>
                        <th>Preview</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td><code>skin-blue</code></td>
                        <td>
                            <a href="#" data-skin="skin-blue" class="btn btn-primary btn-xs"><i class="fa fa-eye"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td><code>skin-blue-light</code></td>
                        <td>
                            <a href="#" data-skin="skin-blue-light" class="btn btn-primary btn-xs"><i class="fa fa-eye"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td><code>skin-yellow</code></td>
                        <td><a href="#" data-skin="skin-yellow" class="btn btn-warning btn-xs"><i class="fa fa-eye"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td><code>skin-yellow-light</code></td>
                        <td>
                            <a href="#" data-skin="skin-yellow-light" class="btn btn-warning btn-xs"><i class="fa fa-eye"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td><code>skin-green</code></td>
                        <td><a href="#" data-skin="skin-green" class="btn btn-success btn-xs"><i class="fa fa-eye"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td><code>skin-green-light</code></td>
                        <td>
                            <a href="#" data-skin="skin-green-light" class="btn btn-success btn-xs"><i class="fa fa-eye"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td><code>skin-purple</code></td>
                        <td>
                            <a href="#" data-skin="skin-purple" class="btn bg-purple btn-xs"><i class="fa fa-eye"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td><code>skin-purple-light</code></td>
                        <td>
                            <a href="#" data-skin="skin-purple-light" class="btn bg-purple btn-xs"><i class="fa fa-eye"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td><code>skin-red</code></td>
                        <td><a href="#" data-skin="skin-red" class="btn btn-danger btn-xs"><i class="fa fa-eye"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td><code>skin-red-light</code></td>
                        <td>
                            <a href="#" data-skin="skin-red-light" class="btn btn-danger btn-xs"><i class="fa fa-eye"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td><code>skin-black</code></td>
                        <td><a href="#" data-skin="skin-black" class="btn bg-black btn-xs"><i class="fa fa-eye"></i></a>
                        </td>
                    </tr>
                    <tr>
                        <td><code>skin-black-light</code></td>
                        <td>
                            <a href="#" data-skin="skin-black-light" class="btn bg-black btn-xs"><i class="fa fa-eye"></i></a>
                        </td>
                    </tr>
                    </tbody>
                </table>
            </div><!-- /.box-body -->
        </div>
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

                           window.location.href = "<?= base_url('master/Konfig') ?>";

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