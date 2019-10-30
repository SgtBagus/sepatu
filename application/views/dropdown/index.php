
<script type="text/javascript" src="<?= base_url('assets/tinymce/js/tinymce/tinymce.min.js') ?>"></script>
 <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Dropdown
        <small>Generator</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dropdown Generator</li>
      </ol>
    </section>
    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <!-- /.box-header -->
            <div class="box-body">
              <div class="row">
                  <div class="col-md-4">
                    <?php 
                    $name_table = @$_GET['table'];
                    $query = "SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='".$this->db->database."'";
                    $tables = $this->mymodel->selectWithQuery($query);
                   ?>
                   <small>Table <span class="text-danger">*</span></small>
                    <select class="form-control" onchange="loadtable(this.value)">
                      <option value="">Pilih Table</option>
                    <?php 
                      foreach ($tables as $table) {
                        if($table['TABLE_NAME']=="file" OR $table['TABLE_NAME']=="site" OR $table['TABLE_NAME']=="user" OR $table['TABLE_NAME']=="role" OR $table['TABLE_NAME']=="access_control" OR $table['TABLE_NAME']=="access" OR $table['TABLE_NAME']=="menu_master"){
                        }else{
                     ?>
                      <option value="<?= $table['TABLE_NAME'] ?>" <?php if($name_table==$table['TABLE_NAME']) echo "selected"; ?>><?= $table['TABLE_NAME'] ?></option>
                    <?php } } ?>
                    </select>
                  </div>
                </div>
                <hr>
                <?php 
                if(!empty($name_table)){ 
                  $structure_query = "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA='".$this->db->database."' AND TABLE_NAME='".$name_table."'";
                  $structure = $this->mymodel->selectWithQuery($structure_query);
                ?>
                  <div class="row">
                    <div class="col-md-3">
                      <form action="<?= base_url('dropdown/generate') ?>" id="form-generate">
                        <input type="hidden" name="table" value="<?= $name_table ?>">
                      <div class="form-group">
                        <label>Name</label>
                        <input type="text" class="form-control" name="name">
                      </div>
                      <div class="form-group">
                        <label>Value</label>
                        <select name="value" class="form-control" id="" required>
                          <?php foreach ($structure as $key => $value): ?>
                            <option value="<?= $value['COLUMN_NAME'] ?>"><?= $value['COLUMN_NAME'] ?></option>
                          <?php endforeach ?>
                        </select>
                      </div>
                      <div class="form-group">
                        <label>Option</label>
                        <select name="option" class="form-control" id="" required="">
                          <?php foreach ($structure as $key => $value): ?>
                            <option value="<?= $value['COLUMN_NAME'] ?>"><?= $value['COLUMN_NAME'] ?></option>
                          <?php endforeach ?>
                        </select>
                      </div>
                      <button class="btn btn-danger btn-generate" type="submit"><i class="fa fa-cog"></i> GENERATE</button>
                      </form>
                    </div>
                    <div class="col-md-9">
                      <figure>
                        <figcaption>Code</figcaption>
                        <pre>
                          <code id="result-generate"></code>
                        </pre>
                      </figure>
                    </div>
                  </div>
                <?php } ?>
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
  <script>
    function loadtable(val) {
      // body...
      window.location.href = "<?= base_url('dropdown?table=') ?>"+val;
    }

    $("#form-generate").submit(function(){
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
              $(".btn-generate").addClass("disabled").html("<i class='fa fa-spinner fa-spin'></i>  Processing...").attr('disabled',true);
              form.find(".show-error-generate").slideUp().html("");
          },
          success: function(response, textStatus, xhr) {
            $('#result-generate').html(response);
              $(".btn-generate").removeClass("disabled").html('<i class="fa fa-cog"></i> GENERATE').attr('disabled',false);
          },
          error: function(xhr, textStatus, errorThrown) {
            console.log(xhr);
          }
      });
      return false;
  });
  </script>