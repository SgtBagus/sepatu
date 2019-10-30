  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Data Tables
        <small>advanced tables</small>
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
              <?php if($this->session->flashdata('message')!=""){ ?>
              <div class="alert alert-<?= @$this->session->flashdata('class') ?>">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <?php echo $this->session->flashdata('message') ?>
              </div>
              <?php } ?>
              
                <div class="show_error"></div>
        	    <table class="table table-condensed table-hover table-bordered" id="mytable">
                    <thead>
                        <tr>
                            <th style="width:40px;">No</th>
                            <th style="width:70px;">Photo</th>
                            <th style="width: 200px">Cost center code</th>
                            <th>Name</th>
                            <th>Site</th>
                            <th>Status</th>
                            <th style="width:100px;">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                     
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

        function loaddata() {
            // body...
                var status = "<?= $status ?>";
                var t = $("#mytable").dataTable({
                initComplete: function() {
                    var api = this.api();
                    $('#mytable_filter input')
                            .off('.DT')
                            .on('keyup.DT', function(e) {
                                if (e.keyCode == 13) {
                                    api.search(this.value).draw();
                        }
                    });
                },
                oLanguage: {
                    sProcessing: "loading..."
                },
                processing: true,
                serverSide: true,
                ajax: {"url": "<?= base_url('master/site/site_json') ?>/"+status, "type": "POST"},
                columns: [
                    {"data": "id","orderable": false},
                    {"data": "dir"},
                    {"data": "code"},
                    {"data": "name"},
                    {"data": "site"},
                    {"data": "status"},
                    {"data": "view","orderable": false}
                ],
                order: [[0, 'asc']],
                columnDefs : [
                    { targets : [1],
                        render : function(data, type, row) {
                            return data == null ? '<img src="http://www.dbsmfg.com/img/default.gif" class="img-responsive" />' : '<img src="<?= base_url() ?>'+data+'" class="img-responsive" />'
                        }
                    },
                    { targets : [5],
                        render : function(data, type, row) {
                            return data == "ENABLE" ? '<label class="label label-success">'+data+'</label>' : '<label class="label label-warning">'+data+'</label>'
                        }
                    }
               ],
                 rowCallback: function(row, data, iDisplayIndex) {
                    var info = this.fnPagingInfo();
                    var page = info.iPage;
                    var length = info.iLength;
                    var index = page * length + (iDisplayIndex + 1);
                    $('td:eq(0)', row).html(index);
                }
            });
         }

         loaddata();

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