<form method="POST" action="<?= base_url('master/Transaksi_preorder/approveproses') ?>" id="upload-create" enctype="multipart/form-data">
  <div class="show_error"></div>
  <div class="form-group">
    <label for="form-value">Pengiriman Kurir</label>
    <select class="form-control select2" name="dt[id_kurir]">
      <option value="">--Pilih Kurir--</option>
      <?php
      $master_kurir = $this->mymodel->selectData("master_kurir");
      foreach ($master_kurir as $key => $value) {
        ?>
        <option value="<?= $value['id'] ?>" <?php if($transaksi['id_kurir'] == $value['id']){ echo "selected"; }?> ><?= $value['value'] ?></option>
      <?php } ?>
    </select>
  </div>
  <div class="form-group">
    <label for="form-value">No Resi</label>
    <input type="text" class="form-control" id="form-value" placeholder="Masukan No Resi Pengiriman" name="dt[resi_pengiriman]">
    <input type="hidden" name="dt[id]" value="<?= $transaksi['id']?>">
  </div>
  <hr>
  <button type="submit" class="btn btn-primary btn-send-approve" ><i class="fa fa-send"></i> Kirim</button>
  <button type="reset" class="btn btn-danger"><i class="fa fa-refresh"></i> Reset</button>
</form>
<script type="text/javascript">
  $("#upload-create").submit(function(){
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
        $(".btn-send-approve").addClass("disabled").html("<i class='la la-spinner la-spin'></i>  Processing...").attr('disabled',true);
        form.find(".show_error").slideUp().html("");
      },
      success: function(response, textStatus, xhr) {
        var str = response;
        if (str.indexOf("success") != -1){
          form.find(".show_error").hide().html(response).slideDown("fast");
          setTimeout(function(){ 
            $("#load-table").html('');
            loadtable($("#select-status").val());
            $("#modal-form").modal('hide');
          }, 1000);
          $(".btn-send-approve").removeClass("disabled").html('<i class="fa fa-send"></i> Kirim').attr('disabled',false);
        }else{
          form.find(".show_error").hide().html(response).slideDown("fast");
          $(".btn-send-approve").removeClass("disabled").html('<i class="fa fa-send"></i> Kirim').attr('disabled',false);
        }
      },
      error: function(xhr, textStatus, errorThrown) {
        $(".btn-send-approve").removeClass("disabled").html('<i class="fa fa-send"></i> Kirim').attr('disabled',false);
        form.find(".show_error").hide().html(xhr).slideDown("fast");
      }
    });
    return false;
  });
</script>