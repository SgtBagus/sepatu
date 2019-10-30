

 <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Control
        <small>Access</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Access</a></li>
        <li class="active">Control</li>
      </ol>
    </section>
    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-8">
          <div class="box">
            <!-- /.box-header -->
            <div class="box-header">
            <h5 class="box-title">Role : <?= $role['role'] ?></h5>
            </div>
            <form action="<?= base_url('access/store') ?>" method="POST">
            <div class="box-body">
              <input type="hidden" name="role" value="<?= $role['id'] ?>">
              <table class="table table-condensed table-striped table-bordered">
                <thead>
                  <tr>
                    <th>No</th>
                    <th>Folder</th>
                    <th>Class</th>
                    <th>Method</th>
                    <th>Link</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                  <?php 
                  $i=1;
                  foreach ($control as $ctrl) {
                    $acc= $this->mymodel->selectDataone('access',array('access_control_id'=>$ctrl['id'],'role_id'=>$role['id']));
                    $c = count($acc);
                   ?>
                  <tr>
                    <td><?= $i ?></td>
                    <td><?= $ctrl['folder'] ?></td>
                    <td><?= $ctrl['class'] ?></td>
                    <td><?= $ctrl['method'] ?></td>
                    <td><?= $ctrl['val'] ?></td>
                    <td>
                       <input type="checkbox" name="control[]" <?php if($c!=0){ ?> checked="" <?php } ?> value="<?= $ctrl['id'] ?>"> 
                    </td>
                  </tr>
                <?php
                $i++;
                 } ?>
                </tbody>
              </table>
              <button class="btn btn-block btn-danger"><i class="fa fa-save"></i> SAVE DATA</button>
            </div>
            </form>
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
