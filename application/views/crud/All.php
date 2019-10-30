<?php

$query = "SELECT COLUMN_NAME,COLUMN_KEY FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA='".$this->db->database."' AND TABLE_NAME='".$table."' AND COLUMN_KEY = 'PRI'";

$pri = $this->mymodel->selectWithQuery($query);

$primary = $pri[0]['COLUMN_NAME'];

$c = ucfirst(str_replace(".php", "", $controller));



$stringall= "



 <!-- Content Wrapper. Contains page content -->

  <div class=\"content-wrapper\">

    <!-- Content Header (Page header) -->

    <section class=\"content-header\">

      <h1>

        ".$this->template->label($table)."

        <small>master</small>

      </h1>

      <ol class=\"breadcrumb\">

        <li><a href=\"#\"><i class=\"fa fa-dashboard\"></i> Home</a></li>

        <li><a href=\"#\">master</a></li>

        <li class=\"active\">".$this->template->label($table)."</li>

      </ol>

    </section>

    <!-- Main content -->

    <section class=\"content\">

      <div class=\"row\">

        <div class=\"col-xs-12\">

          <div class=\"box\">

            <!-- /.box-header -->

            <div class=\"box-header\">

              <div class=\"row\">

                <div class=\"col-md-6\">

                  <select onchange=\"loadtable(this.value)\" id=\"select-status\" style=\"width: 150px\" class=\"form-control\">

                      <option value=\"ENABLE\">ENABLE</option>

                      <option value=\"DISABLE\">DISABLE</option>



                  </select>

                </div>

                <div class=\"col-md-6\">

                  <div class=\"pull-right\">";
      if($form_type=="page"){
                  
       $stringall .= "          <a href=\"<?= base_url('master/".$c."/create') ?>\">

                    <button type=\"button\" class=\"btn btn-sm btn-success\"><i class=\"fa fa-plus\"></i> Tambah ".$this->template->label($table)."</button> 

                  </a>";

          }else{

       $stringall .= "          <a href=\"javascript::void(0)\" onclick=\"create()\">

        <button type=\"button\" class=\"btn btn-sm btn-success\"><i class=\"fa fa-plus\"></i> Tambah ".$this->template->label($table)."</button> 

      </a>";

          }

                  
       $stringall .= "


                  <a href=\"<?= base_url('fitur/ekspor/".$table."') ?>\" target=\"_blank\">

                    <button type=\"button\" class=\"btn btn-sm btn-warning\"><i class=\"fa fa-file-excel-o\"></i> Ekspor ".$this->template->label($table)."</button> 

                  </a>

                  <button type=\"button\" class=\"btn btn-sm btn-info\" onclick=\"\$('#modal-impor').modal()\"><i class=\"fa fa-file-excel-o\"></i> Import ".$this->template->label($table)."</button>

                  </div>

                </div>  

              </div>

              

            </div>

            <div class=\"box-body\">

                <div class=\"show_error\"></div>



              <div class=\"table-responsive\">

                <div id=\"load-table\"></div>

              </div>

            </div>

            <!-- /.box-body -->

          </div>

          <!-- /.box -->

        </div>

        <!-- /.col -->

      </div>

      <!-- /.row -->

    </section>

    <!-- /.content -->

  </div>

  <!-- /.content-wrapper -->";


if($form_type=="modal"){
$stringall .= "
  
  <div class=\"modal fade bd-example-modal-sm\" tabindex=\"-1\" ".$table."=\"dialog\" aria-labelledby=\"mySmallModalLabel\" aria-hidden=\"true\" id=\"modal-form\">

      <div class=\"modal-dialog modal-md\">

          <div class=\"modal-content\">


              <div class=\"modal-header\">

                  <h5 class=\"modal-title\" id=\"title-form\" ></h5>

                  <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">

                      <span aria-hidden=\"true\">&times;</span>

                  </button>

              </div>

              <div class=\"modal-body\">
                <div id=\"load-form\"></div>

              </div>

              

          </div>

      </div>

  </div> ";

}
$stringall .= "


  <div class=\"modal fade bd-example-modal-sm\" tabindex=\"-1\" ".$table."=\"dialog\" aria-labelledby=\"mySmallModalLabel\" aria-hidden=\"true\" id=\"modal-delete\">

      <div class=\"modal-dialog modal-sm\">

          <div class=\"modal-content\">

              <form id=\"upload-delete\" action=\"<?= base_url('master/".$c."/delete') ?>\">

              <div class=\"modal-header\">

                  <h5 class=\"modal-title\">Confirm delete</h5>

                  <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">

                      <span aria-hidden=\"true\">&times;</span>

                  </button>

              </div>

              <div class=\"modal-body\">

                  <input type=\"hidden\" name=\"".$primary."\" id=\"delete-input\">

                  <p>Are you sure to delete this data?</p>

              </div>

              <div class=\"modal-footer\">

                  <button type=\"submit\" class=\"btn btn-danger btn-send\">Yes, Delete</button>

                  <button type=\"button\" class=\"btn btn-secondary\" data-dismiss=\"modal\">Cancel</button>

              </div>

              </form>

          </div>

      </div>

  </div> 



  <div class=\"modal fade\" id=\"modal-impor\">

    <div class=\"modal-dialog\">

      <div class=\"modal-content\">

        <div class=\"modal-header\">

          <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-hidden=\"true\">&times;</button>

          <h4 class=\"modal-title\">Impor ".$this->template->label($table)."</h4>

        </div>

        <form action=\"<?= base_url('fitur/impor/".$table."') ?>\" method=\"POST\"  enctype=\"multipart/form-data\">



        <div class=\"modal-body\">

            <div class=\"form-group\">

              <label for=\"\">File Excel</label>

              <input type=\"file\" class=\"form-control\" id=\"\" name=\"file\" placeholder=\"Input field\">

            </div>

        </div>

        <div class=\"modal-footer\">

          <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\"><i class=\"fa fa-times\"></i> Close</button>

          <button type=\"submit\" class=\"btn btn-primary\"><i class=\"fa fa-save\"></i> Save</button>

        </div>

        </form>



      </div>

    </div>

  </div>



  <script type=\"text/javascript\">

    

        function loadtable(status) {

            var table = '<table class=\"table table-bordered\" id=\"mytable\">'+

                   '     <thead>'+

                   '     <tr class=\"bg-success\">'+

                   '       <th style=\"width:20px\">No</th>'+";

                      foreach ($show as $key => $value) {



$stringall .=     "'<th>".$this->template->label($value)."</th>'+";



                  }

                   





$stringall.=   "'       <th style=\"width:150px\">Status</th>'+

                   '       <th style=\"width:150px\"></th>'+

                   '     </tr>'+

                   '     </thead>'+

                   '     <tbody>'+

                   '     </tbody>'+

                   ' </table>';

             // body...

             \$(\"#load-table\").html(table)



              var t = \$(\"#mytable\").dataTable({

                initComplete: function() {

                    var api = this.api();

                    \$('#mytable_filter input')

                            .off('.DT')

                            .on('keyup.DT', function(e) {

                                if (e.keyCode == 13) {

                                    api.search(this.value).draw();

                        }

                    });

                },

                oLanguage: {

                    sProcessing: \"loading...\"

                },

                processing: true,

                serverSide: true,

                ajax: {\"url\": \"<?= base_url('master/".$c."/json?status=') ?>\"+status, \"type\": \"POST\"},

                columns: [

                    {\"data\": \"".$primary."\",\"orderable\": false},";



          $cek = 1;

          foreach ($show as $key => $value) {

$stringall.=       "{\"data\": \"".$value."\"},";



          $cek++;

          }                  



$stringall.=      "

                   {\"data\": \"status\"},

                    {   \"data\": \"view\",

                        \"orderable\": false

                    }

                ],

                order: [[1, 'asc']],

                columnDefs : [

                    { targets : [".$cek."],

                        render : function (data, type, row, meta) {

                              if(row['status']=='ENABLE'){

                                var htmls = '<a href=\"<?= base_url('master/".$c."/status/') ?>'+row['".$primary."']+'/DISABLE\">'+

                                            '    <button type=\"button\" class=\"btn btn-sm btn-sm btn-success\"><i class=\"fa fa-home\"></i> ENABLE</button>'+

                                            '</a>';

                              }else{

                                var htmls = '<a href=\"<?= base_url('master/".$c."/status/') ?>'+row['".$primary."']+'/ENABLE\">'+

                                            '    <button type=\"button\" class=\"btn btn-sm btn-sm btn-danger\"><i class=\"fa fa-home\"></i> DISABLE</button>'+

                                            '</a>';



                              }

                              return htmls;

                          }

                      }

                ],

             

                rowCallback: function(row, data, iDisplayIndex) {

                    var info = this.fnPagingInfo();

                    var page = info.iPage;

                    var length = info.iLength;

                    var index = page * length + (iDisplayIndex + 1);

                    \$('td:eq(0)', row).html(index);

                }

            });

         }





         loadtable(\$(\"#select-status\").val());

        ";
if($form_type=="page"){
  $stringall.="   

      function edit(id) {

            location.href = \"<?= base_url('master/".$c."/edit/') ?>\"+id;

         }";

    }else{
  $stringall.="   

      function edit(id) {

            // location.href = \"<?= base_url('master/".$c."/edit/') ?>\"+id;
            $(\"#load-form\").html('loading...');
            
            $(\"#modal-form\").modal();
            $(\"#title-form\").html('Edit ".$this->template->label($table)."');
            $(\"#load-form\").load(\"<?= base_url('master/".$c."/edit/') ?>\"+id);
            
         }

      function create() {
            $(\"#load-form\").html('loading...');

            // location.href = \"<?= base_url('master/".$c."/edit/') ?>\"+id;
            $(\"#modal-form\").modal();
            $(\"#title-form\").html('Create ".$this->template->label($table)."');
            $(\"#load-form\").load(\"<?= base_url('master/".$c."/create/') ?>\");
            
         }




         ";

    }



$stringall.="         function hapus(id) {

            \$(\"#modal-delete\").modal('show');

            \$(\"#delete-input\").val(id);

            

         }

         \$(\"#upload-delete\").submit(function(){

            event.preventDefault();

            var form = \$(this);

            var mydata = new FormData(this);



            \$.ajax({

                type: \"POST\",

                url: form.attr(\"action\"),

                data: mydata,

                cache: false,

                contentType: false,

                processData: false,

                beforeSend : function(){

                    \$(\".btn-send\").addClass(\"disabled\").html(\"<i class='la la-spinner la-spin'></i>  Processing...\").attr('disabled',true);

                    \$(\".show_error\").slideUp().html(\"\");

                },

                success: function(response, textStatus, xhr) {

                   var str = response;

                    if (str.indexOf(\"success\") != -1){

                        \$(\".show_error\").hide().html(response).slideDown(\"fast\");

                       

                        \$(\".btn-send\").removeClass(\"disabled\").html('Yes, Delete it').attr('disabled',false);

                    }else{

                         setTimeout(function(){ 

                           \$(\"#modal-delete\").modal('hide');

                        }, 1000);

                        \$(\".show_error\").hide().html(response).slideDown(\"fast\");

                        \$(\".btn-send\").removeClass(\"disabled\").html('Yes , Delete it').attr('disabled',false);

                        loadtable(\$(\"#select-status\").val());

                    }

                },

                error: function(xhr, textStatus, errorThrown) {

            

                }

            });

            return false;

    

        });

  </script>";

    $this->template->createFile($stringall, $path);



  ?>