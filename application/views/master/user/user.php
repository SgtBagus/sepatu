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
              <h3 class="box-title">
                <button class="btn btn-primary btn-flat" data-toggle="modal" data-target="#addsite" onclick="reseterror()"><i class="fa fa-plus"></i> Add User</button>
              </h3>
               <div class="pull-right">
              	</div>
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
            	<div id="mydiv"></div>
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
	        <h4 class="modal-title" id="myModalLabel">Add New User </h4>
	      </div>
      	<form action="<?= base_url('master/user/store') ?>" id="upload" enctype="multipart/form-data">
	      <div class="modal-body">
	      	<div class="show_error"></div>
	        <small>Username</small>
	        <input name="dt[nip]" type="text" class="form-control" />
          <small>Email</small>
          <input name="dt[email]" type="email" class="form-control" />
	        <small>Password</small>
	        <input name="dt[password]" type="password" class="form-control" />
          <small>Confirm Password</small>
          <input name="password_confirmation_field" type="password" class="form-control" placeholder="" />

	        <small>Name</small>
	        <input name="dt[name]" type="text" class="form-control" />
	        <small>Role</small>
	        <select class="form-control" name="dt[role_id]">
	        	<?php 
	        	$res =  $this->mymodel->selectData('role');
	        	foreach ($res as $role) {
	        	 ?>
	        	<option value="<?= $role['id'] ?>"><?= $role['role'] ?></option>
	        	<?php } ?>
	        </select>	

	        <small>Description</small>
	        <textarea class="form-control" name="dt[desc]"></textarea>
          <small >File</small>
          <input type="file" class="form-control" id="form-file" placeholder="Masukan File" name="file">
	      </div>
	      <div class="modal-footer">
	        <button type="submit" class="btn btn-primary" id="send-btn"><i class="fa fa-save"></i> Simpan</button>
	      </div>
	      </form>
	  </div>
	</div>
</div>


<div class="modal fade" id="editsite" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document" style="z-index: 9999">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="myModalLabel">Edit User </h4>
	      </div>
      	<form action="<?= base_url('master/user/update') ?>" id="uploads" enctype="multipart/form-data">
	      <div class="modal-body" id="data-update">
	      	
	      </div>
	      <div class="modal-footer">
	        <button type="submit" class="btn btn-primary" id="send-btns"><i class="fa fa-save"></i> Simpan</button>
	      </div>
	      </form>
	  </div>
	</div>
</div>

	<!-- end modal review -->

	<script type="text/javascript">

		function reseterror() {
			// body...
			$('.show_error').html("");
		}
  function loaddatas() {
        $("#mydiv").html("");

      var html = '<table class="table table-condensed table-hover table-bordered" id="mytable">'+
	             '<thead>'+
	             '  <tr>'+
	             '    <th style="width:40px;">No</th>'+
	             '    <th>Image</th>'+
               '    <th>Username</th>'+
               '    <th>Name</th>'+
	             '    <th style="width:100px;">Role</th>'+
	             '    <th>Description</th>'+
	             '    <th style="width:150px;">Edit/Delete</th>'+
	             '  </tr>'+
	             '</thead>'+
	             '<tbody>'+
	             '  '+
	             '</tbody>'+
	            '</table>';
        $("#mydiv").html(html);

        loaddata();
  }


		function loaddata() {
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
		  ajax: {"url": "<?= base_url('master/user/json') ?>/", "type": "POST"},
		    columns: [
		      {"data": "id","orderable": false},
		      {"data": ""},
          {"data": "nip"},
          {"data": "name"},
		      {"data": "role"},
		      {"data": "desc"},
		      {   "data": "view",
		      "orderable": false
		      }
		    ],
		  order: [[0, 'asc']],
		  columnDefs : [
		    { targets : [1],
		      render : function (data, type, row) {
		        if(row['dir']=="" || row['dir']==null){
               var a = '<object data="https://www.library.caltech.edu/sites/default/files/styles/headshot/public/default_images/user.png?itok=1HlTtL2d" style="width: 70px;">'+
                     '<img src="https://www.library.caltech.edu/sites/default/files/styles/headshot/public/default_images/user.png?itok=1HlTtL2d" type="image/png" alt="example" style="width: 70px;">'+
                     '</object>';

            }else{
              var a ='<object data="<?= base_url('') ?>'+row['dir']+'" style="width: 70px;">'+
                     '<img src="https://www.library.caltech.edu/sites/default/files/styles/headshot/public/default_images/user.png?itok=1HlTtL2d" type="image/png" alt="example" style="width: 70px;">'+
                     '</object>';
            }

            return a;
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

    loaddatas();
	
     $("#upload").submit(function(){
        var mydata = new FormData(this);
        var form = $(this);
        $.ajax({
            type: "POST",
            url: form.attr("action"),
            data: mydata,
            cache: false,
            contentType: false,
            processData: false,
            beforeSend : function(){
                $("#send-btn").addClass("disabled").html("<i class='fa fa-spinner fa-spin'></i>  Processing...").attr('disabled',true);
                form.find(".show_error").slideUp().html("");

            },
            success: function(response, textStatus, xhr) {
                // alert(mydata);
               var str = response;
                if (str.indexOf("Success Send Data") != -1){
                    form.find(".show_error").hide().html(response).slideDown("fast");
                    $("#send-btn").removeClass("disabled").html('<i class="fa fa-save"></i> Simpan').attr('disabled',false);
                    loaddatas();
                    // document.getElementById('upload').reset();
                     $('#upload')[0].reset();
                    $("#addsite").modal('hide');
            
                }else{
                    form.find(".show_error").hide().html(response).slideDown("fast");
                    $("#send-btn").removeClass("disabled").html('<i class="fa fa-save"></i> Simpan').attr('disabled',false);
                }
            },
            error: function(xhr, textStatus, errorThrown) {
            console.log(xhr);
            }
        });
        return false;
        });


            // body...
        $('#loadingDiv2').hide().ajaxStart( function() {
        $(this).show();  // show Loading Div
        } ).ajaxStop ( function(){
          $(this).hide(); // hide loading div
        });

     function edit(id) {
     	$("#editsite").modal('show');
     	$("#data-update").load('<?= base_url('master/user/edit') ?>/'+id);
     }


     $("#uploads").submit(function(){
        var mydata = new FormData(this);
        var form = $(this);
        $.ajax({
            type: "POST",
            url: form.attr("action"),
            data: mydata,
            cache: false,
            contentType: false,
            processData: false,
            beforeSend : function(){
                $("#send-btns").addClass("disabled").html("<i class='fa fa-spinner fa-spin'></i>  Processing...").attr('disabled',true);
                form.find(".show_error").slideUp().html("");

            },
            success: function(response, textStatus, xhr) {
                // alert(mydata);
               var str = response;
                if (str.indexOf("Success") != -1){
                    form.find(".show_error").hide().html(response).slideDown("fast");
                    $("#send-btns").removeClass("disabled").html('<i class="fa fa-save"></i> Simpan').attr('disabled',false);
                    loaddatas();
                    // document.getElementById('upload').reset();
                     $('#uploads')[0].reset();
                    $("#editsite").modal('hide');
            
                }else{
                    form.find(".show_error").hide().html(response).slideDown("fast");
                    $("#send-btns").removeClass("disabled").html('<i class="fa fa-save"></i> Simpan').attr('disabled',false);
                }
            },
            error: function(xhr, textStatus, errorThrown) {
            console.log(xhr);
            }
        });
        return false;
        });

     function hapus(id) {

     	var url = "<?= base_url('master/user/delete') ?>/"+id;
     	if (confirm('Are you sure delete this data ?')) {
			window.location.href = url;
		} else {
		    return false
		}
     }
	</script>