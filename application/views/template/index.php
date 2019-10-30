<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>Dashboard</h1>
    <hr />
    <!-- <h5 style="padding-left:1px;">Welcome to SmartSoft Dashboard</h5> -->
  </section>

  <!-- Main content -->
  <section class="content">
    <!-- <div class="row">
        <div class="col-md-12">
          <div class="alert alert-danger">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            <strong>Perhatian !</strong><br> Dimohon untuk semua yang akan menggunakan SOP Application jangan ada yang menambah/menggenerate CRUD apapun , dikarenakan bisa menganggu standart yang sudah ada ...
          </div>
        </div>
      </div> -->
    <!-- Main row -->
    <div class="row">
      <section class="col-lg-6 col-md-6 col-xs-12">
        <div class="row">
          <div class="col-md-12">
            <div class="box box-primary">
              <div class="box-header">
                <h4>Produk Terjual Bulan ini</h4>
              </div>
              <div class="box-body">
                <div id="container">
                  <canvas id="piecanvas"></canvas>
                </div>

                <script>
                  var canvas = document.getElementById("piecanvas");
                  var ctx = canvas.getContext("2d");
                  var piecanvasData = {
                    labels: [
                      "Wedges",
                      "Flat Shoes",
                      "Sneakers",
                      "Boots"
                    ],
                    datasets: [{
                      label: "data 1",
                      backgroundColor: ["rgba(255, 99, 132, 0.5)", "rgba(51, 208, 42, 0.5)", "rgba(255, 206, 86, 0.5)", "rgba(75, 192, 192, 0.5)", "rgba(153, 102, 255, 0.5)"],
                      borderColor: ["rgba(255, 99, 132, 1)", "rgba(51, 208, 42, 1)", "rgba(255, 206, 86, 1)", "rgba(75, 192, 192, 1)", "rgba(153, 102, 255, 1)"],
                      borderWidth: 1,
                      fillColor: "rgba(220,103,20,0.9)",
                      strokeColor: "rgba(220,103,20,0.8)",
                      pointColor: "#73b45a",
                      pointStrokeColor: "#fff",
                      pointHighlightFill: "#fff",
                      pointHighlightStroke: "rgba(220,103,20,1)",
                      data: [
                        "20",
                        "15",
                        "30",
                        "5"
                      ]
                    }, ]

                  }
                  var myNewChart = new Chart(ctx, {
                    type: "pie",
                    data: piecanvasData,

                  });
                </script>
              </div>
            </div>
          </div>
        </div>
      </section>

      <section class="col-lg-6 col-md-6 col-xs-12">
        <div class="row">
          <div class="col-md-12">
            <div class="col-lg-6 col-xs-12">
              <!-- small box -->
              <div class="small-box bg-blue">
                <div class="inner" style="padding: 37px 10px;">
                  <h5 class="text-uppercase"><strong>total</strong></h5>
                  <h3>90000000</h3>
                </div>
                <div class="icon"><br>
                  <h3>Laba</h3>
                </div>
                <a href="#" class="small-box-footer">Detail <i class="mdi mdi-chevron-right"></i></a>
              </div>
            </div>
            <div class="col-lg-6 col-xs-12">
              <div class="small-box bg-yellow">
                <div class="inner" style="padding: 37px 10px;">
                  <h5 class="text-uppercase"><strong>total</strong></h5>
                  <h3>1320</h3>
                </div>
                <div class="icon"><br>
                  <h3>Penjualan</h3>
                </div>
                <a href="#" class="small-box-footer">Detail <i class="mdi mdi-chevron-right"></i></a>
              </div>
            </div>
            <div class="col-lg-6 col-xs-12">
              <div class="small-box bg-red">
                <div class="inner" style="padding: 37px 10px;">
                  <h5 class="text-uppercase"><strong>total</strong></h5>
                  <h3>980</h3>
                </div>
                <div class="icon"><br>
                  <h3>Pelanggan</h3>
                </div>
                <a href="#" class="small-box-footer">Detail <i class="mdi mdi-chevron-right"></i></a>
              </div>
            </div>
            <div class="col-lg-6 col-xs-12">
              <div class="small-box bg-green">
                <div class="inner" style="padding: 37px 10px;">
                  <h5 class="text-uppercase"><strong>total</strong></h5>
                  <h3>100</h3>
                </div>
                <div class="icon"><br>
                  <h3>Produk</h3>
                </div>
                <a href="#" class="small-box-footer">Detail <i class="mdi mdi-chevron-right"></i></a>
              </div>
            </div>
            <!-- ./col -->

          </div>
        </div>
      </section>




      <!-- /.Left col -->

    </div>
    <!-- /.row (main row) -->
  </section>
</div>