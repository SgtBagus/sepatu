

  <!-- Content Wrapper. Contains page content -->

  <div class="content-wrapper">

    <!-- Content Header (Page header) -->

    <section class="content-header">

      <h1>

        Report

        <small>Master</small>

      </h1>

      <ol class="breadcrumb">

        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>

        <li><a href="#">master</a></li>

        <li class="active">Report</li>

      </ol>

    </section>

    <!-- Main content -->

    <section class="content">

    <form method="POST" action="<?= base_url('master/Report/update') ?>" id="upload-create" enctype="multipart/form-data">

    <input type="hidden" name="id" value="<?= $report['id'] ?>">





      <div class="row">

        <div class="col-md-4">

          <div class="box">

            <!-- /.box-header -->

            <div class="box-header">

              <h5 class="box-title">

                  Edit Report

              </h5>

            </div>

            <div class="box-body">

                <div class="show_error"></div><div class="form-group">

                      <label for="form-name">Name</label>

                      <input type="text" class="form-control" id="form-name" placeholder="Masukan Name" name="dt[name]" value="<?= $report['name'] ?>">

                  </div>
                  <div class="form-group">

                      <label for="form-query">Query</label>

                      <textarea name="dt[query]" class="form-control" rows="4"><?= $report['query'] ?></textarea>
                      <span><i class="fa fa-bell"></i> Check your query first , example : <br> <b>SELECT * FROM ({yourquery})</b></span>	


                  </div>
                  <?php 
                  $array = $this->mymodel->selectDataone("(".$report['query'].") as data",[]);
                  $header = array_keys($array);

                  // print_r($header);
                 ?>
                  <h5><b>Column</b></h5>
                  <ul class="list-group" id="urutkan">
                    <?php 
                    $h = json_decode($report['header']);
                    $jsonheader = array();
                    foreach ($header as $head) {
                      if(@in_array($head, $h)) $jsonheader[] =  $head;
                    ?>
                    <li class="list-group-item" style="padding: 0px 15px !important;">
                      <div class="checkbox">
                        <label>
                            <input type="checkbox" value="<?= $head ?>" name="header[]" <?php if(@in_array($head, $h)) echo 'checked'; ?>>
                          <?= $head ?>
                        </label>
                      </div>
                    </li>
                  <?php } ?>
                  </ul>
                  
                </div>

            <div class="box-footer">

                <button type="submit" class="btn btn-primary btn-send" ><i class="fa fa-save"></i> Save</button>

                <button type="reset" class="btn btn-danger"><i class="fa fa-refresh"></i> Reset</button>

             

            </div>

            <!-- /.box-body -->

          </div>

          <!-- /.box -->



          <!-- /.box -->

        </div>
        <div class="col-md-8">  
          <div class="panel panel-info">
            <div class="panel-heading">
              <h3 class="panel-title">Example Table 10 data</h3>
            </div>
            <div class="panel-body">
              <div class="table-responsive">
              <table class="table table-hover table-bordered datatable">
                <thead>
                  <tr class="bg-success">
                    <th>No</th>
                    <?php 
                    foreach ($jsonheader as $head) {
                    ?>
                      <th><?= ucfirst(str_replace("_", " ", $head)) ?></th>
                    <?php } ?>
                  </tr>
                </thead>
                <tbody>

                <?php
                  $this->db->limit(10);
                  $record = $this->mymodel->selectData("(".$report['query'].") as data");
                  $i=1;
                 foreach ($record as $rec) { ?>
                  <tr>
                    <td><?= $i ?></td>
                    <?php 
                    foreach ($jsonheader as $head) {
                    ?>
                      <td><?= $rec[$head] ?></td>
                    <?php } ?>
                  </tr>
                <?php $i++; } ?>
                </tbody>
              </table>
              </div>
              <a href="<?= base_url('master/report/generate/'.$report['id']) ?>" class="btn btn-danger btn-block"><i class="fa fa-refresh"></i> GENERATE REPORT</a>
            </div>
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

// $( "#urutkan" ).sortable();
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

                           window.location.href = "<?= base_url('master/report/edit/'.$report['id']) ?>";

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
