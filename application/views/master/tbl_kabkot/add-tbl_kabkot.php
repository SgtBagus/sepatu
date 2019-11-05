<form method="POST" action="<?= base_url('master/Tbl_kabkot/store') ?>" id="upload-create" enctype="multipart/form-data">

    <div class="show_error"></div>
    <div class="form-group">

        <label for="form-provinsi_id">Provinsi Id</label>
        <select class="form-control select2" name="provinsi_id" style="width:100%">
            <option value="">--Pilih Tbl Provinsi--</option>
            <?php
            $tbl_provinsi = $this->mymodel->selectData("tbl_provinsi");
            foreach ($tbl_provinsi as $key => $value) {
                ?>
                <option value="<?= $value['id'] ?>"><?= $value['provinsi'] ?></option>
            <?php } ?>
        </select>

    </div>
    <div class="form-group">

        <label for="form-kabupaten_kota">Kabupaten Kota</label>

        <input type="text" class="form-control" id="form-kabupaten_kota" placeholder="Masukan Kabupaten Kota" name="dt[kabupaten_kota]">

    </div>
    <div class="form-group">

        <label for="form-ibukota">Ibukota</label>

        <input type="text" class="form-control" id="form-ibukota" placeholder="Masukan Ibukota" name="dt[ibukota]">

    </div>
    <div class="form-group">

        <label for="form-k_bsni">K Bsni</label>

        <input type="text" class="form-control" id="form-k_bsni" placeholder="Masukan K Bsni" name="dt[k_bsni]">

    </div>
    <hr>


    <button type="submit" class="btn btn-primary btn-send"><i class="fa fa-save"></i> Save</button>

    <button type="reset" class="btn btn-danger"><i class="fa fa-refresh"></i> Reset</button>





</form>




<!-- /.content-wrapper -->

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

                $(".btn-send").addClass("disabled").html("<i class='la la-spinner la-spin'></i>  Processing...").attr('disabled', true);

                form.find(".show_error").slideUp().html("");

            },

            success: function(response, textStatus, xhr) {

                // alert(mydata);

                var str = response;

                if (str.indexOf("success") != -1) {

                    form.find(".show_error").hide().html(response).slideDown("fast");

                    setTimeout(function() {

                        // window.location.href = "<?= base_url('master/Tbl_kabkot') ?>";
                        $("#load-table").html('');
                        loadtable($("#select-status").val());
                        $("#modal-form").modal('hide');


                    }, 1000);

                    $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled', false);





                } else {

                    form.find(".show_error").hide().html(response).slideDown("fast");

                    $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled', false);



                }

            },

            error: function(xhr, textStatus, errorThrown) {

                console.log(xhr);

                $(".btn-send").removeClass("disabled").html('<i class="fa fa-save"></i> Save').attr('disabled', false);

                form.find(".show_error").hide().html(xhr).slideDown("fast");



            }

        });

        return false;



    });
</script>