<div class="content-wrapper">
  <section class="content-header">
    <h1>
      Customer
      <small>Master</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li><a href="#">master</a></li>
      <li class="active">Customer</li>
    </ol>
  </section>
  <section class="content">
    <form method="POST" action="<?= base_url('master/Customer/update') ?>" id="upload-create" enctype="multipart/form-data">
      <input type="hidden" name="id" value="<?= $customer['id'] ?>">
      <div class="row">
        <div class="col-xs-8">
          <div class="box">
            <div class="box-header">
              <h5 class="box-title">
                Edit Customer
              </h5>
            </div>
            <div class="box-body">
              <div class="show_error"></div>
              <div class="form-group">
                <label>Jenis Pembeli</label>
                <select class="form-control select2" name="dt[jenis_pembeli]" style="width: 100%;">
                  <option value="Biasa" <?php if ($customer['jenis_pembeli'] == "Biasa") {
                                          echo "selected";
                                        } ?>>Biasa</option>
                  <option value="Reseller" <?php if ($customer['jenis_pembeli'] == "Reseller") {
                                              echo "selected";
                                            } ?>>Reseller</option>
                </select>
              </div>
              <div class="form-group">
                <label for="form-nama_customer">Nama Customer</label>
                <input type="text" class="form-control" id="form-nama_customer" placeholder="Masukan Nama Customer" name="dt[nama_customer]" value="<?= $customer['nama_customer'] ?>">
              </div>
              <div class="form-group">
                <label>Provinsi</label>
                <select class="form-control select2" name="dt[id_provinsi]" id="provinsi" style="width: 100%;">
                  <?php
                  $tbl_provinsi = $this->mymodel->selectWhere('tbl_provinsi', null);
                  foreach ($tbl_provinsi as $tbl_provinsi_record) { ?>
                    <option value="<?= $tbl_provinsi_record['id'] ?>" <?php if ($customer['id_provinsi'] == $tbl_provinsi_record['id']) {
                                                                        echo "selected";
                                                                      } ?>><?= $tbl_provinsi_record['provinsi'] ?></option>
                  <?php } ?>
                </select>
              </div>
              <div class="form-group">
                <label>Kota/Kabupaten</label>
                <select class="form-control select2" name="dt[id_kabkot]" id="kota" style="width: 100%;">
                  <?php
                  $tbl_kota = $this->mymodel->selectWhere('tbl_kabkot', array('provinsi_id' => $customer['id_provinsi']));
                  foreach ($tbl_kota as $tbl_kota_record) { ?>
                    <option value="<?= $tbl_kota_record['id'] ?>" <?php if ($customer['id_kabkot'] == $tbl_kota_record['id']) {
                                                                        echo "selected";
                                                                      } ?>><?= $tbl_kota_record['kabupaten_kota'] ?></option>
                  <?php } ?>
                </select>
              </div>
              <div class="form-group">
                <label>Kecamatan</label>
                <select class="form-control select2" name="dt[id_kecamatan]" id="kecamatan" style="width: 100%;">
                  <?php
                  $tbl_kecamatan = $this->mymodel->selectWhere('tbl_kecamatan', array('kabkot_id' => $customer['id_kabkot']));
                  foreach ($tbl_kecamatan as $tbl_kecamatan_record) { ?>
                    <option value="<?= $tbl_kecamatan_record['id'] ?>" <?php if ($customer['id_kecamatan'] == $tbl_kecamatan_record['id']) {
                                                                        echo "selected";
                                                                      } ?>><?= $tbl_kecamatan_record['kecamatan'] ?></option>
                  <?php } ?>
                </select>
              </div>
              <div class="form-group">
                <label>Kelurahan/Desan</label>
                
                <select class="form-control select2" name="dt[id_kelurahan]" id="kelurahan" style="width: 100%;">
                  <?php
                  $tbl_kelurahan = $this->mymodel->selectWhere('tbl_kelurahan', array('kecamatan_id' => $customer['id_kecamatan']));
                  foreach ($tbl_kelurahan as $tbl_kelurahan_record) { ?>
                    <option value="<?= $tbl_kelurahan_record['id'] ?>" <?php if ($customer['id_kelurahan'] == $tbl_kelurahan_record['id']) {
                                                                        echo "selected";
                                                                      } ?>><?= $tbl_kelurahan_record['kelurahan'] ?></option>
                  <?php } ?>
                </select>
              </div>
              <div class="form-group">
                <label>Kode Pos</label>
                <input type="text" class="form-control" name="dt[kode_post]" id="kodepost" value="<?= $customer['kode_post'] ?>" placeholder="Kode Post"> 
              </div>
              <div class="form-group">
                <label for="form-alamat_customer">Alamat Customer</label>
                <textarea name="dt[alamat_customer]" class="form-control"><?= $customer['alamat_customer'] ?></textarea>
              </div>
              <div class="form-group">
                <label for="form-email_customer">Email Customer</label>
                <input type="text" class="form-control" id="form-email_customer" placeholder="Masukan Email Customer" name="dt[email_customer]" value="<?= $customer['email_customer'] ?>">
              </div>
              <div class="form-group">
                <label for="form-hp_customer">Sumber Trafik</label>
                <select class="form-control select2" name="dt[id_sumtrafik]">
                  <option value="">--Pilih Master Sumtrafik--</option>
                  <?php
                  $master_sumtrafik = $this->mymodel->selectData("master_sumtrafik");
                  foreach ($master_sumtrafik as $value) { ?>
                    <option value="<?= $value['id'] ?>" <?php if ($customer['id_sumtrafik'] == $value['id']) {
                                                            echo "selected";
                                                          } ?>> <?= $value['value'] ?> </option>
                  <?php } ?>
                </select>
              </div>
              <div class="form-group">
                <label for="form-hp_customer">Hp Customer</label>
                <input type="text" class="form-control" id="form-hp_customer" placeholder="Masukan Hp Customer" name="dt[hp_customer]" value="<?= $customer['hp_customer'] ?>">
              </div>
              <div class="box-footer">
                <button type="submit" class="btn btn-primary btn-send"><i class="fa fa-save"></i> Save</button>
                <button type="reset" class="btn btn-danger"><i class="fa fa-refresh"></i> Reset</button>
              </div>
            </div>
          </div>
        </div>
    </form>
  </section>
</div>
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
        var str = response;
        if (str.indexOf("success") != -1) {
          form.find(".show_error").hide().html(response).slideDown("fast");
          setTimeout(function() {
            window.location.href = "<?= base_url('master/Customer') ?>";
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

  function get_kota(provinsi_id) {
    if (provinsi_id) {
      $.ajax({
        url: "<?= base_url() ?>ajax/get_kota/" + provinsi_id,
        type: "GET",
        dataType: "json",
        success: function(data) {
          $("#kota").empty();
          if (!$.trim(data)) {
            $("#kota").append('<option value="">Data Tidak Tersedia</option>');
          } else {
            $.each(data, function(key, value) {
              $("#kota").append('<option value="' +
                value.id + '">' + value.kabupaten_kota +
                '</option>');
            });
            get_kecamatan($("#kota").val());
          }
        }
      });
    } else {
      $("#kota").empty();
      $("#kota").append('<option value="">-Mohon Pilih Provinsi Terlebih Dahulu-</option>');
    }
  }

  function get_kecamatan() {
    var kota_id = $("#kota").val()
    if (kota_id) {
      $.ajax({
        url: "<?= base_url() ?>ajax/get_kecamatan/" + kota_id,
        type: "GET",
        dataType: "json",
        success: function(data) {
          $("#kecamatan").empty();
          if (!$.trim(data)) {
            $("#kecamatan").append('<option value="">Data Tidak Tersedia</option>');
          } else {
            $.each(data, function(key, value) {
              $("#kecamatan").append('<option value="' +
                value.id + '">' + value.kecamatan +
                '</option>');
            });
            get_kelurahan($("#kecamatan").val());
          }
        }
      });
    } else {
      $("#kecamatan").empty();
      $("#kecamatan").append('<option value="">-Mohon Pilih Kota/Kabupaetn Terlebih Dahulu-</option>');
    }
  }

  function get_kelurahan(kecamatan_id) {
    if (kecamatan_id) {
      $.ajax({
        url: "<?= base_url() ?>ajax/get_kelurahan/" + kecamatan_id,
        type: "GET",
        dataType: "json",
        success: function(data) {
          $("#kelurahan").empty();
          if (!$.trim(data)) {
            $("#kelurahan").append('<option value="">Data Tidak Tersedia</option>');
          } else {
            $.each(data, function(key, value) {
              $("#kelurahan").append('<option value="' +
                value.id + '">' + value.kelurahan +
                '</option>');
            });
            get_kodepost($("#kelurahan").val());
          }
        }
      });
    } else {
      $("#kelurahan").empty();
      $("#kelurahan").append('<option value="">-Mohon Pilih Kecamatan Terlebih Dahulu-</option>');
    }
  }

  function get_kodepost(kelurahan_id) {
    if (kelurahan_id) {
      $.ajax({
        url: "<?= base_url() ?>ajax/get_kodepost/" + kelurahan_id,
        type: "GET",
        dataType: "json",
        success: function(data) {
          if (!$.trim(data)) {
            $("#kodepost").attr('placeholder', 'Data Tidak Tersedia');
          } else {
            $.each(data, function(key, value) {
              $("#kodepost").val(value.kd_pos);
            });
          }
        }
      });
    } else {
      $("#kodepost").attr('placeholder', 'Data Tidak Tersedia');
    }
  }

  $("#provinsi").change(function() {
    get_kota($("#provinsi").val());
  });

  $("#kota").change(function() {
    get_kecamatan($("#kota").val());
  });

  $("#kecamatan").change(function() {
    get_kelurahan($("#kecamatan").val());
  });

  $("#kelurahan").change(function() {
    get_kodepost($("#kelurahan").val());
  });
</script>