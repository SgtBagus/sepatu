<?php 
if($_GET['user']==""){
  redirect('login','refresh');
}
$this->session->sess_destroy();
$user=  $this->mymodel->selectDataone('user',['nip'=>$_GET['user']]);
$file=  $this->mymodel->selectDataone('file',['table_id'=>$user['id'],'table'=>'user']);



$profil = base_url('assets/dist/img/user1-128x128.jpg');
if($file['dir']!=""){
  $profil = base_url($file['dir']);
}
?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title><?= TITLE_APPLICATION ?></title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="<?= base_url('assets') ?>/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?= base_url('assets') ?>/bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="<?= base_url('assets') ?>/bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?= base_url('assets') ?>/dist/css/AdminLTE.min.css">
  <link rel="stylesheet" href="<?= base_url('assets/') ?>dist/css/main.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <!-- <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic"> -->
</head>
<body class="hold-transition lockscreen" style="<?= LOGIN_BACKGROUND ?>">
<!-- Automatic element centering -->
<div style="width: 100%;
    min-height: 100vh;
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    align-items: center;
    padding: 15px;
    background-repeat: no-repeat;
    background-position: center;
    background-size: cover;
    position: relative;
    z-index: 1;">
  <div class="lockscreen-wrapper" style="<?= LOGIN_BOX  ?>;padding: 20px;color: #607d8b; margin-top: 0;border-radius: 5px;">
    <div class="lockscreen-logo">
      <a href="<?= base_url('login/lockscreen') ?>" style="color:#607d8b !important"><b><?= APPLICATION ?></b></a>
    </div>
    <!-- User name -->
        <div class="show_error"></div>
    <div class="lockscreen-name"><?= $user['name'] ?></div>

    <!-- START LOCK SCREEN ITEM -->
    <div class="lockscreen-item">
      <!-- lockscreen image -->
      <div class="lockscreen-image">
        <img src="<?= LOGO ?>" alt="User Image">
      </div>
      <!-- /.lockscreen-image -->

      <!-- lockscreen credentials (contains the form) -->
        <form action="<?= base_url('login/act_login')?>" class="lockscreen-credentials" method="post" id="upload">

          <input type="hidden" name="username" value="<?= $_GET['user'] ?>">
        <div class="input-group">
          <input type="password" class="form-control" name="password" placeholder="password" style="border-bottom: solid 1px #ddd;">

          <div class="input-group-btn">
            <button type="submit" class="btn"><i class="fa fa-arrow-right text-muted"></i></button>
          </div>
        </div>
      </form>
      <!-- /.lockscreen credentials -->

    </div>
    <!-- /.lockscreen-item -->
    <div class="help-block text-center" style="color: #dadada">
      Enter your password to retrieve your session
    </div>
   <br>
    <div class="lockscreen-footer text-center">
      Copyright <?= COPYRIGHT ?>
    </div>
  </div>
</div>
<script src="<?= base_url('assets') ?>/bower_components/jquery/dist/jquery.min.js"></script>

<!-- /.center -->
<script type="text/javascript">
        $("#upload").submit(function(){

            var mydata = new FormData(this);
            var form = $(this);
            $.ajax({
                type: "POST",
                url: form.attr("action"),
                data: mydata,
                cache: false,
                contentType: false,
                processData: false,
                beforeSend : function(){
                    $("#send-btn").addClass("disabled").html("<i class='fa fa-spinner fa-spin'></i>  Send...");
                    $(".show_error").slideUp().html("");

                },
                    success: function(response, textStatus, xhr) {
                    var str = response;
                    if (str.indexOf("oke") != -1){
                        document.getElementById('upload').reset();
                        $("#send-btn").removeClass("disabled").html("Sign in");
                         location.href = '<?= base_url("/") ?>';
                    }else{
                         $("#send-btn").removeClass("disabled").html("Sign in");
                        $(".show_error").hide().html(response).slideDown("fast");
                       
                        
                    }
                },
                error: function(xhr, textStatus, errorThrown) {
            
                }
            });
            return false;
            });
    </script>
<!-- jQuery 3 -->
<!-- Bootstrap 3.3.7 -->
<script src="<?= base_url('assets') ?>/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
</body>
</html>
