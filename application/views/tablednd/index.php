<link rel="stylesheet" href="<?= base_url('assets/plugins/tablednd/tablednd.css') ?>" type="text/css"/>
<script type="text/javascript" src="<?= base_url('assets/plugins/tablednd/js/jquery.tablednd.0.7.min.js') ?>"></script>
<style>
  thead th{
    text-align: center;
    vertical-align: middle !important;
  }
</style>
 <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Table Drag And Drop
        <small></small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Plugin</a></li>
        <li class="active">Table Drag And Drop</li>
      </ol>
    </section>
    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <!-- /.box-header -->
            <div class="box-header">
            </div>
            <div class="box-body">
              <form action="<?= base_url('tablednd/simpan') ?>" method="POST">
              <table class="table table-condensed table-bordered" id="table-1">
                  <thead>
                    <tr>
                      <th>
                        <i class="fa fa-arrows"></i>
                      </th>
                      <th>Nama</th>
                      <th>Email</th>
                      <th>Telp</th>
                      <th>Alamat</th>
                      <th>Status</th>
                      <th style="width: 1px;"><button type="button" onclick="tambahBaris()" class="btn btn-success"><i class="fa fa-plus"></i></button></th>
                    </tr>
                  </thead>
                  <tbody id="tbody-table">
                    <?php 
                    $customer = $this->mymodel->selectData('customer_dnd');
                    foreach ($customer as $key => $value): ?>
                    <tr id="<?= $key+1 ?>">
                      <td><?= $key+1 ?></td>
                      <td><input type="text" class="form-control" name="dt[nama][]" value="<?= $value['nama'] ?>"></td>
                      <td><input type="text" class="form-control" name="dt[email][]" value="<?= $value['email'] ?>"></td>
                      <td><input type="text" class="form-control" name="dt[telp][]" value="<?= $value['telp'] ?>"></td>
                      <td><input type="text" class="form-control" name="dt[alamat][]" value="<?= $value['alamat'] ?>"></td>
                      <td>
                        <select name="dt[status][]" class="form-control">
                          <option <?= ($value['status']=='ENABLE')?'selected':''; ?>>ENABLE</option>
                          <option <?= ($value['status']=='DISABLE')?'selected':''; ?>>DISABLE</option>
                        </select>
                      </td>
                      <td><button type="button" onclick="hapusBaris(<?= $key+1 ?>)" class="btn btn-danger"><i class="fa fa-trash"></i></button></td>
                    </tr>
                    <?php endforeach ?>
                  </tbody>
              </table>
              <br>
              <button class="btn btn-primary btn-flat btn-block"><i class="fa fa-save"></i> Simpan</button>
              </form>
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

  var jum = '<?= count($customer) ?>';
  function tambahBaris() {
    jum++;
    var html = '<tr id="'+jum+'">'+
              '    <td>'+jum+'</td>'+
              '    <td><input type="text" class="form-control" name="dt[nama][]"></td>'+
              '    <td><input type="text" class="form-control" name="dt[email][]"></td>'+
              '    <td><input type="text" class="form-control" name="dt[telp][]"></td>'+
              '    <td><input type="text" class="form-control" name="dt[alamat][]"></td>'+
              '    <td>'+
              '      <select name="dt[status][]" class="form-control">'+
              '        <option>ENABLE</option>'+
              '        <option>DISABLE</option>'+
              '      </select>'+
              '    </td>'+
              '    <td><button type="button" onclick="hapusBaris('+jum+')" class="btn btn-danger"><i class="fa fa-trash"></i></button></td>'+
              '  </tr>';
    $('#tbody-table').append(html);
    loadTableDnD();
  }

  function hapusBaris(id) {
    if (confirm('Apakah anda yakin ingin menghapus baris ini ?')) {
      $('#tbody-table>#'+id).remove();
    } else {
      return false;
    }
  }

  // Initialise the first table (as before)
  function loadTableDnD() {
    $("#table-1").tableDnD();
  }
  loadTableDnD();
</script>