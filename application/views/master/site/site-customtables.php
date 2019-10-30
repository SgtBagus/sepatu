  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Custom Tables
        <small>advanced tables</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Tables</a></li>
        <li class="active">Custom tables</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <div class="box-header">
             <button class="btn btn-primary btn-flat" data-toggle="modal" data-target="#addsite"><i class="fa fa-plus"></i> Add New Site</button>
              <?php if($status!="DISABLE"){ ?>
                <a class="btn btn-warning btn-flat pull-right" href="<?= base_url('master/site/index/disable') ?>">View Disable Item(s)  <i class="fa fa-arrow-right"></i></a>
              <?php }else{ ?>
                <a class="btn btn-success btn-flat pull-right" href="<?= base_url('master/site') ?>">View Enable Item(s)  <i class="fa fa-arrow-right"></i></a>
              <?php } ?>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <input type="text" class="form-control" placeholder="Search with Site . . ." onkeyup="loaddata()" id="texts">

              <?php if($this->session->flashdata('message')!=""){ ?>
              <div class="alert alert-<?= @$this->session->flashdata('class') ?>">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <?php echo $this->session->flashdata('message') ?>
              </div>
              <?php } ?>
              <div class="show_error"></div>
              <div id="table"></div>

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
  <!-- /.content-wrapper -->

<!-- modal review -->
<div class="modal fade" id="addsite" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document" style="z-index: 9999">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" id="myModalLabel">Add New SIte</h4>
        </div>
       
        <form  action="<?= base_url('master/site/site_store') ?>" method="POST" enctype="multipart/form-data" >
        <div class="modal-body">
         <table class="table table-borderd table-striped">
        <tr>
          <td>Cost center code</td>
          <td><input name="dt[code]" type="text" class="form-control" value="" required="" /></td>
        </tr>
        
        <tr>
          <td>Name of Site</td>
          <td><input name="dt[name]" type="text" class="form-control" value="" required="" /></td>
        </tr>
        <tr>
          <td>Name</td>
          <td><input name="dt[site]" type="text" class="form-control" value="" required="" /></td>
        </tr>
        
        <tr>
          <td>Photo</td>
          <td><input name="gambar" type="file" class="form-control" accept="image/*" /></td>
        </tr>
      </table>      
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-primary" ><i class='fa fa-save'></i> Save</button>
        </div>
        </form>
    </div>
  </div>
</div>



<!-- modal review -->
<div class="modal fade" id="updatesite" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document" style="z-index: 9999">

      <div class="modal-content">
        <form  action="<?= base_url('master/site/site_update') ?>" method="POST" enctype="multipart/form-data" >

        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" id="myModalLabel">Update SIte</h4>
        </div>
        
        <div class="modal-body" id="modal-body">
      
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-primary" ><i class='fa fa-save'></i> Update</button>
        </div>
    </form>
    </div>
  </div>
</div>

  <!-- end modal review -->

  <script type="text/javascript">
    function site_update(id) {
      // body...
      $("#updatesite").modal('show');
      $("#modal-body").load("<?= base_url('master/site/site_edit') ?>/"+id);
    }


         function hapus(id) {
            var cek = "<?= $status ?>";
            if(cek=="ENABLE"){
              cek = "DISABLE";
            }else if(cek=="DISABLE"){
              cek = "ENABLE";
            }
              if (confirm("Are you sure to '"+cek+"' this data ?")) {
            window.location.href = "<?= base_url('master/site/site_hidden') ?>/"+id+"/"+cek;    
          } else {
    
          }
         }
  </script>
  <script type="text/javascript">
    
    function data(id,url) {
        $("#"+id).load(url);
    }

    function loaddata() {
    
    var texts = $("#texts").val();
    var status = "<?= $status ?>";

     data('table','<?= base_url('master/site/site_data'); ?>?str='+texts+'&stt='+status);
    }

    loaddata()



</script>