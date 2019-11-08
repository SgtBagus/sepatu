<div class="content-wrapper">
  <section class="content-header">
    <h1>Dashboard</h1>
  </section>
  <section class="content">
    <div class="row">
      <div class="col-lg-3 col-xs-6">
        <div class="small-box bg-aqua">
          <div class="inner">
            <h3><?= $itemTerjual ?></h3>
            <p>Item Terjual Hari Ini</p>
          </div>
          <div class="icon">
            <i class="ion ion-bag"></i>
          </div>
          <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
        </div>
      </div>
      <div class="col-lg-3 col-xs-6">
        <!-- small box -->
        <div class="small-box bg-green">
          <div class="inner">
            <h3>Rp. <?= number_format($totalOmzet, 0, ',', '.') ?>,-</h3>
            <p>Total Omzet Hari Ini (Ongkir)</p>
          </div>
          <div class="icon">
            <i class="ion ion-stats-bars"></i>
          </div>
          <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
        </div> 
      </div>
      <div class="col-lg-3 col-xs-6">
        <div class="small-box bg-red">
          <div class="inner">
            <h3>Rp. <?= number_format($totalOmzetNONonkir, 0, ',', '.') ?>,-</h3>
            <p>Omzet Hari Ini (Tanpa Ongkir)</p>
          </div>
          <div class="icon">
            <i class="ion ion-stats-bars"></i>
          </div>
          <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
        </div>
      </div>
      <div class="col-lg-3 col-xs-6">
        <div class="small-box bg-yellow">
          <div class="inner">
            <h3><?= $belumLunas ?></h3>
            <p>Belum Lunas</p>
          </div>
          <div class="icon">
            <i class="ion ion-stats-bars"></i>
          </div>
          <a href="#" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-lg-6 col-xs-6">
        <div class="box">
          <div class="box-body">
            <h4>Data 10 Produk Terlaris</h4>
            <div class="table-responsive">
              <table class="table table-bordered table-striped mytable">
                <thead>
                  <tr class="bg-success">
                    <th style="width:20px">No</th>
                    <th>Nama Produk</th>
                    <th>Jumlah Terjual</th>
                    <th>Sisa Stok</th>
                  </tr>
                </thead>
                <tbody>
                  <?php $no = 1; foreach ($produk as $row) { ?> 
                    <tr>
                      <td><?= $no ?></td>
                      <td><?= $row['nama_produk'] ?></td>
                      <td><?= $row['qty'] ?></td>
                      <td><?= $row['jumlah_stok'] ?></td>
                      <?php $no++; } ?>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      <div class="col-lg-6 col-xs-6">
        <div class="box">
          <div class="box-body">
            <h4>Data 10 Kota Terlaris</h4>
            <div class="table-responsive">
              <table class="table table-bordered table-striped mytable">
                <thead>
                  <tr class="bg-success">
                    <th style="width:20px">No</th>
                    <th>Provinsi</th>
                    <th>Jumlah Pembeli</th>
                  </tr>
                </thead>
                <tbody>
                  <?php $no = 1; foreach ($kota as $row) { ?> 
                    <tr>
                      <td><?= $no ?></td>
                      <td><?= $row['provinsi'] ?></td>
                      <td><?= $row['COUNT'] ?></td>
                      <?php $no++; } ?>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>