  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        CRUD API
        <small>Generator</small>
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
            <?php 
            $config = $this->config->config;
            // print_r($config);
            ?>
            <!-- /.box-header -->
            <div class="box-body">
                <h5><b>CONFIG</b></h5>
                <table class="table table-hover">
                  <thead>
                    <tr>
                      <th>PREFIX</th>
                      <th>DESC</th>
                      <th>VALUE</th>
                    </tr>
                  </thead>
                  <tbody>
                    
                    <tr>
                      <td>rest_auth</td>
                      <td>Tipe Auth</td>
                      <td>
                        <?= $config['rest_auth'] ?>
                      </td>
                    </tr>
                    <tr>
                      <td>rest_valid_logins</td>
                      <td>Akun auth</td>
                      <td>
                        <ul>
                          <?php
                          foreach ($config['rest_valid_logins'] as $key => $value) {
                          echo "<li>".$key." , ".$value."</li>";
                            # code...
                          }
                          ?>
                          
                        </ul>
                      </td>
                    </tr>
                    <tr>
                      <td>rest_key_name</td>
                      <td>nama key api</td>
                      <td>
                        <?= $config['rest_key_name'] ?>
                      </td>
                    </tr>
                    <tr>
                      <td>value rest_key_name</td>
                      <td>key api</td>
                      <td>
                        <?php 
                       $a =  $this->mymodel->selectData($config['rest_keys_table']);
                        ?>
                        <?php
                          foreach ($a as $key => $value) {
                          echo "<li>".$value[$config['rest_key_column']]."</li>";
                            # code...
                          }
                          ?>
                      </td>
                    </tr>
                    <tr>
                      <td>allowed_cors_methods</td>
                      <td>Method yang di ijinkan</td>
                      <td>
                        <?php 
                       $a =  $config['allowed_cors_methods'];
                        ?>
                        <?php
                          foreach ($a as $key => $value) {
                          echo "<li>".$value."</li>";
                            # code...
                          }
                          ?>
                      </td>
                    </tr>

                    
                  </tbody>
                </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->

          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>

