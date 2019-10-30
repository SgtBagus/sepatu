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
            <form action="<?= base_url('crud/api_generate') ?>" method="POST">
            <div class="box-body">
            <input type="hidden" name="controller" id="" value="<?= ucfirst($table) ?>">
            <button class="btn btn-success btn-flat"><i class="fa fa-download"></i> SAVE FILE</button>
          <br>
          <h5>Keterangan</h5>
            <ul>
                    <li>Ganti permmision folder menjadi 777</li>
                    <li>Tidak ada upload file hanya crud</li>
                    <li>File : ./aplications/controller/api/<?=$table?>.php</li>
                    <li>
                      Access : <br>
                      <ul>
                        <li>Get all data /api/<?= $table ?>/{status} , method : GET</li>
                        <li>Get detail data /api/<?= $table ?>/detail/{primary} , method :GET</li>
                        <li>Create data /api/<?= $table ?> , method :POST , param : semua kolom kecuali (status,created_at,updated_at) , type : form-data</li>
                        <li>Update data /api/<?= $table ?> , method :PUT , param : semua kolom kecuali (status,created_at,updated_at) , type : x-www-form-urlencoded</li>
                        <li>Delete data /api/<?= $table ?> , method :DELETE , param : id / primary kolom , type : x-www-form-urlencoded</li>
                        <li>Disable data /api/<?= $table ?>/disable , method :PUT , param : id / primary kolom , type : x-www-form-urlencoded</li>
                        <li>Enable data /api/<?= $table ?>/enable , method :PUT , param : id / primary kolom , type : x-www-form-urlencoded</li>
                      </ul>

                    </li>

                  </ul>
            </div>
            </form>
          </div>
        </div>
      </div>
    </section>
  </div>
