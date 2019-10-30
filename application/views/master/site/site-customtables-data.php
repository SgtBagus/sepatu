            	<table class="table table-condensed table-hover table-bordered" id="mytable">
                    <thead>
                      <tr>
                        <th style="width:40px;">No</th>
                        <th style="width:70px;">Photo</th>
                        <th style="width: 200px">Cost center code</th>
                        <th>Name</th>
                        <th>Site</th>
                        <th>Status</th>
                        <th style="width:100px;">Action</th>
                      </tr>
                    </thead>
                    <tbody>
                    <?php 
                    $i=1;
                    foreach ($data as $rec) {
                      $img = $this->mymodel->selectDataone('file',array('table'=>'site','table_id'=>$rec['id']));

                    ?>
                     <tr>
                       <td><?= $i ?></td>
                       <td>
                         <?php if($img['dir']==""){ ?>
                          <img src="http://www.dbsmfg.com/img/default.gif" class="img-responsive" />
                        <?php }else{ ?>
                          <img src="<?= base_url($img['dir']) ?>" class="img-responsive" />

                        <?php } ?>
                       </td>
                       <td><?= $rec['code'] ?></td>
                       <td><?= $rec['name'] ?></td>
                       <td><?= $rec['site'] ?></td>
                       <td>
                         <?php if($rec['status']=="DISABLE"){ ?>
                          <label class="label label-success">DISABLE</label>
                         <?php }else{ ?>
                          <label class="label label-warning">ENABLE</label>
                         <?php } ?>
                       </td>
                       <td>
                         <?php 
                            if($rec['status']=="DISABLE"){
                              $class ="success";
                              $text ="Enable";
                              $colum = '<center><div class="btn-group"> <a onclick="hapus('.$rec['id'].')"  class="btn btn-xs btn-'.$class.'"><span class="txt-white fa fa-arrow-right"></span> '.$text.'</a>  </div></center>';
                            }else{
                              $class = "danger";
                              $text ="Disable";
                              $colum = '<center><div class="btn-group"> <a onclick="site_update('.$rec['id'].')" class="btn btn-xs btn-info"><span class="txt-white fa fa-edit"></span> Edit</a> <a onclick="hapus('.$rec['id'].')"  class="btn btn-xs btn-'.$class.'"><span class="txt-white fa fa-arrow-right"></span> '.$text.'</a>  </div></center>';
                            }
                            echo $colum;
                          ?>
                       </td>
                     </tr>
                   <?php $i++; } ?>
                    </tbody>
                  </table>
<style type="text/css">
    .pagination{
      display: inline-flex;
      margin: auto !important;
    }
</style>
<div class="paging no-margin text-center" id="pagin">
    <?= $this->pagination->create_links(); ?>
</div>
<br>


<script type="text/javascript">
     $("#pagin a").click(function(event){
        event.preventDefault();
        var id = this.id;
        var x = this.getAttribute("href");
        data('table',x);
      });
</script>