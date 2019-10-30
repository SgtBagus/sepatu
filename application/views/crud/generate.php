  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        GENERATE
        <small></small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Tables</a></li>
        <li class="active">Data tables</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <!-- <div class="box-header">
              <h3 class="box-title">
    
              </h3>
            </div> -->
            <!-- /.box-header -->
            <form action="<?= base_url('crud/save_generate') ?>" method="POST">
            <div class="box-body">
              <?php 
              $json = json_encode($_POST);
              $name_table = $_POST['table'];
              $controller = $_POST['controller'];
              $collum = $_POST['collum'];
              
              $type = $_POST['type'];


              ?>
              <textarea name="json" class="hide"><?= $json ?></textarea>
              <div class="row">
                <div class="col-md-5">
                  <?php if(in_array("SELECT OPTION", $type)){ ?>
                  <table class="table table-condenseed table-bordered">
                    <caption><i class="fa fa-cogs"></i> Setting Form Select option</caption>
                    <thead>
                      <tr>
                        <th>COLUMN_NAME</th>
                        <th>TABLE</th>
                        <th>OPTION</th>
                        <th>VALUE</th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php 
                      $i=0;
                      foreach ($collum as $kolom) {
                      // $type = $_POST['type'][$i];
                      if($type[$i]=="SELECT OPTION"){
                      ?>
                      <tr>
                        <td><?= $kolom ?></td>
                        <td>
                          <?php 
                          $query = "SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA='".$this->db->database."'";
                          $tables = $this->mymodel->selectWithQuery($query);
                         ?>
                          <select onchange="loadtable(this.value,'<?= $kolom ?>')" name="kolom[]" required>
                            <option value=""></option>
                          <?php 
                            foreach ($tables as $table) {
                           ?>
                            <option value="<?= $table['TABLE_NAME'] ?>"><?= $table['TABLE_NAME'] ?></option>
                          <?php } ?>
                          </select>
                        </td>
                        <td>
                          <select id="<?= $kolom ?>-option" name="option[]" required></select>
                        </td>
                        <td>
                          <select id="<?= $kolom ?>-value" name="value[]" required></select>
                          
                        </td>
                      </tr>
                      <?php } $i++; } ?>

                    </tbody>
                  </table>
                  <?php } ?>
                  <button class="btn btn-success btn-flat"><i class="fa fa-download"></i> SAVE FILE</button>
                   <h5>Generate</h5>
                  <ul>
                    <li>Ganti permmision folder menjadi 777</li>
                    <li>./aplications/controller/master/<?=$controller?></li>
                    <li>./aplications/view/master/<?= strtolower($name_table) ?>/all-<?= strtolower($name_table) ?>.php</li>
                    <li>./aplications/view/master/<?= strtolower($name_table) ?>/add-<?= strtolower($name_table) ?>.php</li>
                    <li>./aplications/view/master/<?= strtolower($name_table) ?>/edit-<?= strtolower($name_table) ?>.php</li>


                  </ul>

                </div>
              </div>
            </div>
            </form>
          </div>
        </div>
      </div>
    </section>
  </div>

  <script type="text/javascript">
    function loadtable(table,kolom) {
      $.getJSON("<?= base_url('crud/get_kolom/') ?>"+table, function(jsonData){
           $("#"+kolom+"-option").empty();
           $("#"+kolom+"-value").empty();
           cb = '';
           $.each(jsonData, function(i,data){
               cb+='<option value="'+data.value+'">'+data.value+'</option>';
           });
           $("#"+kolom+"-option").append(cb);
           $("#"+kolom+"-value").append(cb);

      });
    }
  </script>