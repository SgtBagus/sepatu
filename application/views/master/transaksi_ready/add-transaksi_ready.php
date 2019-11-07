<div class="content-wrapper" data-ng-controller="PosController">
  <section class="content-header">
    <h1>
      Transaksi Ready
      <small>master</small>
    </h1>
    <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li><a href="#">master</a></li>
      <li class="active">Transaksi Ready</li>
    </ol>
  </section>
  <section class="content">
    <div class="row">
      <form method="POST" action="<?= base_url('master/transaksi_ready/store') ?>" id="upload-create">
        <div class="col-md-12">
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Customer</h3>
              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
              </div>
            </div>
            <div class="box-body chart-responsive">
              <div class="col col-md-11">
                <select class="form-control select2" name="dt[id_customer]" style="width: 100%">
                  <option value="">--Pilih Customer--</option>
                  <?php
                  $customer = $this->mymodel->selectData("customer");
                  foreach ($customer as $key => $value) {
                    ?>
                    <option value="<?= $value['id'] ?>"><?= $value['nama_customer'] ?> / <?= $value['hp_customer'] ?></option>
                  <?php } ?>
                </select>
              </div>
              <div class="col col-md-1">
                <a href="<?= base_url('master/Customer/create') ?>" target="_blank">
                  <button type="button" class="btn btn-sm btn-primary">
                    <i class="fa fa-plus"></i>
                  </button>
                </a>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-12">
          <div class="box box-success">
            <div class="box-header with-border">
              <h3 class="box-title">Pilih Produk</h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
              </div>
            </div>
            <div class="box-body chart-responsive">
              <div class="col col-md-12">
                <div class="form-group" style="margin-top:15px;">
                  <input id="filter" type="text" class="form-control" placeholder="CARI PRODUK...">
                </div>
              </div>
              <style>
                .cards {
                  background-color: white;
                  cursor: pointer;
                  color: black;
                }

                .cards:hover {
                  box-shadow: 7px 6px 19px -10px rgba(0, 0, 0, 0.75);
                }
              </style>

              <div class="col-md-2" data-ng-repeat="item in drinks" id="results">
                <a data-ng-click="addToOrder(item,1)" class="">
                  <div class="box box-solid round cards">
                    <div class="box-body">
                      <img src="<?= base_url() ?>/{{ item.image }}" alt="" style="height: 120px; width: 100%; object-fit: cover; display: inline;">
                      <hr>
                      <p style="color:black; font-size: 12px;margin-bottom:5px;margin-top:5px;"><b data-ng-bind="item.name"></b></p>
                      <p style="color:black; font-size: 12px;" data-ng-bind="item.kategori"></p>
                      <p style="color:black; font-size: 12px;" data-ng-bind="item.price"></p>
                      Sisa Stok : <b style="color:black; font-size: 12px;" data-ng-bind="item.stok"></b>
                    </div>
                  </div>
                </a>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-12">
          <div class="box">
            <div class="box-header">
              <div class="row">
                <div class="col-md-12">
                  <h3 class="box-title">
                    Tambah Kemasan
                  </h3>
                  <div class="row">
                    <div class="col-md-3">
                      <select class="form-control select2" name="kemasan" id="kemasan">
                        <?php
                        $master_kemasan = $this->mymodel->selectData("master_kemasan");
                        foreach ($master_kemasan as $key => $value) {
                          ?>
                          <option value="<?= $value['id'] ?>"><?= $value['value'] ?></option>
                        <?php } ?>
                      </select>
                    </div>
                    <div class="col-md-3">
                      <button type="button" class="btn btn-primary" onclick="setKemasan()">Tambah Kemasan</button>
                    </div>
                  </div>
                </div>
              </div>
              <div class="box-body">
                <table class="table table-hover">
                  <thead>
                    <tr>
                      <th>Value</th>
                      <th>Keterangan</th>
                      <th>Qty</th>
                      <th>Harga</th>
                      <th>Subtotal</th>
                    </tr>
                  </thead>
                  <tbody id="valueKemasan">
                    <tr>
                      <td colspan="5" align="center">
                        Belum Ada Data
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-12">
          <div class="box box-warning">
            <div class="box-header">
              <div class="row">
                <div class="col-md-7"><span class="panel-title">Detail Transaksi</span></div>
                <div class="col-md-5"><span>HARI INI: {{getDate()}}</span></div>
              </div>
            </div>
            <div class="box-body" style="overflow: scroll ;max-height: 800px;">
              <div class="text-red" ng-hide="order.length">
                SILAHKAN PILIH PRODUK YANG DIBELI!
              </div>
              <ul class="list-group">
                <li class="list-group-item" ng-repeat="item in order">
                  <div class="row">
                    <input ng-value="item.id" name="idd[]" type="hidden">
                    <input ng-value="item.name" name="name[]" type="hidden">
                    <input ng-value="item.qty" name="qtt[]" type="hidden">
                    <input ng-value="item.price" name="prc[]" type="hidden">
                    <input ng-value="item.priceb" name="prcb[]" type="hidden">
                    <input ng-value="item.ukuran_id" name="ukuran[]" type="hidden">
                    <input ng-value="item.warna" name="warna[]" type="hidden">
                    <div class="col-md-2">
                      {{item.name}}
                    </div>
                    <div class="col-md-1">
                      <span class="badge badge-left" ng-bind="item.qty"></span>
                    </div>
                    <div class="col-md-2">
                      <div class="row">
                        <div class="col-md-12  padding-0" style="margin-bottom: 5px;">
                          <div class="btn btn-success btn-xs">{{item.price *
                            item.qty |
                          currency:"RP ":0}}</div>
                        </div>
                        <div class="col-md-12  padding-0">
                          <div class="btn btn-info btn-xs">{{item.price |
                          currency:"RP ":0}}</div>
                        </div>
                      </div>
                    </div>
                    <div class="col-md-1">
                      <div class="col-md-12 padding-0" style="margin-bottom: 5px;">
                        <button type="button" class="btn btn-success btn-xs" ng-click="addToOrder(item,1)">
                          <span class="glyphicon glyphicon-plus"></span>
                        </button>
                      </div>
                      <div class="col-md-12 padding-0">
                        <button type="button" class="btn btn-warning btn-xs" ng-click="removeOneEntity(item)">
                          <span class="glyphicon glyphicon-minus"></span>
                        </button>
                      </div>
                    </div>
                    <div class="col-md-5">
                      <div class="col-md-12">
                        Ukuran Sepatu : <b> {{item.ukuran}} </b>
                      </div>
                      <div class="col-md-12">
                        Warna Sepatu : <b> {{item.warna}} </b>
                      </div>
                      <div class="col-md-12">
                        <textarea name="keterangan[]" style="margin-top: 10px" class="form-control" placeholder="Keterangan Sepatu">{{item.ket}}</textarea>
                      </div>
                      <div class="col-md-6">
                        <input name="biayalain[]" style="margin-top: 10px" class="form-control" placeholder="Biaya Lain" type="number">
                      </div>
                      <div class="col-md-6">
                        <input name="diskon[]" style="margin-top: 10px" class="form-control" placeholder="Diskon" type="number">
                      </div>
                    </div>
                    <div class="col-md-1">
                      <button type="button" class="btn btn-danger btn-xs" ng-click="removeItem(item)">
                        <span class="glyphicon glyphicon-trash"></span>
                      </button>
                    </div>
                  </div>
                  <hr>
                </li>
              </ul>
            </div>
            <div class="box-footer" ng-show="order.length">
              <div class="row">
                <div class="col col-md-6">
                  <div class="form-group">
                    <p>Metode Pembayaran</p>
                    <select class="form-control select2" name="dt[id_bank]" style="width: 100%">
                      <option value="">--Pilih Bank--</option>
                      <?php
                      $master_bank = $this->mymodel->selectData("master_bank");
                      foreach ($master_bank as $key => $value) {
                        ?>
                        <option value="<?= $value['id'] ?>"><?= $value['value'] ?></option>
                      <?php } ?>
                    </select>
                  </div>
                </div>
                <div class="col col-md-6">
                  <div class="form-group">
                    <p>Kurir Pengiriman</p>
                    <select class="form-control select2" name="dt[id_kurir]" style="width: 100%">
                      <option value="">--Pilih Kurir--</option>
                      <?php
                      $master_kurir = $this->mymodel->selectData("master_kurir");
                      foreach ($master_kurir as $key => $value) {
                        ?>
                        <option value="<?= $value['id'] ?>"><?= $value['value'] ?></option>
                      <?php } ?>
                    </select>
                  </div>
                </div>
                <div class="col col-md-6">
                  <div class="form-group">
                    <p>Biaya Kirim</p>
                    <input type="number" name="dt[biaya_kirim]" class="form-control">
                  </div>
                </div>
                <div class="col col-md-6">
                  <div class="form-group">
                    <p>Dropshipper</p>
                    <select class="form-control select2" name="dt[id_dropshipper]" style="width: 100%">
                      <option value="">--Pilih Dropshipper--</option>
                      <?php
                      $customer = $this->mymodel->selectData("customer");
                      foreach ($customer as $key => $value) {
                        ?>
                        <option value="<?= $value['id'] ?>"><?= $value['nama_customer'] ?></option>
                      <?php } ?>
                    </select>
                  </div>
                </div>
                <div class="col-md-12">
                  <div class="row">
                    <div class="col col-lg-12">
                      <div class="form-group">
                        <p>TOTAL</p>
                        <input type="text" readonly name="dt[sub_total]" class="form-control" id="inputtotal" ng-value="getTotal()" placeholder="Total">
                        <p class="help-block">Total Pembelian Bisa Berubah jika terdapat, Biaya Lain dan Diskon disetiap Produk serta terdapat Biaya Kirim</p>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-12">
                  <div class="row">
                    <div class="col-md-6">
                      <div class="form-group">
                        <p>BAYAR</p>
                        <input type="number" class="form-control" name="dt[jumlah_bayar]" id="pay">
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col col-md-6">
                  <div class="form-group">
                    <p>CHECKOUT SEKARANG?</p>
                    <button type="submit" class="btn btn-success btn-flat" id="btnplaceorder">CHECKOUT</button>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="row">
                    <div class="col col-md-12">
                      <div class="form-group">
                        <p>BATALKAN TRANSAKSI?</p>
                        <button type="submit" class="btn btn-danger btn-flat" ng-click="clearOrder()" ng-disabled="!order.length">BATALKAN</button>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-12">
                  <div class="show_error"></div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </form>
    </div>
  </section>
</div>
<script>
  var app = angular.module('myApp', []);
  app.controller('PosController', function($scope) {
    $scope.drinks = [
      <?php foreach ($produk as $d) { ?> {
          id: "<?= trim($d['id']) ?>",
          name: "<?= trim($d['nama_produk']) ?>",
          stok: "<?= trim($d['jumlah_stok']) ?>",
          ukuran: "<?= trim($d['ukuran']) ?>",
          ukuran_id: "<?= trim($d['ukuran_id']) ?>",
          warna: "<?= trim($d['warna_produk']) ?>",
          ket: "<?= trim($d['ket_produk']) ?>",
          kategori: "<?= trim($d['nama_kategori']) ?>",
          price: "<?= trim($d['harga_jual']) ?>",
          priceb: "<?= trim($d['harga_produksi']) ?>",
          image: "<?= trim($d['dir']) ?>",
        },
      <?php } ?>
    ];
    $scope.order = [];
    $scope.new = {};
    $scope.totOrders = 0;
    var url = window.location.protocol + "://" + window.location.host + "/" + window.location.pathname;
    $scope.getDate = function() {
      var today = new Date();
      var mm = today.getMonth() + 1;
      var dd = today.getDate();
      var yyyy = today.getFullYear();
      var date = dd + "/" + mm + "/" + yyyy
      return date
    };
    $scope.addToOrder = function(item, qty) {
      var flag = 0;
      if ($scope.order.length > 0) {
        for (var i = 0; i < $scope.order.length; i++) {
          if (item.id === $scope.order[i].id) {
            item.qty += qty;
            flag = 1;
            break;
          }
        }
        if (flag === 0) {
          item.qty = 1;
        }
        if (item.qty < 2) {
          $scope.order.push(item);
        }
      } else {
        item.qty = qty;
        $scope.order.push(item);
      }
    };
    $scope.removeOneEntity = function(item) {
      for (var i = 0; i < $scope.order.length; i++) {
        if (item.id === $scope.order[i].id) {
          item.qty -= 1;
          if (item.qty === 0) {
            $scope.order.splice(i, 1);
          }
        }
      }
    };
    $scope.removeItem = function(item) {
      for (var i = 0; i < $scope.order.length; i++) {
        if (item.id === $scope.order[i].id) {
          $scope.order.splice(i, 1);
        }
      }
    };
    $scope.getTotal = function() {
      returnCalculte();
      var tot = 0;
      for (var i = 0; i < $scope.order.length; i++) {
        tot += ($scope.order[i].price * $scope.order[i].qty)
      }
      return tot;
    };
    $scope.clearOrder = function() {
      $scope.order = [];
    };
    $scope.checkout = function(index) {
      alert($scope.getDate() + " - Order Number: " + ($scope.totOrders + 1) + "\n\nOrder amount: $" +
        $scope.getTotal().toFixed(2) + "\n\nPayment received. Thanks.");
      $scope.order = [];
      $scope.totOrders += 1;
    };
  });
  $(document).ready(function() {
    $('#tableData').DataTable();
  });
  $(document).ready(function() {
    $("#myTab a").click(function(e) {
      e.preventDefault();
      $(this).tab('show');
    });
  });

  function returnCalculte() {
    a = $("#pay").val();
    b = $("#inputtotal").val();
    c = a - b;
    if (c >= 0) {
      $("#kembalian").val(c);

    } else {
      $("#kembalian").val(0);
    }
  }
  $("#pay").keyup(function() {
    returnCalculte();
  });
  $("#filter").keyup(function() {
    var filter = $(this).val(),
      count = 0;
    $('#results div').each(function() {
      if ($(this).text().search(new RegExp(filter, "i")) < 0) {
        $(this).hide();
      } else {
        $(this).show();
        count++;
      }
    });
  });

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
            window.location.href = "<?= base_url('master/transaksi_ready') ?>";
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
  
  var number = 0;

  function setKemasan() {
    var kemasan_id = $('#kemasan').val();
    number = number + 1;
    $.ajax({
      url: "<?= base_url() ?>ajax/get_kemasan/" + kemasan_id,
      type: "GET",
      dataType: "json",
      success: function(data) {
        $("#valueKemasan").remove();
        $.each(data, function(key, value) {
          $("#valueKemasan").append('<tr>' +
            '<td>' + value.value + '<input type="hidden" name="kemasanId[]" value="' + value.id + '"></td>' +
            '<td>' + value.keterangan + '</td>' +
            '<td><input class="form-control" type="number" value="1" name="kemasanQty[]" id="kemasanQty_' + number + '" onchange="qtyChange(' + number + ')"></td>' +
            '<td> Rp ' + maskRupiah(value.hpp) + '<input id="kemasanHPP_' + number + '" type="hidden" value="' + value.hpp + '"></td>' +
            '<td>' +
            '<input class="form-control" type="text" value="Rp ' + maskRupiah(value.hpp) + '" readonly id="kemasanTotalview_' + number + '">' +
            '<input type="hidden" value="' + value.hpp + '" name="kemasanHargaTotal[]" id="kemasanTotal_' + number + '"></td>' +
            '</tr>');
        });
      }
    });
  }

  function qtyChange(id) {
    var hargaSatuan = $("#kemasanHPP_" + id).val();
    var qty = $("#kemasanQty_" + id).val();
    var total = parseInt(hargaSatuan) * parseInt(qty);
    $("#kemasanTotalview_" + id).val("Rp " + maskRupiah(total));
    $("#kemasanTotal_" + id).val(total);
  }
</script>