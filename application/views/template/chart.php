   <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>Chart</h1>
      <h5 style="padding-left:1px;">Chart Smartsoft</h5>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Main row -->
      <div class="row">
        <!-- Left col -->
        <?php 
          $data = $this->mymodel->selectData('grafik');
          foreach ($data as $databar) {
            $value[] = $databar['value'];
            // $text[] = $databar['name'];

            $text = array('0' => 'Jan',
                          '1' => 'Feb',
                          '2' => 'Mar',
                          '3' => 'Apr',
                          '4' => 'Mei',
                          '5' => 'Jun',
                          '6' => 'Jul',
                          '7' => 'Aug',
                          '8' => 'Sep',
                          '9' => 'Okt',
                          '10' => 'Nov',
                          '11' => 'Des',
                         );
            $labelpiedonut = array('0' => 'Web Design',
                                   '1' => 'Android Dev',
                                   '2' => 'React Native',
                                   '3' => 'Web Developer',
                                   '4' => 'Java Dev',
                                  );

            $value2 = array('0' => '10',
                            '1' => '30',
                            '2' => '40',
                            '3' => '70',
                            '4' => '90',
                            '5' => '80',
                            '6' => '30',
                            '7' => '40',
                            '8' => '20',
                            '9' => '40',
                            '10' => '50',
                            '11' => '20',
                           );
            $value3 = array('0' => '20',
                            '1' => '20',
                            '2' => '50',
                            '3' => '80',
                            '4' => '70',
                           );
            $bgcolor = array('0' => 'rgba(255, 99, 132, 0.5)',
                             '1' => 'rgba(51, 208, 42, 0.5)',
                             '2' => 'rgba(255, 206, 86, 0.5)',
                             '3' => 'rgba(75, 192, 192, 0.5)',
                             '4' => 'rgba(153, 102, 255, 0.5)',
                            );
            $bordercolor = array('0' => 'rgba(255, 99, 132, 1)',
                                 '1' => 'rgba(51, 208, 42, 1)',
                                 '2' => 'rgba(255, 206, 86, 1)',
                                 '3' => 'rgba(75, 192, 192, 1)',
                                 '4' => 'rgba(153, 102, 255, 1)',
                                );
          }
        ?>
        <section class="col-lg-6 col-md-6 col-xs-6">
          <div class="row">
            <div class="col-md-12">
              <div class="box box-primary">
                <div class="box-header">
                  <h4>Bar Chart</h4>
                </div>
                <div class="box-body">
                  <?php 
                    $datachart[] = array('labeldata'=>"data 1", //labeluntukdata
                                         'background'=>'rgba(234,88,88,0.5)', //labeluntukdata
                                         'border'=>'rgba(234,88,88,0.9)', //borderbackgroung perdata
                                         'data'=>json_encode($value) //value untuk chart
                                        );
                    $datachart[] = array('labeldata'=>"data 2", //labeluntukdata
                                         'background'=>'rgba(243,156,18,0.5)', //labeluntukdata
                                         'border'=>'rgba(243,156,18,0.9)', //borderbackgroung perdata
                                         'data'=>json_encode($value2) //value untuk chart
                                        );
                    echo $this->template->chart('barcanvas', //idcanvas
                                                'bar', //typechart
                                                $text, //label
                                                $datachart //data
                                               ); 
                  ?>
                </div>
              </div>
            </div>
          </div>
        </section>

        <section class="col-lg-6 col-md-6 col-xs-6">
          <div class="row">
            <div class="col-md-12">
              <div class="box box-primary">
                <div class="box-header">
                  <h4>Line Chart</h4>
                </div>
                <div class="box-body">
                  <?php 
                    $linechart[] = array('labeldata'=>"data 1", //labeluntukdata
                                         'background'=>'rgba(234,88,88,0.5)', //backgroung perdata
                                         'border'=>'rgba(234,88,88,0.9)', //borderbackgroung perdata
                                         'data'=>json_encode($value) //value untuk chart
                                        );
                    $linechart[] = array('labeldata'=>"data 2", //labeluntukdata
                                         'background'=>'rgba(243,156,18,0.5)', //backgroung perdata
                                         'border'=>'rgba(243,156,18,0.9)', //borderbackgroung perdata
                                         'data'=>json_encode($value2) //value untuk chart
                                        );
                    echo $this->template->chart('linecanvas', //idcanvas
                                                'line', //typechart
                                                $text, //label
                                                $linechart //data
                                               ); 
                  ?>
                </div>
              </div>
            </div>
          </div>
        </section>

        <section class="col-lg-6 col-md-6 col-xs-6">
          <div class="row">
            <div class="col-md-12">
              <div class="box box-primary">
                <div class="box-header">
                  <h4>Pie Chart</h4>
                </div>
                <div class="box-body">
                  <?php
                    $piechart[] = array('labeldata'=>"data 1", //labeluntukdata
                                        'background'=>json_encode($bgcolor), //backgroung perdata
                                        'border'=>json_encode($bordercolor), //borderbackgroung perdata
                                        'data'=>json_encode($value3) //value untuk chart
                                      );
                    echo $this->template->chart('piecanvas', //idcanvas
                                                'pie', //typechart
                                                json_encode($labelpiedonut), //label
                                                $piechart //data
                                               ); 
                ?>
                </div>
              </div>
            </div>
          </div>
        </section>

        <section class="col-lg-6 col-md-6 col-xs-6">
          <div class="row">
            <div class="col-md-12">
              <div class="box box-primary">
                <div class="box-header">
                  <h4>Doughnut Chart</h4>
                </div>
                <div class="box-body">
                  <?php
                    $doughnut[] = array('labeldata'=>"data 1", //labeluntukdata
                                        'background'=>json_encode($bgcolor), //backgroung perdata
                                        'border'=>json_encode($bordercolor), //borderbackgroung perdata
                                        'data'=>json_encode($value3) //value untuk chart
                                      );
                    echo $this->template->chart('doughnutcanvas', //idcanvas
                                                'doughnut', //typechart
                                                json_encode($labelpiedonut), //label
                                                $doughnut //data
                                               ); 
                ?>
                </div>
              </div>
            </div>
          </div>
        </section>
        <!-- /.Left col -->

      </div>
      <!-- /.row (main row) -->
    </section>
  </div>