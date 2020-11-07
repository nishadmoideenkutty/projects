<!doctype html>
<html class="no-js" lang="zxx">
    
<!-- Mirrored from www.thetahmid.com/themes/xemart-v1.0/09-register.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 28 Aug 2020 07:52:31 GMT -->
<head>
        <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <title>
        <g:layoutTitle default="KitchApp"/>
    </title>
   <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
       
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Favicon -->
        <link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
        <link rel="icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet">

        <!-- Bootstrap -->
        <link rel="stylesheet" href="${assetPath(src: 'bootstrap.min.css')}">

		<!-- Fontawesome Icon -->
        <link rel="stylesheet" href="${assetPath(src: 'font-awesome.min.css')}">

		<!-- Animate Css -->
        <link rel="stylesheet" href="${assetPath(src: 'animate.css')}">

        <!-- Owl Slider -->
        <link rel="stylesheet" href="${assetPath(src: 'owl.carousel.min.css')}">

        <!-- Custom Style -->
        <link rel="stylesheet" href="${assetPath(src: 'normalize.css')}">
        <link rel="stylesheet" href="${assetPath(src: 'style.css')}">
        <link rel="stylesheet" href="${assetPath(src: 'responsive.css')}">
         
        
        <script src="${assetPath(src: 'assets/vendor/jquery-1.12.4.min.js')}"></script>
    

        <!-- Bootstrap -->
        <script src="${assetPath(src: 'assets/popper.min.js')}"></script>
        <script src="${assetPath(src: 'assets/bootstrap.min.js')}"></script>

        <!-- Owl Slider -->
        <script src="${assetPath(src: 'assets/owl.carousel.min.js')}"></script>

        <!-- Wow Animation -->
        <script src="${assetPath(src: 'assets/wow.min.js')}"></script>

        <!-- Price Filter -->
        <script src="${assetPath(src: 'assets/price-filter.js')}"></script>

        <!-- Mean Menu -->
        <script src="${assetPath(src: 'assets/jquery.meanmenu.min.js')}"></script>

        <!-- Custom JS -->
        <script src="${assetPath(src: 'plugins.js')}"></script>
        <script src="${assetPath(src: 'custom.js')}"></script>
        
        <link rel="stylesheet" href="${assetPath(src: 'toastr/toastr.min.css')}">
   <script src="${assetPath(src: 'toastr/toastr.min.js')}"></script>
   
   
  <link rel="stylesheet" href="${assetPath(src: 'sweetalert.css')}">
 <script src="${assetPath(src: 'sweetalert.js')}"></script>
 <script src="${assetPath(src: 'validation.js')}"></script>
 
   <script>
       
   toastr.options = {
  "closeButton": true,
  "debug": false,
  "newestOnTop": false,
  "progressBar": true,
  "positionClass": "toast-bottom-center",
  "preventDuplicates": false,
  "onclick": null,
  "showDuration": "300",
  "hideDuration": "1000",
  "timeOut": "5000",
  "extendedTimeOut": "1000",
  "showEasing": "swing",
  "hideEasing": "linear",
  "showMethod": "fadeIn",
  "hideMethod": "fadeOut"
}

$(document).ready(function(){
    
   
       
    
  
   
    if("${flash.message}")
    toastr.success("${flash.message}");
    else if("${flash.custError}")
    toastr.warning("${flash.custError}");   
    else if("${custError}")
    {                             
                                '<g:each in="${custError}" var="error">'
                                    
                                    toastr.warning("${error}");
                                 
				'</g:each>'                          
                   
    }   
    else if ("${flash.error}")
    toastr.error("${flash.error}");
    else if("${flash.invalidToken}")
    toastr.info("${flash.invalidToken}");
    
   
    
    
             $(document).on("keypress", ":input:not(button,textArea)", function(event) {
                if (event.keyCode == 13) {    
                             event.preventDefault();
                            }
          });   
          
          
          $(".typData").on("keypress",function(event){
          
                        if (event.keyCode == 13) {    
                            loadProductUrl();
                            }
          });
          
          
          
    
          loadItmSingle();
        
    });
    function loadItmSingle()
    {
            $(".singleCls").click(function(e){
          
                 if($(this).attr("id"))
                 {
                 var itmId= extractId($(this).attr("id"))
                 
                 if(itmId)
                 {
                 
                  var url = "${createLink(controller:'genEcom', action: 'singlProduct')}/" + itmId ;
                  window.location = url;
                 }
                 }
                 
                
             
              });
    
    }
    
   
           function loadProductUrl()
           {
           
              if($("#typData1").val())
              $("#typData").val($("#typData1").val())
              window.location.href="${createLink(controller:'genEcom', action: 'category')}?&typData="+$("#typData").val()
           }
    
            function getProduct()
            {
      
      
               var parameters = {
                    "typData":$(".typData").val(),
                    "pag":$("#pageId").text(),   
       
                    }
              <g:remoteFunction controller="GenEcom" action="itmDtls"  params="parameters" update="prodctDiv"  />
            }
       </script>
          <g:layoutHead/>
 
    </head>
    <body>

        <!-- Preloader -->
        <div class="preloader">
            <div class="load-list">
                <div class="load"></div>
                <div class="load load2"></div>
            </div>
        </div>
        <!-- End Preloader -->

        <!-- Top Bar 2 -->
        <section class="top-bar2">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="top-left d-flex">
                            <div class="lang-box">
                                <span><img src="${resource(dir: 'images', file: 'fl-eng.png')}" alt="">English</span>
                              
                            </div>
                            <div class="mny-box">
                                <span>RS</span>
                               
                            </div>
                            <div class="call-us">
                                <p><img src="${resource(dir: 'images', file: 'phn.png')}" alt="">+1 (111) 426 6573</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="top-right text-right">
                            <ul class="list-unstyled list-inline">
                                <li class="list-inline-item"><a href="#"><img src="${resource(dir: 'images', file: 'user.png')}" alt="">My Account</a></li>
                                <li class="list-inline-item"><a href="#"><img src="${resource(dir: 'images', file: 'wishlist.png')}" alt="">Wishlist</a></li>
                                <li class="list-inline-item"><a href="#"><img src="${resource(dir: 'images', file: 'checkout.png')}" alt="">Checkout</a></li>
                              <g:if test="${request.getCookie('ajx_ui')}">
                                <li class="list-inline-item"><a href="${createLink(controller:'Login', action:'logOut')}"><img src="${resource(dir: 'images', file: 'logout.png')}" alt="">Logout</a></li>
                             </g:if>
                             <g:else>
                                <li class="list-inline-item"><a href="${createLink(controller:'genEcom', action:'custLogin')}"><img src="${resource(dir: 'images', file: 'login.png')}" alt="">Login</a></li>
                             </g:else>
                               
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Top Bar 2 -->

        <!-- Logo Area 2 -->
        <section class="logo-area2">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="logo">
                            <a href="../"><img src="${assetPath(src: 'logoKicth.png')}" alt="KitchApp Logo"></a>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-7 padding-fix">
                        <form action="#" class="search-bar d-flex">
                            <input type="text" name="typData" id="typData" class="typData" placeholder="I'm looking for..." value="${params?.typData?params?.typData:''}">
                           
                            <button type="button" onclick="loadProductUrl();" onkeypress="loadProductUrl();"><i class="fa fa-search"></i></button>
                        </form>
                    </div>
                    <div class="col-lg-3 col-md-2">
                        <div class="carts-area d-flex">
                            <div class="wsh-box ml-auto">
                                <a href="#" data-toggle="tooltip" data-placement="top" title="Wishlist">
                                    <img src="${resource(dir: 'images', file: 'heart.png')}" alt="favorite">
                                    <span>0</span>
                                </a>
                            </div>
                            <div class="cart-box ml-4">
                                <a href="#" data-toggle="tooltip" data-placement="top" title="Shopping Cart" class="cart-btn">
                                    <img src="${resource(dir: 'images', file: 'cart.png')}" alt="cart">
                                    <span class="cartCnt">0</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Logo Area 2 -->

        <!-- Cart Body -->
        <div class="cart-body">
            <div class="close-btn">
                <button class="close-cart"><img src="${resource(dir: 'images', file: 'close.png')}" alt="">Close</button>
            </div>
            <div class="crt-bd-box">
                <div class="cart-heading text-center">
                    <h5>Shopping Cart</h5>
                </div>
                <div class="cart-content">
                    <div class="content-item d-flex justify-content-between">
                        <div class="cart-img">
                            <a href="#"><img src="${resource(dir: 'images', file: 'cart1.png')}" alt=""></a>
                        </div>
                        <div class="cart-disc">
                            <p><a href="#">SMART LED TV</a></p>
                            <span>1 x $199.00</span>
                        </div>
                        <div class="delete-btn">
                            <a href="#"><i class="fa fa-trash-o"></i></a>
                        </div>
                    </div>
                    <div class="content-item d-flex justify-content-between">
                        <div class="cart-img">
                            <a href="#"><img src="${resource(dir: 'images', file: 'cart2.png')}" alt=""></a>
                        </div>
                        <div class="cart-disc">
                            <p><a href="#">SMART LED TV</a></p>
                            <span>1 x $199.00</span>
                        </div>
                        <div class="delete-btn">
                            <a href="#"><i class="fa fa-trash-o"></i></a>
                        </div>
                    </div>
                </div>
                <div class="cart-btm">
                    <p class="text-right">Sub Total: <span>$398.00</span></p>
                    <a href="#">Checkout</a>
                </div>
            </div>
        </div>
        <div class="cart-overlay"></div>
        <!-- End Cart Body -->

        <!-- Sticky Menu -->
        <section class="sticky-menu">
            <div class="container">
                <div class="row">
                    <div class="col-lg-2 col-md-3">
                        <div class="sticky-logo">
                             <a href="#"><img src="${assetPath(src: 'logoKicth.png')}" alt="KitchApp Logo" ></a>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-7">
                        <div class="main-menu">
                            <ul class="list-unstyled list-inline">
                                <li class="list-inline-item"><a href="../">HOME </a>
                                    
                                </li>
                                <li class="list-inline-item mega-menu"><a href="${createLink(controller:'genEcom', action:'category')}" >CATEGORY <i class="fa fa-angle-down"></i></a>
                                    <div class="mega-box">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <div class="clt-area">
                                                    <h6>GROCERY</h6>
                                                    <div class="link-box">
                                                        <g:each status="i" var="tmpInvCatgryMastr" in="${inv.det.InvCatgryMastr.findAllByDelFlgAndStatsFlg('N','A')}">
                                    
                                                           <a href="${createLink(controller:'genEcom', action:'category' ,params:["typData":tmpInvCatgryMastr?.catgryName])}" id="cat_${tmpInvCatgryMastr?.id}"><i class="fa fa-paperclip"></i> &nbsp;${tmpInvCatgryMastr?.catgryName}</a>
                                      
                                                        </g:each>
                                                    </div>
                                                </div>
                                            </div>
                                           
                                        </div>
                                    </div>
                                </li>
                               <li class="list-inline-item"><a href="${createLink(controller:'genEcom', action:'customer')}">FREE REGISTRATION</a> </li>      
                               
                               
                                    
                                </li>
                                <li class="list-inline-item"><a href="20-contact.html">CONTACT</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-2">
                        <div class="carts-area d-flex">
                            <div class="src-box">
                                <form action="#">
                                    <input type="text"name="typData1" id="typData1" class="typData" placeholder="Search Here" value="${params?.typData?params?.typData:''}">
                                    <button type="button" name="button" onclick="loadProductUrl();" onkeypress="loadProductUrl();"><i class="fa fa-search"></i></button>
                                </form>
                            </div>
                            <div class="wsh-box ml-auto">
                                <a href="#" data-toggle="tooltip" data-placement="top" title="Wishlist">
                                    <img src="${resource(dir: 'images', file: 'heart.png')}" alt="favorite">
                                    <span>0</span>
                                </a>
                            </div>
                            <div class="cart-box ml-4">
                                <a href="#" data-toggle="tooltip" data-placement="top" title="Shopping Cart" class="cart-btn">
                                    <img src="${resource(dir: 'images', file: 'cart.png')} " alt="cart">
                                    <span class="cartCnt">0</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Sticky Menu -->

        <!-- Menu Area 2 -->
        <section class="menu-area2">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-0">
                        <div class="sidemenu">
                            <p>All Categories <i class="fa fa-bars"></i></p>
                            <ul class="list-unstyled gt-menu">
                                <g:each status="i" var="tmpInvCatgryMastr" in="${inv.det.InvCatgryMastr.findAllByDelFlgAndStatsFlg('N','A')}">
                                    
                                      <li><a href="${createLink(controller:'genEcom', action:'category' ,params:["typData":tmpInvCatgryMastr?.catgryName])}" id="cat_${tmpInvCatgryMastr?.id}"><i class="fa fa-paperclip"></i>${tmpInvCatgryMastr?.catgryName}</a></li>
                                      
                                </g:each>
                            </ul>
                        </div>
                    </div>
                    
                    <div class="col-lg-9 col-md-12">
                        <div class="main-menu">
                            <ul class="list-unstyled list-inline">
                                <li class="list-inline-item"><a href="../">HOME</a> </li>
                                    <li class="list-inline-item mega-menu"><a href="${createLink(controller:'genEcom', action:'category' )}">CATEGORY <i class="fa fa-angle-down"></i></a>
                                    <div class="mega-box">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <div class="clt-area">
                                                    <h6>GROCERY</h6>
                                                    <div class="link-box">
                                                        <g:each status="i" var="tmpInvCatgryMastr" in="${inv.det.InvCatgryMastr.findAllByDelFlgAndStatsFlg('N','A')}">
                                    
                                                           <a href="${createLink(controller:'genEcom', action:'category' ,params:["typData":tmpInvCatgryMastr?.catgryName])}" id="cat_${tmpInvCatgryMastr?.id}"><i class="fa fa-paperclip"></i> &nbsp;${tmpInvCatgryMastr?.catgryName}</a>
                                      
                                                        </g:each>
                                                    </div>
                                                </div>
                                            </div>
                                           
                                        </div>
                                    </div>
                                </li>
                                <li class="list-inline-item"><a href="${createLink(controller:'genEcom', action:'customer')}">FREE REGISTRATION</a> </li>                
                                
                                
                                <li class="list-inline-item"><a>COMPLAINTS & QUERIES <i class="fa fa-angle-down"></i></a>
                                    
                                </li>
                                <li class="list-inline-item"><a href="20-contact.html">CONTACT</a></li>
                                <li class="list-inline-item cup-btn"><a href="#">Get Your Coupon</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Menu Area 2 -->

        <!-- Mobile Menu -->
        <section class="mobile-menu-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="mobile-menu">
                            <nav id="dropdown">
                                <a href="#"><img src="${resource(dir: 'images', file: 'logo.png')}" alt=""></a>
                                <a href="#"><span>Sign In</span></a>
                                <ul class="list-unstyled">
                                    <li><a href="#">Home</a>
                                      
                                    </li>
                                    
                               
                                
                                   <li ><a href="${createLink(controller:'genEcom', action:'customer')}">FREE REGISTRATION</a> </li>      
                                    <li><a href="${createLink(controller:'genEcom', action:'category')}">CATEGORY</a>
                                        <ul class="list-unstyled">
                                                     <g:each status="i" var="tmpInvCatgryMastr" in="${inv.det.InvCatgryMastr.findAllByDelFlgAndStatsFlg('N','A')}">
                                    
                                                         <li><a href="${createLink(controller:'genEcom', action:'category',params:["typData":tmpInvCatgryMastr?.catgryName])}" id="cat_${tmpInvCatgryMastr?.id}"><i class="fa fa-paperclip"></i> &nbsp;${tmpInvCatgryMastr?.catgryName}</a></li>
                                      
                                                        </g:each>
                                        </ul>
                                    </li>
                                    <li><a href="#">COMPLAINTS & QUERIES </a>
                                       
                                    </li>
                                    <li><a href="20-contact.html">Contact</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Mobile Menu -->

       
        <!-- End Breadcrumb Area -->

        <!-- Register -->
        <section>
            <div class="container">
                                
                 <g:layoutBody/>
            </div>
        </section>
        <!-- End Register -->

        <!-- Brand area 2 -->
        
        <!-- End Brand area 2 -->

        <!-- Footer Area -->
        <section class="footer-top">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="f-contact">
                            <h5>Contact Info</h5>
                            <div class="f-add">
                                <i class="fa fa-map-marker"></i>
                                <span>Address :</span>
                                <p>795 South Park Avenue, New York, NY USA 94107</p>
                            </div>
                            <div class="f-email">
                                <i class="fa fa-envelope"></i>
                                <span>Email :</span>
                                <p>enquery@domain.com</p>
                            </div>
                            <div class="f-phn">
                                <i class="fa fa-phone"></i>
                                <span>Phone :</span>
                                <p>+1 908 875 7678</p>
                            </div>
                            <div class="f-social">
                                <ul class="list-unstyled list-inline">
                                    <li class="list-inline-item"><a href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li class="list-inline-item"><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li class="list-inline-item"><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                    <li class="list-inline-item"><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                    <li class="list-inline-item"><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="f-cat">
                            <h5>Categories</h5>
                            <ul class="list-unstyled">
                                <li><a href="#"><i class="fa fa-angle-right"></i>Clothing</a></li>
                                <li><a href="#"><i class="fa fa-angle-right"></i>Electronics</a></li>
                                <li><a href="#"><i class="fa fa-angle-right"></i>Smartphones & Tablets</a></li>
                                <li><a href="#"><i class="fa fa-angle-right"></i>Computer & Office</a></li>
                                <li><a href="#"><i class="fa fa-angle-right"></i>Home Appliances</a></li>
                                <li><a href="#"><i class="fa fa-angle-right"></i>Leather & Shoes</a></li>
                                <li><a href="#"><i class="fa fa-angle-right"></i>Kids & Babies</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="f-link">
                            <h5>Quick Links</h5>
                            <ul class="list-unstyled">
                                <li><a href="${createLink(controller:'Login', action:'signIn')}"><i class="fa fa-angle-right"></i>My Account</a></li>
                                <li><a href="#"><i class="fa fa-angle-right"></i>Shopping Cart</a></li>
                                <li><a href="#"><i class="fa fa-angle-right"></i>My Wishlist</a></li>
                                <li><a href="#"><i class="fa fa-angle-right"></i>Checkout</a></li>
                                <li><a href="#"><i class="fa fa-angle-right"></i>Order History</a></li>
                                <li><a href="#"><i class="fa fa-angle-right"></i>Log In</a></li>
                                <li><a href="#"><i class="fa fa-angle-right"></i>Our Locations</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="f-sup">
                            <h5>Support</h5>
                            <ul class="list-unstyled">
                                <li><a href="#"><i class="fa fa-angle-right"></i>Contact Us</a></li>
                                <li><a href="#"><i class="fa fa-angle-right"></i>Payment Policy</a></li>
                                <li><a href="#"><i class="fa fa-angle-right"></i>Return Policy</a></li>
                                <li><a href="#"><i class="fa fa-angle-right"></i>Privacy Policy</a></li>
                                <li><a href="#"><i class="fa fa-angle-right"></i>Frequently asked questions</a></li>
                                <li><a href="#"><i class="fa fa-angle-right"></i>Terms & Condition</a></li>
                                <li><a href="#"><i class="fa fa-angle-right"></i>Delivery Info</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="footer-btm">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <p>Copyright &copy; 2020 | Designed With <i class="fa fa-heart"></i> by <a href="#" target="_blank">Ajax Solutions</a></p>
                    </div>
                    <div class="col-md-6 text-right">
                        <img src="${resource(dir: 'images', file: 'payment.png')}" alt="" class="img-fluid">
                    </div>
                </div>
            </div>
            <div class="back-to-top text-center">
                <img src="${resource(dir: 'images', file: 'backtotop.png')}" alt="" class="img-fluid">
            </div>
        </section>
        <!-- End Footer Area -->



    </body>

<!-- Mirrored from www.thetahmid.com/themes/xemart-v1.0/09-register.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 28 Aug 2020 07:52:31 GMT -->
</html>
