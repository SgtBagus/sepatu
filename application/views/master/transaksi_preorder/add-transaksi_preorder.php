<?php
// print_r($produk);
// die();
?>
<!-- Content Wrapper. Contains page content -->

<div class="content-wrapper" data-ng-controller="PosController">

  <!-- Content Header (Page header) -->

  <section class="content-header">

    <h1>

      Transaksi Preorder

      <small>master</small>

    </h1>

    <ol class="breadcrumb">

      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>

      <li><a href="#">master</a></li>

      <li class="active">Transaksi Preorder</li>

    </ol>

  </section>

  <!-- Main content -->

  <section class="content">

    <div class="row">

      <form method="POST" action="<?= base_url('master/Transaksi_preorder/store') ?>" id="upload-create">
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
                <select class="form-control select2" required name="dt[id_customer]">
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
                <button class="btn btn-sm btn-primary"><i class="fa fa-plus"></i></button>
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
                    </div>
                  </div>
                </a>
              </div>
            </div>

          </div>
        </div>
        <div class="col-md-12">

          <div class="box box-warning">

            <!-- /.box-header -->

            <div class="box-header">

              <div class="row">
                <div class="col-md-7"><span class="panel-title">Detail Transaksi</span></div>
                <div class="col-md-5"><span>HARI INI: {{getDate()}}</span></div>
              </div>

            </div>

            <div class="box-body" style="overflow: scroll ;max-height: 250px;">
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
                    <div class="col-md-1">
                      <span class="badge badge-left" ng-bind="item.qty"></span>
                    </div>
                    <div class="col-md-2">
                      {{item.name}}
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
                      <div class="col-md-6">
                        <select class="form-control" name="ukuran[]">
                          <option value="">Pilih Ukuran</option>
                          <?php
                          $master_ukuran = $this->mymodel->selectData("master_ukuran");
                          foreach ($master_ukuran as $key => $value) {
                            ?>
                            <option value="<?= $value['id'] ?>"><?= $value['value'] ?></option>
                          <?php } ?>
                        </select>
                      </div>
                      <div class="col-md-6">
                        <input name="warna[]" class="form-control" placeholder="Warna Sepatu" type="number">
                      </div>
                      <div class="col-md-12">
                        <textarea name="keterangan[]" style="margin-top: 10px" class="form-control" placeholder="Warna Sepatu"></textarea>
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
                <div class="col-md-6">
                  <div class="row">
                    <div class="col col-lg-12">
                      <div class="form-group">
                        <p>TOTAL</p>
                        <input type="text" readonly name="total" class="form-control" id="inputtotal" ng-value="getTotal()" placeholder="Total">
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col col-md-6">
                  <div class="form-group">
                    <p>Metode Pembayaran</p>
                    <select class="form-control select2" name="">
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
                    <select class="form-control select2" name="dt[id_kurir]">
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
                    <input type="text" name="dt[biaya_kirim]" class="form-control">
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="row">
                    <div class="col col-lg-12">
                      <div class="form-group">
                        <p>BAYAR</p>
                        <input type="number" class="form-control" required name="pay" id="pay">
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col col-md-6">
                  <div class="form-group">
                    <p>Dropshipper</p>
                    <select class="form-control select2" name="">
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
              </div>
              <!-- 
                    <h3><span class="label label-primary">Total: {{getTotal() | currency:"RP
                            ":0}}</span></h3> -->
            </div>

            <!-- /.box-body -->

          </div>

          <!-- /.box -->



          <!-- /.box -->

        </div>

        <!-- /.col -->


      </form>



      <!-- /.col -->

    </div>

    <!-- /.row -->

  </section>

  <!-- /.content -->

</div>

<!-- /.content-wrapper -->

<script>
  // Code goes here
  var app = angular.module('myApp', []);

  app.controller('PosController', function($scope) {

    $scope.drinks = [
      <?php foreach ($produk as $d) { ?> {
          id: "<?= trim($d['id']) ?>",
          name: "<?= trim($d['nama_produk']) ?>",
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
</script>

<script>
  $(document).ready(function() {
    $('#tableData').DataTable();
  });
</script>
<script>
  $(document).ready(function() {
    $("#myTab a").click(function(e) {
      e.preventDefault();
      $(this).tab('show');
    });
  });
</script>
<script>
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
</script>

<script>
  $("#filter").keyup(function() {

    // Retrieve the input field text and reset the count to zero
    var filter = $(this).val(),
      count = 0;

    // Loop through the comment list
    $('#results div').each(function() {


      // If the list item does not contain the text phrase fade it out
      if ($(this).text().search(new RegExp(filter, "i")) < 0) {
        $(this).hide();

        // Show the list item if the phrase matches and increase the count by 1
      } else {
        $(this).show();
        count++;
      }

    });

  });
</script>

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
            window.location.href = "<?= base_url('master/Transaksi') ?>";
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