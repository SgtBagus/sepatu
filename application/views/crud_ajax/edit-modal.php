<form action="<?= base_url('crud-ajax/edit/'.$customer['id']) ?>" id="form-edit-customer" enctype="multipart/form-data">
  <div class="form-group">
    <label>Nama</label>
    <input type="text" class="form-control" name="dt[nama]" value="<?= $customer['nama'] ?>">
  </div>
  <div class="form-group">
    <label>Email</label>
    <input type="text" class="form-control" name="dt[email]" value="<?= $customer['email'] ?>">
  </div>
  <div class="form-group">
    <label>Telp</label>
    <input type="text" class="form-control" name="dt[telp]" value="<?= $customer['telp'] ?>">
  </div>
  <div class="form-group">  
    <label>Alamat</label>
    <input type="text" class="form-control" name="dt[alamat]" value="<?= $customer['alamat'] ?>">
  </div>
  <div class="form-group">
    <label>File</label>
    <input type="file" class="form-control" name="file">
    <?php if ($file['dir']!=''){ ?>
      <a href="<?= base_url($file['dir']) ?>" target="_blank">Download</a>
    <?php } else { ?>
      Belum memiliki file
    <?php } ?>
  </div>
  <div class="form-group">  
    <label>Status</label>
    <select name="dt[status]" class="form-control">
      <option <?= ($customer['status']=='ENABLE')?'selected':''; ?>>ENABLE</option>
      <option <?= ($customer['status']=='DISABLE')?'selected':''; ?>>DISABLE</option>
    </select>
  </div>
  <div class="show-error-edit-customer"></div>
  <button type="submit" class="btn btn-primary btn-block btn-edit-customer"><i class="fa fa-save"></i> Simpan</button>
</form>

<script>  
  $("#form-edit-customer").submit(function(){
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
              $(".btn-edit-customer").addClass("disabled").html("<i class='fa fa-spinner fa-spin'></i>  Processing...").attr('disabled',true);
              form.find(".show-error-edit-customer").slideUp().html("");
          },
          success: function(response, textStatus, xhr) {
              // alert(mydata);
             var str = response;
              if (str.indexOf("success") != -1){
                  form.find(".show-error-edit-customer").hide().html(response).slideDown("fast");
                  setTimeout(function(){ 
                     $('#modal-edit-customer').modal('hide');
                    $("#form-edit-customer")[0].reset();
                     loadTable(); 
                  }, 500);
                  setTimeout(function(){ 
                    form.find(".show-error-edit-customer").slideUp().html("");
                  }, 2000);
                  $(".btn-edit-customer").removeClass("disabled").html('<i class="fa fa-save"></i> Simpan').attr('disabled',false);
              }else{
                  form.find(".show-error-edit-customer").hide().html(response).slideDown("fast");
                  $(".btn-edit-customer").removeClass("disabled").html('<i class="fa fa-save"></i> Simpan').attr('disabled',false);
                  
              }
          },
          error: function(xhr, textStatus, errorThrown) {
            console.log(xhr);
              $(".btn-edit-customer").removeClass("disabled").html('<i class="fa fa-save"></i> Simpan').attr('disabled',false);
              form.find(".show-error-edit-customer").hide().html(xhr).slideDown("fast");

          }
      });
      return false;

  });
</script>