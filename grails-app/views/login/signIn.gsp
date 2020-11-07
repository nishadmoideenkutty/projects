<!--
  To change this license header, choose License Headers in Project Properties.
  To change this template file, choose Tools | Templates
  and open the template in the editor.
-->

<%@ page contentType="text/html;charset=UTF-8" %>

<html>
    <head>
       <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
 
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
   <link rel="stylesheet" href="${assetPath(src: 'plugins/fontawesome-free/css/all.min.css')}">
  <!-- Ionicons -->
  <link rel="stylesheet" href="${assetPath(src: 'iconic.css')}">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="${assetPath(src: 'adminlte.css')}">
  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
  
  
  
   <link rel="stylesheet" href="${assetPath(src: 'plugins/toastr/toastr.min.css')}">

<!-- jQuery -->
<script src="${assetPath(src: 'jquery/jquery.min.js')}"></script>
<!-- Bootstrap 4 -->
<script src="${assetPath(src: 'bootstrap/js/bootstrap.bundle.min.js')}"></script>


<script src="${assetPath(src: 'plugins/toastr/toastr.min.js')}"></script>

<!-- AdminLTE App -->
<script src="${assetPath(src: 'adminlte.js')}"></script>
<!-- AdminLTE for demo purposes -->
<script src="${assetPath(src: 'demo.js')}"></script>


  <style>
      
      
      body {
  /* Location of the image */
  background-image: url(../images/color-splash.jpg);
  
  /* Background image is centered vertically and horizontally at all times */
  background-position: center center;
  
  /* Background image doesn't tile */
  background-repeat: no-repeat;
  
  /* Background image is fixed in the viewport so that it doesn't move when 
     the content's height is greater than the image's height */
  background-attachment: fixed;
  
  /* This is what makes the background image rescale based
     on the container's size */
  background-size: cover;
  
  /* Set a background color that will be displayed
     while the background image is loading */
  background-color: #464646;
}

   </style>   
   
   
  
    </head>
   
       
        
    <body class="hold-transition login-page" style="background-image: url('${assetPath(src: 'color-splash.jpg')}');height: 100%; background-position: center; background-repeat: no-repeat; background-size: cover;">
<div class="login-box">
  <div class="login-logo">
    <a href="#" class="text-white" ><b>Kitch</b>App</a>
  </div>
  <!-- /.login-logo -->
  <div class="card">
    <div class="card-body login-card-body">
      <p class="login-box-msg">Sign in to start your session</p>

     <g:form role="form" id="loginView" controller="login" action="doLogin" method="post">
        <div class="input-group mb-3">
          <input type="text" class="form-control" placeholder="USER NAME" name="usrCd">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" class="form-control" placeholder="Password" name="password">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-8">
            <div class="icheck-primary">
              <input type="checkbox" id="remember">
              <label for="remember">
                Remember Me
              </label>
            </div>
          </div>
          <!-- /.col -->
          <div class="col-4">
            <button type="submit" class="btn btn-primary btn-block">Sign In</button>
          </div>
          <!-- /.col -->
        </div>
     </g:form>

      <p class="mb-1">
        <a href="forgot-password.html">I forgot my password</a>
      </p>
     
      
       <g:if test="${flash.message}">
			<script>
                            
                          
    
                             $(document).Toasts('create', {
                                class: 'bg-danger', 
                                title: 'Alert',                              
                                body: '${flash.message}',
                                autohide: true,
                                delay: 900,
                                position: 'bottomRight',
                                positionClass: "card",
                              });
                            
                         </script>
			</g:if>
                        
    </div>
    <!-- /.login-card-body -->
  </div>
</div>
<!-- /.login-box -->


                       
</body>

</html>
