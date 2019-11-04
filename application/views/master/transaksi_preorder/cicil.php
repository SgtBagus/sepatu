<form method="POST" action="<?= base_url('master/Transaksi_preorder/lunasproses') ?>" id="upload-create" enctype="multipart/form-data">
    <div class="show_error"></div>
    <div class="form-group">
        <label for="form-value">Biaya Kirim</label>
        <input type="text" class="form-control" id="form-value" value="<?= "Rp " . number_format($transaksi['biaya_kirim'],0,',','.');?>" readonly>
    </div>
    <div class="form-group">
        <label for="form-value">Sub Total</label>
        <input type="text" class="form-control" id="form-value" value="<?= "Rp " . number_format($transaksi['sub_total'],0,',','.');?>" readonly>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="form-group">
                <label for="form-value">Total Bayar</label>
                <input type="text" class="form-control" id="form-value" value="<?= "Rp " . number_format($transaksi['jumlah_bayar'],0,',','.');?>" readonly>
            </div>
        </div>
        <div class="col-md-6">
            <div class="form-group">
                <label for="form-value">Kurang</label>
                <input type="text" class="form-control" id="form-value" value="<?php if($transaksi['kembalian'] >= 0 ){ echo "Sudah Lunas"; } else {
                    echo "Rp " . number_format($transaksi['kembalian']*-1, 0, ',', '.');
                }?>" readonly>
            </div>
        </div>
    </div>
    <div class="form-group">
        <label for="form-value">Bayar Cicilan</label>
        <input type="number" class="form-control" id="form-value" placeholder="Masukan No Resi Pengiriman" name="dt[jumlah_bayar]">
        <input type="hidden" name="dt[id]" value="<?= $transaksi['id'] ?>">
    </div>
    <hr>
    <button type="submit" class="btn btn-primary btn-send-approve"><i class="fa fa-send"></i> Kirim</button>
    <button type="reset" class="btn btn-danger"><i class="fa fa-refresh"></i> Reset</button>
</form>
<script type="text/javascript">
    $("#upload-create").submit(function() {
        var form = $(this);
        var mydata = new FormData(this);
        $.ajax({
            type: "POST",
            url: form.attr("action"),
            data: mydata,
            cache: false,
            contentType: false,
            processData: false,
            beforeSend: function() {
                $(".btn-send-approve").addClass("disabled").html("<i class='la la-spinner la-spin'></i>  Processing...").attr('disabled', true);
                form.find(".show_error").slideUp().html("");
            },
            success: function(response, textStatus, xhr) {
                var str = response;
                if (str.indexOf("success") != -1) {
                    form.find(".show_error").hide().html(response).slideDown("fast");
                    setTimeout(function() {
                        $("#load-table").html('');
                        loadtable($("#select-status").val());
                        $("#modal-form").modal('hide');
                    }, 1000);
                    $(".btn-send-approve").removeClass("disabled").html('<i class="fa fa-send"></i> Kirim').attr('disabled', false);
                } else {
                    form.find(".show_error").hide().html(response).slideDown("fast");
                    $(".btn-send-approve").removeClass("disabled").html('<i class="fa fa-send"></i> Kirim').attr('disabled', false);
                }
            },
            error: function(xhr, textStatus, errorThrown) {
                $(".btn-send-approve").removeClass("disabled").html('<i class="fa fa-send"></i> Kirim').attr('disabled', false);
                form.find(".show_error").hide().html(xhr).slideDown("fast");
            }
        });
        return false;
    });
</script>