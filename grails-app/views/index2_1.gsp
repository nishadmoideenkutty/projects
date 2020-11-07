<!doctype html>
<html class="no-js" lang="zxx">
    
<!-- Mirrored from www.thetahmid.com/themes/xemart-v1.0/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 28 Aug 2020 07:52:04 GMT -->
<head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>KitchApp</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Favicon -->
        <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
        <link rel="icon" href="images/favicon.ico" type="image/x-icon">

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

        <!-- Top Bar -->
        <section class="top-bar">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-4">
                        <div class="top-left d-flex">
                            <div class="lang-box">
                                <span><img src="images/fl-eng.png" alt="">English<i class="fa fa-angle-down"></i></span>                               
                            </div>
                            <div class="mny-box">
                                <span>RS<i class="fa fa-angle-down"></i></span>                               
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-8">
                        <div class="top-right text-right">
                            <ul class="list-unstyled list-inline">
                                <li class="list-inline-item"><a href="#"><img src="images/user.png" alt="">My Account</a></li>
                                <li class="list-inline-item"><a href="#"><img src="images/wishlist.png" alt="">Wishlist</a></li>
                                <li class="list-inline-item"><a href="#"><img src="images/checkout.png" alt="">Checkout</a></li>
                                <li class="list-inline-item"><a href="${createLink(controller:'Login',action: 'signIn')}"><img src="images/login.png" alt="">Login</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Top Bar -->

        <!-- Logo Area -->
        <section class="logo-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <div class="logo">
                            <a href="#"><img src="${assetPath(src: 'logoKicth.png')}" alt="KitchApp Logo" width="250px" height="80px;"></a>
                        </div>
                    </div>
                    <div class="col-md-5 padding-fix">
                        <form action="#" class="search-bar">
                            <input type="text" name="search-bar" placeholder="I'm looking for...">
                            <button type="submit"><i class="fa fa-search"></i></button>
                        </form>
                    </div>
                    <div class="col-md-4">
                        <div class="carts-area d-flex">
                            <div class="call-box d-flex">
                                <div class="call-ico">
                                    <img src="${assetPath(src: 'call.png')}" alt="">
                                </div>
                                <div class="call-content">
                                    <span>Call Us</span>
                                    <p>+1 (111) 426 6573</p>
                                </div>
                            </div>
                            <div class="cart-box ml-auto text-center">
                                <a href="#" class="cart-btn">
                                    <img src="images/cart.png" alt="cart">
                                    <span>2</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Logo Area -->

        <!-- Cart Body -->
        <div class="cart-body">
            <div class="close-btn">
                <button class="close-cart"><img src="images/close.png" alt="">Close</button>
            </div>
            <div class="crt-bd-box">
                <div class="cart-heading text-center">
                    <h5>Shopping Cart</h5>
                </div>
                <div class="cart-content">
                    <div class="content-item d-flex justify-content-between">
                        <div class="cart-img">
                            <a href="#"><img src="images/cart1.png" alt=""></a>
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
                            <a href="#"><img src="images/cart2.png" alt=""></a>
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
                            <a href="#"><img src="${assetPath(src: 'logoKicth.png')}" alt="KitchApp Logo" width="250px" height="80px;"></a>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-7">
                        <div class="main-menu">
                            <ul class="list-unstyled list-inline">
                                <li class="list-inline-item"><a>HOME <i class="fa fa-angle-down"></i></a>
                                    <ul class="dropdown list-unstyled">
                                        <li><a href="index-2.html">Home Style 1</a></li>
                                        <li><a href="02-home-two.html">Home Style 2</a></li>
                                    </ul>
                                </li>
                                <li class="list-inline-item mega-menu"><a>MEGA MENU <i class="fa fa-angle-down"></i></a>
                                    <div class="mega-box">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <div class="clt-area">
                                                    <h6>Clothing</h6>
                                                    <div class="link-box">
                                                        <a href="#">- Western Clothing</a>
                                                        <a href="#">- Traditional Clothing</a>
                                                        <a href="#">- Winter Clothing</a>
                                                        <a href="#">- Summer Clothing</a>
                                                        <a href="#">- Inner Wear</a>
                                                        <a href="#">- Night Wear</a>
                                                        <a href="#">- Mens Clothing</a>
                                                        <a href="#">- Womens Clothing</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="sm-phn">
                                                    <h6>Smartphones</h6>
                                                    <div class="dept-box">
                                                        <a href="#">- Samsung</a>
                                                        <a href="#">- Huawei</a>
                                                        <a href="#">- One Plus</a>
                                                        <a href="#">- Xiaomi</a>
                                                        <a href="#">- Iphone</a>
                                                        <a href="#">- Blackberry</a>
                                                        <a href="#">- Nokia</a>
                                                        <a href="#">- Oppo</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-3 col-md-6">
                                                <div class="lt-news">
                                                    <h6>Latest News</h6>
                                                    <div class="news-box d-flex">
                                                        <div class="news-img">
                                                            <img src="images/mega-img-1.jpg" alt="">
                                                        </div>
                                                        <div class="news-con">
                                                            <p>Lorem ipsum dolor sit...</p>
                                                            <span>Feb 10, 2020</span>
                                                        </div>
                                                    </div>
                                                    <div class="news-box d-flex">
                                                        <div class="news-img">
                                                            <img src="images/mega-img-2.jpg" alt="">
                                                        </div>
                                                        <div class="news-con">
                                                            <p>Lorem ipsum dolor sit...</p>
                                                            <span>Feb 12, 2020</span>
                                                        </div>
                                                    </div>
                                                    <div class="news-box d-flex">
                                                        <div class="news-img">
                                                            <img src="images/mega-img-3.jpg" alt="">
                                                        </div>
                                                        <div class="news-con">
                                                            <p>Lorem ipsum dolor sit...</p>
                                                            <span>Feb 21, 2020</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="m-slider owl-carousel">
                                                    <div class="slider-item">
                                                        <img src="images/mega-1.jpg" alt="" class="img-fluid">
                                                        <span>-65%</span>
                                                    </div>
                                                    <div class="slider-item">
                                                        <img src="images/mega-2.jpg" alt="" class="img-fluid">
                                                        <span>-50%</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="mega-bnr">
                                                    <div class="row">
                                                        <div class="col-md-3">
                                                            <a href="#" class="bnr-box text-center">
                                                                <img src="images/mega-b-1.jpg" alt="">
                                                                <span>Camera</span>
                                                            </a>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <a href="#" class="bnr-box text-center">
                                                                <img src="images/mega-b-2.jpg" alt="">
                                                                <span>Mouse</span>
                                                            </a>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <a href="#" class="bnr-box text-center">
                                                                <img src="images/mega-b-3.jpg" alt="">
                                                                <span>Earphone</span>
                                                            </a>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <a href="#" class="bnr-box text-center">
                                                                <img src="images/mega-b-4.jpg" alt="">
                                                                <span>Speaker</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="list-inline-item"><a>PAGES <i class="fa fa-angle-down"></i></a>
                                    <ul class="dropdown list-unstyled">
                                        <li><a href="03-about-us.html">About Us</a></li>
                                        <li><a href="04-category.html">Category</a></li>
                                        <li><a href="05-single-product.html">Single Product</a></li>
                                        <li><a href="06-shopping-cart.html">Shopping Cart</a></li>
                                        <li><a href="07-checkout.html">Checkout</a></li>
                                        <li><a href="08-login.html">Log In</a></li>
                                        <li><a href="09-register.html">Register</a></li>
                                        <li><a href="10-wishlist.html">Wishlist</a></li>
                                        <li><a href="11-compare.html">Compare</a></li>
                                        <li><a href="15-track-order.html">Track Order</a></li>
                                        <li><a href="12-terms-condition.html">Terms & Condition</a></li>
                                        <li><a href="13-faq.html">Faq</a></li>
                                        <li><a href="14-404.html">404</a></li>
                                    </ul>
                                </li>
                                <li class="list-inline-item"><a>BLOG <i class="fa fa-angle-down"></i></a>
                                    <ul class="dropdown list-unstyled">
                                        <li><a href="16-blog-one.html">Blog Style 1</a></li>
                                        <li><a href="17-blog-two.html">Blog Style 2</a></li>
                                        <li><a href="18-blog-three.html">Blog Style 3</a></li>
                                        <li><a href="19-blog-details.html">Blog Details</a></li>
                                    </ul>
                                </li>
                                <li class="list-inline-item"><a href="20-contact.html">CONTACT</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-2">
                        <div class="carts-area d-flex">
                            <div class="src-box">
                                <form action="#">
                                    <input type="text" name="search" placeholder="Search Here">
                                    <button type="button" name="button"><i class="fa fa-search"></i></button>
                                </form>
                            </div>
                            <div class="wsh-box ml-auto">
                                <a href="#" data-toggle="tooltip" data-placement="top" title="Wishlist">
                                    <img src="images/heart.png" alt="favorite">
                                    <span>0</span>
                                </a>
                            </div>
                            <div class="cart-box ml-4">
                                <a href="#" data-toggle="tooltip" data-placement="top" title="Shopping Cart" class="cart-btn">
                                    <img src="images/cart.png" alt="cart">
                                    <span>2</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Sticky Menu -->

        <!-- Menu Area -->
        <section class="menu-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="main-menu">
                            <ul class="list-unstyled list-inline">
                                <li class="list-inline-item"><a href="../">HOME </a>
                                    
                                </li>
                                <li class="list-inline-item mega-menu"><a>MEGA MENU <i class="fa fa-angle-down"></i></a>
                                    <div class="mega-box">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <div class="clt-area">
                                                    <h6>Clothing</h6>
                                                    <div class="link-box">
                                                        <a href="#">- Western Clothing</a>
                                                        <a href="#">- Traditional Clothing</a>
                                                        <a href="#">- Winter Clothing</a>
                                                        <a href="#">- Summer Clothing</a>
                                                        <a href="#">- Inner Wear</a>
                                                        <a href="#">- Night Wear</a>
                                                        <a href="#">- Mens Clothing</a>
                                                        <a href="#">- Womens Clothing</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="sm-phn">
                                                    <h6>Smartphones</h6>
                                                    <div class="dept-box">
                                                        <a href="#">- Samsung</a>
                                                        <a href="#">- Huawei</a>
                                                        <a href="#">- One Plus</a>
                                                        <a href="#">- Xiaomi</a>
                                                        <a href="#">- Iphone</a>
                                                        <a href="#">- Blackberry</a>
                                                        <a href="#">- Nokia</a>
                                                        <a href="#">- Oppo</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-3 col-md-6">
                                                <div class="lt-news">
                                                    <h6>Latest News</h6>
                                                    <div class="news-box d-flex">
                                                        <div class="news-img">
                                                            <img src="images/mega-img-1.jpg" alt="">
                                                        </div>
                                                        <div class="news-con">
                                                            <p>Lorem ipsum dolor sit...</p>
                                                            <span>Feb 10, 2020</span>
                                                        </div>
                                                    </div>
                                                    <div class="news-box d-flex">
                                                        <div class="news-img">
                                                            <img src="images/mega-img-2.jpg" alt="">
                                                        </div>
                                                        <div class="news-con">
                                                            <p>Lorem ipsum dolor sit...</p>
                                                            <span>Feb 12, 2020</span>
                                                        </div>
                                                    </div>
                                                    <div class="news-box d-flex">
                                                        <div class="news-img">
                                                            <img src="images/mega-img-3.jpg" alt="">
                                                        </div>
                                                        <div class="news-con">
                                                            <p>Lorem ipsum dolor sit...</p>
                                                            <span>Feb 21, 2020</span>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="m-slider owl-carousel">
                                                    <div class="slider-item">
                                                        <img src="images/mega-1.jpg" alt="" class="img-fluid">
                                                        <span>-65%</span>
                                                    </div>
                                                    <div class="slider-item">
                                                        <img src="images/mega-2.jpg" alt="" class="img-fluid">
                                                        <span>-50%</span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="mega-bnr">
                                                    <div class="row">
                                                        <div class="col-md-3">
                                                            <a href="#" class="bnr-box text-center">
                                                                <img src="images/mega-b-1.jpg" alt="">
                                                                <span>Camera</span>
                                                            </a>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <a href="#" class="bnr-box text-center">
                                                                <img src="images/mega-b-2.jpg" alt="">
                                                                <span>Mouse</span>
                                                            </a>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <a href="#" class="bnr-box text-center">
                                                                <img src="images/mega-b-3.jpg" alt="">
                                                                <span>Earphone</span>
                                                            </a>
                                                        </div>
                                                        <div class="col-md-3">
                                                            <a href="#" class="bnr-box text-center">
                                                                <img src="images/mega-b-4.jpg" alt="">
                                                                <span>Speaker</span>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                
                                   <li class="list-inline-item"><a href="${createLink(controller:'genAcctMastr', action:'create')}">Free Registration</a> </li> 
                                    
                                <li class="list-inline-item"><a>PAGES <i class="fa fa-angle-down"></i></a>
                                    <ul class="dropdown list-unstyled">
                                        <li><a href="03-about-us.html">About Us</a></li>
                                        <li><a href="04-category.html">Category</a></li>
                                        <li><a href="05-single-product.html">Single Product</a></li>
                                        <li><a href="06-shopping-cart.html">Shopping Cart</a></li>
                                        <li><a href="07-checkout.html">Checkout</a></li>
                                        <li><a href="08-login.html">Log In</a></li>
                                        <li><a href="09-register.html">Register</a></li>
                                        <li><a href="10-wishlist.html">Wishlist</a></li>
                                        <li><a href="11-compare.html">Compare</a></li>
                                        <li><a href="15-track-order.html">Track Order</a></li>
                                        <li><a href="12-terms-condition.html">Terms & Condition</a></li>
                                        <li><a href="13-faq.html">Faq</a></li>
                                        <li><a href="14-404.html">404</a></li>
                                    </ul>
                                </li>
                                <li class="list-inline-item"><a>BLOG <i class="fa fa-angle-down"></i></a>
                                    <ul class="dropdown list-unstyled">
                                        <li><a href="16-blog-one.html">Blog Style 1</a></li>
                                        <li><a href="17-blog-two.html">Blog Style 2</a></li>
                                        <li><a href="18-blog-three.html">Blog Style 3</a></li>
                                        <li><a href="19-blog-details.html">Blog Details</a></li>
                                    </ul>
                                </li>
                                <li class="list-inline-item"><a href="20-contact.html">CONTACT</a></li>
                                <li class="list-inline-item trac-btn"><a href="#">Track Your Order</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Menu Area -->

        <!-- Mobile Menu -->
        <section class="mobile-menu-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="mobile-menu">
                            <nav id="dropdown">
                                <a href="#"><img src="images/logo.png" alt=""></a>
                                <a href="#"><span>Sign In</span></a>
                                <ul class="list-unstyled">
                                    <li><a href="#">Home</a>
                                        <ul class="list-unstyled">
                                            <li><a href="index-2.html">Home Style 1</a></li>
	                                        <li><a href="02-home-two.html">Home Style 2</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Pages</a>
                                        <ul class="list-unstyled">
                                            <li><a href="03-about-us.html">About Us</a></li>
                                            <li><a href="04-category.html">Category</a></li>
                                            <li><a href="05-single-product.html">Single Product</a></li>
                                            <li><a href="06-shopping-cart.html">Shopping Cart</a></li>
                                            <li><a href="07-checkout.html">Checkout</a></li>
                                            <li><a href="08-login.html">Log In</a></li>
                                            <li><a href="09-register.html">Register</a></li>
                                            <li><a href="10-wishlist.html">Wishlist</a></li>
                                            <li><a href="11-compare.html">Compare</a></li>
                                            <li><a href="15-track-order.html">Track Order</a></li>
                                            <li><a href="12-terms-condition.html">Terms & Condition</a></li>
                                            <li><a href="13-faq.html">Faq</a></li>
                                            <li><a href="14-404.html">404</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Blog</a>
                                        <ul class="list-unstyled">
                                            <li><a href="16-blog-one.html">Blog Style 1</a></li>
                                            <li><a href="17-blog-two.html">Blog Style 2</a></li>
                                            <li><a href="18-blog-three.html">Blog Style 3</a></li>
                                            <li><a href="19-blog-details.html">Blog Details</a></li>
                                        </ul>
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

        <!-- Slider Area -->
        <section class="slider-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-0">
                        <div class="menu-widget">
                            <p><i class="fa fa-bars"></i>All Categories</p>
                            <ul class="list-unstyled">
                                <g:each status="i" var="tmpInvCatgryMastr" in="${inv.det.InvCatgryMastr.findAllByDelFlgAndStatsFlg('N','A')}">
                                    
                                      <li><a href="#" id="cat_${tmpInvCatgryMastr?.id}"><i class="fa fa-paperclip"></i>${tmpInvCatgryMastr?.catgryName}</a></li>
                                      
                                </g:each>
                           </ul>
                        </div>
                    </div>
                    <div class="col-lg-9 col-md-12 padding-fix-l20">
                        <div class="owl-carousel owl-slider">
                            <div class="slider-item slider-item1">
                                <img src="images/grocery-1.jpg" alt="" class="img1 wow fadeInRight effect"  data-wow-duration="1s" data-wow-delay="0s">
                                <div class="slider-box">
                                    <div class="slider-table">
                                        <div class="slider-tablecell">
                                            <div class="wow fadeInUp effect" data-wow-duration="1.2s" data-wow-delay="0.5s">
                                                <h5>Big Sale</h5>
                                            </div>
                                            <div class="wow fadeInUp effect" data-wow-duration="1.2s" data-wow-delay="0.6s">
                                                <h2>New Product Collection</h2>
                                            </div>
                                            <div class="wow fadeInUp effect" data-wow-duration="1.2s" data-wow-delay="0.7s">
                                                <p>Save Up To 25% Off</p>
                                            </div>
                                            <div class="wow fadeInUp effect" data-wow-duration="1.2s" data-wow-delay="0.8s">
                                                <a href="#">Shop Now</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="slider-item slider-item2">
                                <img src="images/grocery-2.jpg" alt="" class="img2 wow fadeInRight effect"  data-wow-duration="1s" data-wow-delay="0s">
                                <div class="slider-box">
                                    <div class="slider-table">
                                        <div class="slider-tablecell text-right">
                                            <div class="wow fadeInUp effect" data-wow-duration="1.2s" data-wow-delay="0.5s">
                                                <h5>Grocery Stores </h5>
                                            </div>
                                            <div class="wow fadeInUp effect" data-wow-duration="1.2s" data-wow-delay="0.6s">
                                                <h2>Top Quality Products</h2>
                                            </div>
                                            <div class="wow fadeInUp effect" data-wow-duration="1.2s" data-wow-delay="0.7s">
                                                <p>Save Up To 50% Off</p>
                                            </div>
                                            <div class="wow fadeInUp effect" data-wow-duration="1.2s" data-wow-delay="0.8s">
                                                <a href="#">Shop Now</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="slider-btm-box d-flex justify-content-around">
                            <div class="single-box mr-20 ">
                                <a href="#"><img src="images/cat-1.png" alt="" class="img-fluid"></a>          
                            </div>
                            <div class="single-box mr-20">
                                <a href="#"><img src="images/cat-2.png" alt="" class="img-fluid"></a>
                            </div>
                            <div class="single-box">
                                <a href="#"><img src="images/cat-3.png" alt="" class="img-fluid"></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Slider Area -->

        <!-- Product Area-->
        <section class="product-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-4">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="bt-deal">
                                    <div class="sec-title">
                                        <h6>Best Deals</h6>
                                    </div>
                                    <div class="bt-body owl-carousel">
                                        <div class="bt-items">
                                            <div class="bt-box d-flex">
                                                <div class="bt-img">
                                                    <a href="#"><img src="images/sbar-1.png" alt=""></a>
                                                </div>
                                                <div class="bt-content">
                                                    <p><a href="#">Items Title Here</a></p>
                                                    <ul class="list-unstyled list-inline fav">
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                    </ul>
                                                    <ul class="list-unstyled list-inline price">
                                                        <li class="list-inline-item">$120.00</li>
                                                        <li class="list-inline-item">$150.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="bt-box d-flex">
                                                <div class="bt-img">
                                                    <a href="#"><img src="images/sbar-2.png" alt=""></a>
                                                </div>
                                                <div class="bt-content">
                                                    <p><a href="#">Items Title Here</a></p>
                                                    <ul class="list-unstyled list-inline fav">
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                    </ul>
                                                    <ul class="list-unstyled list-inline price">
                                                        <li class="list-inline-item">$120.00</li>
                                                        <li class="list-inline-item">$150.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="bt-box d-flex">
                                                <div class="bt-img">
                                                    <a href="#"><img src="images/sbar-3.png" alt=""></a>
                                                </div>
                                                <div class="bt-content">
                                                    <p><a href="#">Items Title Here</a></p>
                                                    <ul class="list-unstyled list-inline fav">
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                    </ul>
                                                    <ul class="list-unstyled list-inline price">
                                                        <li class="list-inline-item">$120.00</li>
                                                        <li class="list-inline-item">$150.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="bt-box d-flex">
                                                <div class="bt-img">
                                                    <a href="#"><img src="images/sbar-4.png" alt=""></a>
                                                </div>
                                                <div class="bt-content">
                                                    <p><a href="#">Items Title Here</a></p>
                                                    <ul class="list-unstyled list-inline fav">
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                    </ul>
                                                    <ul class="list-unstyled list-inline price">
                                                        <li class="list-inline-item">$120.00</li>
                                                        <li class="list-inline-item">$150.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="bt-items">
                                            <div class="bt-box d-flex">
                                                <div class="bt-img">
                                                    <a href="#"><img src="images/sbar-2.png" alt=""></a>
                                                </div>
                                                <div class="bt-content">
                                                    <p><a href="#">Items Title Here</a></p>
                                                    <ul class="list-unstyled list-inline fav">
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                    </ul>
                                                    <ul class="list-unstyled list-inline price">
                                                        <li class="list-inline-item">$120.00</li>
                                                        <li class="list-inline-item">$150.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="bt-box d-flex">
                                                <div class="bt-img">
                                                    <a href="#"><img src="images/sbar-4.png" alt=""></a>
                                                </div>
                                                <div class="bt-content">
                                                    <p><a href="#">Items Title Here</a></p>
                                                    <ul class="list-unstyled list-inline fav">
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                    </ul>
                                                    <ul class="list-unstyled list-inline price">
                                                        <li class="list-inline-item">$120.00</li>
                                                        <li class="list-inline-item">$150.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="bt-box d-flex">
                                                <div class="bt-img">
                                                    <a href="#"><img src="images/sbar-5.png" alt=""></a>
                                                </div>
                                                <div class="bt-content">
                                                    <p><a href="#">Items Title Here</a></p>
                                                    <ul class="list-unstyled list-inline fav">
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                    </ul>
                                                    <ul class="list-unstyled list-inline price">
                                                        <li class="list-inline-item">$120.00</li>
                                                        <li class="list-inline-item">$150.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="bt-box d-flex">
                                                <div class="bt-img">
                                                    <a href="#"><img src="images/sbar-1.png" alt=""></a>
                                                </div>
                                                <div class="bt-content">
                                                    <p><a href="#">Items Title Here</a></p>
                                                    <ul class="list-unstyled list-inline fav">
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                    </ul>
                                                    <ul class="list-unstyled list-inline price">
                                                        <li class="list-inline-item">$120.00</li>
                                                        <li class="list-inline-item">$150.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="ht-offer">
                                    <div class="sec-title">
                                        <h6>Hot Offer</h6>
                                    </div>
                                    <div class="ht-body owl-carousel">
                                        <div class="ht-item">
                                            <div class="ht-img">
                                                <a href="#"><img src="images/tab-15.png" alt="" class="img-fluid"></a>
                                                <span>- 59%</span>
                                                <ul class="list-unstyled list-inline counter-box">
                                                    <li class="list-inline-item">185 <p>Days</p></li>
                                                    <li class="list-inline-item">11 <p>Hrs</p></li>
                                                    <li class="list-inline-item">39 <p>Mins</p></li>
                                                    <li class="list-inline-item">51 <p>Sec</p></li>
                                                </ul>
                                            </div>
                                            <div class="ht-content">
                                                <p><a href="#">Items Title Here</a></p>
                                                <ul class="list-unstyled list-inline fav">
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                </ul>
                                                <ul class="list-unstyled list-inline price">
                                                    <li class="list-inline-item">$120.00</li>
                                                    <li class="list-inline-item">$150.00</li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="ht-item">
                                            <div class="ht-img">
                                                <a href="#"><img src="images/tab-14.png" alt="" class="img-fluid"></a>
                                                <span>- 59%</span>
                                                <ul class="list-unstyled list-inline counter-box">
                                                    <li class="list-inline-item">185 <p>Days</p></li>
                                                    <li class="list-inline-item">11 <p>Hrs</p></li>
                                                    <li class="list-inline-item">39 <p>Mins</p></li>
                                                    <li class="list-inline-item">51 <p>Sec</p></li>
                                                </ul>
                                            </div>
                                            <div class="ht-content">
                                                <p><a href="#">Items Title Here</a></p>
                                                <ul class="list-unstyled list-inline fav">
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                    <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                </ul>
                                                <ul class="list-unstyled list-inline price">
                                                    <li class="list-inline-item">$120.00</li>
                                                    <li class="list-inline-item">$150.00</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="hm-test">
                                    <div class="test-body owl-carousel">
                                        <div class="test-item text-center">
                                            <img src="images/test-1.jpg" alt="" class="img-fluid">
                                            <h6>WhatsApp</h6>
                                            <span>+91-8086461514</span>
                                            <p>"You Can  send your choice our Whats-Apps"</p>
                                        </div>
                                        <div class="test-item text-center">
                                            <img src="images/test-2.jpg" alt="" class="img-fluid">
                                            <h6>Telegram</h6>
                                            <span>+91-9496971514</span>
                                            <p>"You Can Also send your choice our Telegram"</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="top-rtd">
                                    <div class="sec-title">
                                        <h6>Top Rated</h6>
                                    </div>
                                    <div class="rt-slider owl-carousel">
                                        <div class="rt-items">
                                            <div class="rt-box d-flex">
                                                <div class="rt-img">
                                                    <a href="#"><img src="images/sbar-6.png" alt=""></a>
                                                </div>
                                                <div class="rt-content">
                                                    <p><a href="#">Items Title Here</a></p>
                                                    <ul class="list-unstyled list-inline fav">
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                    </ul>
                                                    <ul class="list-unstyled list-inline price">
                                                        <li class="list-inline-item">$120.00</li>
                                                        <li class="list-inline-item">$150.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="rt-box d-flex">
                                                <div class="rt-img">
                                                    <a href="#"><img src="images/sbar-7.png" alt=""></a>
                                                </div>
                                                <div class="rt-content">
                                                    <p><a href="#">Items Title Here</a></p>
                                                    <ul class="list-unstyled list-inline fav">
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                    </ul>
                                                    <ul class="list-unstyled list-inline price">
                                                        <li class="list-inline-item">$120.00</li>
                                                        <li class="list-inline-item">$150.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="rt-box d-flex">
                                                <div class="rt-img">
                                                    <a href="#"><img src="images/sbar-8.png" alt=""></a>
                                                </div>
                                                <div class="rt-content">
                                                    <p><a href="#">Items Title Here</a></p>
                                                    <ul class="list-unstyled list-inline fav">
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                    </ul>
                                                    <ul class="list-unstyled list-inline price">
                                                        <li class="list-inline-item">$120.00</li>
                                                        <li class="list-inline-item">$150.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="rt-box d-flex">
                                                <div class="rt-img">
                                                    <a href="#"><img src="images/sbar-9.png" alt=""></a>
                                                </div>
                                                <div class="rt-content">
                                                    <p><a href="#">Items Title Here</a></p>
                                                    <ul class="list-unstyled list-inline fav">
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                    </ul>
                                                    <ul class="list-unstyled list-inline price">
                                                        <li class="list-inline-item">$120.00</li>
                                                        <li class="list-inline-item">$150.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="rt-items">
                                            <div class="rt-box d-flex">
                                                <div class="rt-img">
                                                    <a href="#"><img src="images/sbar-10.png" alt=""></a>
                                                </div>
                                                <div class="rt-content">
                                                    <p><a href="#">Items Title Here</a></p>
                                                    <ul class="list-unstyled list-inline fav">
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                    </ul>
                                                    <ul class="list-unstyled list-inline price">
                                                        <li class="list-inline-item">$120.00</li>
                                                        <li class="list-inline-item">$150.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="rt-box d-flex">
                                                <div class="rt-img">
                                                    <a href="#"><img src="images/sbar-11.png" alt=""></a>
                                                </div>
                                                <div class="rt-content">
                                                    <p><a href="#">Items Title Here</a></p>
                                                    <ul class="list-unstyled list-inline fav">
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                    </ul>
                                                    <ul class="list-unstyled list-inline price">
                                                        <li class="list-inline-item">$120.00</li>
                                                        <li class="list-inline-item">$150.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="rt-box d-flex">
                                                <div class="rt-img">
                                                    <a href="#"><img src="images/sbar-12.png" alt=""></a>
                                                </div>
                                                <div class="rt-content">
                                                    <p><a href="#">Items Title Here</a></p>
                                                    <ul class="list-unstyled list-inline fav">
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                    </ul>
                                                    <ul class="list-unstyled list-inline price">
                                                        <li class="list-inline-item">$120.00</li>
                                                        <li class="list-inline-item">$150.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="rt-box d-flex">
                                                <div class="rt-img">
                                                    <a href="#"><img src="images/sbar-13.png" alt=""></a>
                                                </div>
                                                <div class="rt-content">
                                                    <p><a href="#">Items Title Here</a></p>
                                                    <ul class="list-unstyled list-inline fav">
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                    </ul>
                                                    <ul class="list-unstyled list-inline price">
                                                        <li class="list-inline-item">$120.00</li>
                                                        <li class="list-inline-item">$150.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="nw-ltr">
                                    <div class="sec-title">
                                        <h6>Newsletter</h6>
                                    </div>
                                    <div class="nw-box">
                                        <p>Sign Up And Get Latest News, Updates, Offers & Deals</p>
                                        <form class="nw-form" action="#">
                                            <input type="text" name="email" placeholder="Email Here..." required>
                                            <button type="submit" name="button">Subscribe</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-9 col-md-8">
                        <div class="row">
                            <div class="col-md-12 padding-fix-l20">
                                <div class="ftr-product">
                                    <div class="tab-box d-flex justify-content-between">
                                        <div class="sec-title">
                                            <h5>Feature Product</h5>
                                        </div>
                                        <!-- Nav tabs -->
<!--                                        <ul class="nav nav-tabs" role="tablist">
                                            <li class="nav-item">
                                                <a class="nav-link active" data-toggle="tab" href="#all">All</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" data-toggle="tab" href="#elec">Electronics</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" data-toggle="tab" href="#smart">Smartphones</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" data-toggle="tab" href="#shoe">Shoes</a>
                                            </li>
                                        </ul>-->
                                    </div>
                                    <!-- Tab panes -->
                                    <div class="tab-content">
                                        <div class="tab-pane fade show active" id="all" role="tabpanel">
                                            <div class="tab-slider owl-carousel">
                                                <div class="tab-item">
                                                    <div class="tab-heading">
                                                        <ul class="list-unstyled list-inline">
                                                            <li class="list-inline-item"><a href="#">Home Appliance,</a></li>
                                                            <li class="list-inline-item"><a href="#">Smart Led</a></li>
                                                        </ul>
                                                        <p><a href="#">Samsung Smart Led Tv 42"</a></p>
                                                    </div>
                                                    <div class="tab-img">
                                                        <img class="main-img img-fluid" src="images/tab-1.png" alt="">
                                                        <img class="sec-img img-fluid" src="images/tab-16.png" alt="">
                                                        <div class="layer-box">
                                                            <a href="#" class="it-comp" data-toggle="tooltip" data-placement="left" title="Compare"><img src="images/it-comp.png" alt=""></a>
                                                            <a href="#" class="it-fav" data-toggle="tooltip" data-placement="left" title="Favourite"><img src="images/it-fav.png" alt=""></a>
                                                        </div>
                                                    </div>
                                                    <div class="img-content d-flex justify-content-between">
                                                        <div>
                                                            <ul class="list-unstyled list-inline fav">
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                            </ul>
                                                            <ul class="list-unstyled list-inline price">
                                                                <li class="list-inline-item">$120.00</li>
                                                                <li class="list-inline-item">$150.00</li>
                                                            </ul>
                                                        </div>
                                                        <div>
                                                            <a href="#" data-toggle="tooltip" data-placement="top" title="Add to Cart"><img src="images/it-cart.png" alt=""></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-item">
                                                    <div class="tab-heading">
                                                        <ul class="list-unstyled list-inline">
                                                            <li class="list-inline-item"><a href="#">Home Appliance,</a></li>
                                                            <li class="list-inline-item"><a href="#">Smart Led</a></li>
                                                        </ul>
                                                        <p><a href="#">Samsung Smart Led Tv 42"</a></p>
                                                    </div>
                                                    <div class="tab-img">
                                                        <img class="main-img img-fluid" src="images/tab-2.png" alt="">
                                                        <img class="sec-img img-fluid" src="images/tab-16.png" alt="">
                                                        <span class="sale">Sale</span>
                                                        <div class="layer-box">
                                                            <a href="#" class="it-comp" data-toggle="tooltip" data-placement="left" title="Compare"><img src="images/it-comp.png" alt=""></a>
                                                            <a href="#" class="it-fav" data-toggle="tooltip" data-placement="left" title="Favourite"><img src="images/it-fav.png" alt=""></a>
                                                        </div>
                                                    </div>
                                                    <div class="img-content d-flex justify-content-between">
                                                        <div>
                                                            <ul class="list-unstyled list-inline fav">
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                            </ul>
                                                            <ul class="list-unstyled list-inline price">
                                                                <li class="list-inline-item">$120.00</li>
                                                                <li class="list-inline-item">$150.00</li>
                                                            </ul>
                                                        </div>
                                                        <div>
                                                            <a href="#" data-toggle="tooltip" data-placement="top" title="Add to Cart"><img src="images/it-cart.png" alt=""></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-item">
                                                    <div class="tab-heading">
                                                        <ul class="list-unstyled list-inline">
                                                            <li class="list-inline-item"><a href="#">Home Appliance,</a></li>
                                                            <li class="list-inline-item"><a href="#">Smart Led</a></li>
                                                        </ul>
                                                        <p><a href="#">Samsung Smart Led Tv 42"</a></p>
                                                    </div>
                                                    <div class="tab-img">
                                                        <img class="main-img img-fluid" src="images/tab-3.png" alt="">
                                                        <img class="sec-img img-fluid" src="images/tab-16.png" alt="">
                                                        <div class="layer-box">
                                                            <a href="#" class="it-comp" data-toggle="tooltip" data-placement="left" title="Compare"><img src="images/it-comp.png" alt=""></a>
                                                            <a href="#" class="it-fav" data-toggle="tooltip" data-placement="left" title="Favourite"><img src="images/it-fav.png" alt=""></a>
                                                        </div>
                                                    </div>
                                                    <div class="img-content d-flex justify-content-between">
                                                        <div>
                                                            <ul class="list-unstyled list-inline fav">
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                            </ul>
                                                            <ul class="list-unstyled list-inline price">
                                                                <li class="list-inline-item">$120.00</li>
                                                                <li class="list-inline-item">$150.00</li>
                                                            </ul>
                                                        </div>
                                                        <div>
                                                            <a href="#" data-toggle="tooltip" data-placement="top" title="Add to Cart"><img src="images/it-cart.png" alt=""></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-item">
                                                    <div class="tab-heading">
                                                        <ul class="list-unstyled list-inline">
                                                            <li class="list-inline-item"><a href="#">Home Appliance,</a></li>
                                                            <li class="list-inline-item"><a href="#">Smart Led</a></li>
                                                        </ul>
                                                        <p><a href="#">Samsung Smart Led Tv 42"</a></p>
                                                    </div>
                                                    <div class="tab-img">
                                                        <img class="main-img img-fluid" src="images/tab-4.png" alt="">
                                                        <img class="sec-img img-fluid" src="images/tab-16.png" alt="">
                                                        <div class="layer-box">
                                                            <a href="#" class="it-comp" data-toggle="tooltip" data-placement="left" title="Compare"><img src="images/it-comp.png" alt=""></a>
                                                            <a href="#" class="it-fav" data-toggle="tooltip" data-placement="left" title="Favourite"><img src="images/it-fav.png" alt=""></a>
                                                        </div>
                                                    </div>
                                                    <div class="img-content d-flex justify-content-between">
                                                        <div>
                                                            <ul class="list-unstyled list-inline fav">
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                            </ul>
                                                            <ul class="list-unstyled list-inline price">
                                                                <li class="list-inline-item">$120.00</li>
                                                                <li class="list-inline-item">$150.00</li>
                                                            </ul>
                                                        </div>
                                                        <div>
                                                            <a href="#" data-toggle="tooltip" data-placement="top" title="Add to Cart"><img src="images/it-cart.png" alt=""></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane fade" id="elec" role="tabpanel">
                                            <div class="tab-slider owl-carousel">
                                                <div class="tab-item">
                                                    <div class="tab-heading">
                                                        <ul class="list-unstyled list-inline">
                                                            <li class="list-inline-item"><a href="#">Home Appliance,</a></li>
                                                            <li class="list-inline-item"><a href="#">Smart Led</a></li>
                                                        </ul>
                                                        <p><a href="#">Samsung Smart Led Tv 42"</a></p>
                                                    </div>
                                                    <div class="tab-img">
                                                        <img class="main-img img-fluid" src="images/tab-5.png" alt="">
                                                        <img class="sec-img img-fluid" src="images/tab-16.png" alt="">
                                                        <div class="layer-box">
                                                            <a href="#" class="it-comp" data-toggle="tooltip" data-placement="left" title="Compare"><img src="images/it-comp.png" alt=""></a>
                                                            <a href="#" class="it-fav" data-toggle="tooltip" data-placement="left" title="Favourite"><img src="images/it-fav.png" alt=""></a>
                                                        </div>
                                                    </div>
                                                    <div class="img-content d-flex justify-content-between">
                                                        <div>
                                                            <ul class="list-unstyled list-inline fav">
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                            </ul>
                                                            <ul class="list-unstyled list-inline price">
                                                                <li class="list-inline-item">$120.00</li>
                                                                <li class="list-inline-item">$150.00</li>
                                                            </ul>
                                                        </div>
                                                        <div>
                                                            <a href="#" data-toggle="tooltip" data-placement="top" title="Add to Cart"><img src="images/it-cart.png" alt=""></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-item">
                                                    <div class="tab-heading">
                                                        <ul class="list-unstyled list-inline">
                                                            <li class="list-inline-item"><a href="#">Home Appliance,</a></li>
                                                            <li class="list-inline-item"><a href="#">Smart Led</a></li>
                                                        </ul>
                                                        <p><a href="#">Samsung Smart Led Tv 42"</a></p>
                                                    </div>
                                                    <div class="tab-img">
                                                        <img class="main-img img-fluid" src="images/tab-6.png" alt="">
                                                        <img class="sec-img img-fluid" src="images/tab-16.png" alt="">
                                                        <span class="new">New</span>
                                                        <div class="layer-box">
                                                            <a href="#" class="it-comp" data-toggle="tooltip" data-placement="left" title="Compare"><img src="images/it-comp.png" alt=""></a>
                                                            <a href="#" class="it-fav" data-toggle="tooltip" data-placement="left" title="Favourite"><img src="images/it-fav.png" alt=""></a>
                                                        </div>
                                                    </div>
                                                    <div class="img-content d-flex justify-content-between">
                                                        <div>
                                                            <ul class="list-unstyled list-inline fav">
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                            </ul>
                                                            <ul class="list-unstyled list-inline price">
                                                                <li class="list-inline-item">$120.00</li>
                                                                <li class="list-inline-item">$150.00</li>
                                                            </ul>
                                                        </div>
                                                        <div>
                                                            <a href="#" data-toggle="tooltip" data-placement="top" title="Add to Cart"><img src="images/it-cart.png" alt=""></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-item">
                                                    <div class="tab-heading">
                                                        <ul class="list-unstyled list-inline">
                                                            <li class="list-inline-item"><a href="#">Home Appliance,</a></li>
                                                            <li class="list-inline-item"><a href="#">Smart Led</a></li>
                                                        </ul>
                                                        <p><a href="#">Samsung Smart Led Tv 42"</a></p>
                                                    </div>
                                                    <div class="tab-img">
                                                        <img class="main-img img-fluid" src="images/tab-7.png" alt="">
                                                        <img class="sec-img img-fluid" src="images/tab-16.png" alt="">
                                                        <div class="layer-box">
                                                            <a href="#" class="it-comp" data-toggle="tooltip" data-placement="left" title="Compare"><img src="images/it-comp.png" alt=""></a>
                                                            <a href="#" class="it-fav" data-toggle="tooltip" data-placement="left" title="Favourite"><img src="images/it-fav.png" alt=""></a>
                                                        </div>
                                                    </div>
                                                    <div class="img-content d-flex justify-content-between">
                                                        <div>
                                                            <ul class="list-unstyled list-inline fav">
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                            </ul>
                                                            <ul class="list-unstyled list-inline price">
                                                                <li class="list-inline-item">$120.00</li>
                                                                <li class="list-inline-item">$150.00</li>
                                                            </ul>
                                                        </div>
                                                        <div>
                                                            <a href="#" data-toggle="tooltip" data-placement="top" title="Add to Cart"><img src="images/it-cart.png" alt=""></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-item">
                                                    <div class="tab-heading">
                                                        <ul class="list-unstyled list-inline">
                                                            <li class="list-inline-item"><a href="#">Home Appliance,</a></li>
                                                            <li class="list-inline-item"><a href="#">Smart Led</a></li>
                                                        </ul>
                                                        <p><a href="#">Samsung Smart Led Tv 42"</a></p>
                                                    </div>
                                                    <div class="tab-img">
                                                        <img class="main-img img-fluid" src="images/tab-8.png" alt="">
                                                        <img class="sec-img img-fluid" src="images/tab-16.png" alt="">
                                                        <div class="layer-box">
                                                            <a href="#" class="it-comp" data-toggle="tooltip" data-placement="left" title="Compare"><img src="images/it-comp.png" alt=""></a>
                                                            <a href="#" class="it-fav" data-toggle="tooltip" data-placement="left" title="Favourite"><img src="images/it-fav.png" alt=""></a>
                                                        </div>
                                                    </div>
                                                    <div class="img-content d-flex justify-content-between">
                                                        <div>
                                                            <ul class="list-unstyled list-inline fav">
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                            </ul>
                                                            <ul class="list-unstyled list-inline price">
                                                                <li class="list-inline-item">$120.00</li>
                                                                <li class="list-inline-item">$150.00</li>
                                                            </ul>
                                                        </div>
                                                        <div>
                                                            <a href="#" data-toggle="tooltip" data-placement="top" title="Add to Cart"><img src="images/it-cart.png" alt=""></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane fade" id="smart" role="tabpanel">
                                            <div class="tab-slider owl-carousel">
                                                <div class="tab-item">
                                                    <div class="tab-heading">
                                                        <ul class="list-unstyled list-inline">
                                                            <li class="list-inline-item"><a href="#">Home Appliance,</a></li>
                                                            <li class="list-inline-item"><a href="#">Smart Led</a></li>
                                                        </ul>
                                                        <p><a href="#">Samsung Smart Led Tv 42"</a></p>
                                                    </div>
                                                    <div class="tab-img">
                                                        <img class="main-img img-fluid" src="images/tab-9.png" alt="">
                                                        <img class="sec-img img-fluid" src="images/tab-16.png" alt="">
                                                        <div class="layer-box">
                                                            <a href="#" class="it-comp" data-toggle="tooltip" data-placement="left" title="Compare"><img src="images/it-comp.png" alt=""></a>
                                                            <a href="#" class="it-fav" data-toggle="tooltip" data-placement="left" title="Favourite"><img src="images/it-fav.png" alt=""></a>
                                                        </div>
                                                    </div>
                                                    <div class="img-content d-flex justify-content-between">
                                                        <div>
                                                            <ul class="list-unstyled list-inline fav">
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                            </ul>
                                                            <ul class="list-unstyled list-inline price">
                                                                <li class="list-inline-item">$120.00</li>
                                                                <li class="list-inline-item">$150.00</li>
                                                            </ul>
                                                        </div>
                                                        <div>
                                                            <a href="#" data-toggle="tooltip" data-placement="top" title="Add to Cart"><img src="images/it-cart.png" alt=""></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-item">
                                                    <div class="tab-heading">
                                                        <ul class="list-unstyled list-inline">
                                                            <li class="list-inline-item"><a href="#">Home Appliance,</a></li>
                                                            <li class="list-inline-item"><a href="#">Smart Led</a></li>
                                                        </ul>
                                                        <p><a href="#">Samsung Smart Led Tv 42"</a></p>
                                                    </div>
                                                    <div class="tab-img">
                                                        <img class="main-img img-fluid" src="images/tab-10.png" alt="">
                                                        <img class="sec-img img-fluid" src="images/tab-16.png" alt="">
                                                        <span class="sale">Sale</span>
                                                        <div class="layer-box">
                                                            <a href="#" class="it-comp" data-toggle="tooltip" data-placement="left" title="Compare"><img src="images/it-comp.png" alt=""></a>
                                                            <a href="#" class="it-fav" data-toggle="tooltip" data-placement="left" title="Favourite"><img src="images/it-fav.png" alt=""></a>
                                                        </div>
                                                    </div>
                                                    <div class="img-content d-flex justify-content-between">
                                                        <div>
                                                            <ul class="list-unstyled list-inline fav">
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                            </ul>
                                                            <ul class="list-unstyled list-inline price">
                                                                <li class="list-inline-item">$120.00</li>
                                                                <li class="list-inline-item">$150.00</li>
                                                            </ul>
                                                        </div>
                                                        <div>
                                                            <a href="#" data-toggle="tooltip" data-placement="top" title="Add to Cart"><img src="images/it-cart.png" alt=""></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-item">
                                                    <div class="tab-heading">
                                                        <ul class="list-unstyled list-inline">
                                                            <li class="list-inline-item"><a href="#">Home Appliance,</a></li>
                                                            <li class="list-inline-item"><a href="#">Smart Led</a></li>
                                                        </ul>
                                                        <p><a href="#">Samsung Smart Led Tv 42"</a></p>
                                                    </div>
                                                    <div class="tab-img">
                                                        <img class="main-img img-fluid" src="images/tab-11.png" alt="">
                                                        <img class="sec-img img-fluid" src="images/tab-16.png" alt="">
                                                        <div class="layer-box">
                                                            <a href="#" class="it-comp" data-toggle="tooltip" data-placement="left" title="Compare"><img src="images/it-comp.png" alt=""></a>
                                                            <a href="#" class="it-fav" data-toggle="tooltip" data-placement="left" title="Favourite"><img src="images/it-fav.png" alt=""></a>
                                                        </div>
                                                    </div>
                                                    <div class="img-content d-flex justify-content-between">
                                                        <div>
                                                            <ul class="list-unstyled list-inline fav">
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                            </ul>
                                                            <ul class="list-unstyled list-inline price">
                                                                <li class="list-inline-item">$120.00</li>
                                                                <li class="list-inline-item">$150.00</li>
                                                            </ul>
                                                        </div>
                                                        <div>
                                                            <a href="#" data-toggle="tooltip" data-placement="top" title="Add to Cart"><img src="images/it-cart.png" alt=""></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-item">
                                                    <div class="tab-heading">
                                                        <ul class="list-unstyled list-inline">
                                                            <li class="list-inline-item"><a href="#">Home Appliance,</a></li>
                                                            <li class="list-inline-item"><a href="#">Smart Led</a></li>
                                                        </ul>
                                                        <p><a href="#">Samsung Smart Led Tv 42"</a></p>
                                                    </div>
                                                    <div class="tab-img">
                                                        <img class="main-img img-fluid" src="images/tab-12.png" alt="">
                                                        <img class="sec-img img-fluid" src="images/tab-16.png" alt="">
                                                        <div class="layer-box">
                                                            <a href="#" class="it-comp" data-toggle="tooltip" data-placement="left" title="Compare"><img src="images/it-comp.png" alt=""></a>
                                                            <a href="#" class="it-fav" data-toggle="tooltip" data-placement="left" title="Favourite"><img src="images/it-fav.png" alt=""></a>
                                                        </div>
                                                    </div>
                                                    <div class="img-content d-flex justify-content-between">
                                                        <div>
                                                            <ul class="list-unstyled list-inline fav">
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                            </ul>
                                                            <ul class="list-unstyled list-inline price">
                                                                <li class="list-inline-item">$120.00</li>
                                                                <li class="list-inline-item">$150.00</li>
                                                            </ul>
                                                        </div>
                                                        <div>
                                                            <a href="#" data-toggle="tooltip" data-placement="top" title="Add to Cart"><img src="images/it-cart.png" alt=""></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane fade" id="shoe" role="tabpanel">
                                            <div class="tab-slider owl-carousel">
                                                <div class="tab-item">
                                                    <div class="tab-heading">
                                                        <ul class="list-unstyled list-inline">
                                                            <li class="list-inline-item"><a href="#">Home Appliance,</a></li>
                                                            <li class="list-inline-item"><a href="#">Smart Led</a></li>
                                                        </ul>
                                                        <p><a href="#">Samsung Smart Led Tv 42"</a></p>
                                                    </div>
                                                    <div class="tab-img">
                                                        <img class="main-img img-fluid" src="images/tab-13.png" alt="">
                                                        <img class="sec-img img-fluid" src="images/tab-16.png" alt="">
                                                        <div class="layer-box">
                                                            <a href="#" class="it-comp" data-toggle="tooltip" data-placement="left" title="Compare"><img src="images/it-comp.png" alt=""></a>
                                                            <a href="#" class="it-fav" data-toggle="tooltip" data-placement="left" title="Favourite"><img src="images/it-fav.png" alt=""></a>
                                                        </div>
                                                    </div>
                                                    <div class="img-content d-flex justify-content-between">
                                                        <div>
                                                            <ul class="list-unstyled list-inline fav">
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                            </ul>
                                                            <ul class="list-unstyled list-inline price">
                                                                <li class="list-inline-item">$120.00</li>
                                                                <li class="list-inline-item">$150.00</li>
                                                            </ul>
                                                        </div>
                                                        <div>
                                                            <a href="#" data-toggle="tooltip" data-placement="top" title="Add to Cart"><img src="images/it-cart.png" alt=""></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-item">
                                                    <div class="tab-heading">
                                                        <ul class="list-unstyled list-inline">
                                                            <li class="list-inline-item"><a href="#">Home Appliance,</a></li>
                                                            <li class="list-inline-item"><a href="#">Smart Led</a></li>
                                                        </ul>
                                                        <p><a href="#">Samsung Smart Led Tv 42"</a></p>
                                                    </div>
                                                    <div class="tab-img">
                                                        <img class="main-img img-fluid" src="images/tab-14.png" alt="">
                                                        <img class="sec-img img-fluid" src="images/tab-16.png" alt="">
                                                        <span class="new">New</span>
                                                        <div class="layer-box">
                                                            <a href="#" class="it-comp" data-toggle="tooltip" data-placement="left" title="Compare"><img src="images/it-comp.png" alt=""></a>
                                                            <a href="#" class="it-fav" data-toggle="tooltip" data-placement="left" title="Favourite"><img src="images/it-fav.png" alt=""></a>
                                                        </div>
                                                    </div>
                                                    <div class="img-content d-flex justify-content-between">
                                                        <div>
                                                            <ul class="list-unstyled list-inline fav">
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                            </ul>
                                                            <ul class="list-unstyled list-inline price">
                                                                <li class="list-inline-item">$120.00</li>
                                                                <li class="list-inline-item">$150.00</li>
                                                            </ul>
                                                        </div>
                                                        <div>
                                                            <a href="#" data-toggle="tooltip" data-placement="top" title="Add to Cart"><img src="images/it-cart.png" alt=""></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-item">
                                                    <div class="tab-heading">
                                                        <ul class="list-unstyled list-inline">
                                                            <li class="list-inline-item"><a href="#">Home Appliance,</a></li>
                                                            <li class="list-inline-item"><a href="#">Smart Led</a></li>
                                                        </ul>
                                                        <p><a href="#">Samsung Smart Led Tv 42"</a></p>
                                                    </div>
                                                    <div class="tab-img">
                                                        <img class="main-img img-fluid" src="images/tab-15.png" alt="">
                                                        <img class="sec-img img-fluid" src="images/tab-16.png" alt="">
                                                        <div class="layer-box">
                                                            <a href="#" class="it-comp" data-toggle="tooltip" data-placement="left" title="Compare"><img src="images/it-comp.png" alt=""></a>
                                                            <a href="#" class="it-fav" data-toggle="tooltip" data-placement="left" title="Favourite"><img src="images/it-fav.png" alt=""></a>
                                                        </div>
                                                    </div>
                                                    <div class="img-content d-flex justify-content-between">
                                                        <div>
                                                            <ul class="list-unstyled list-inline fav">
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                            </ul>
                                                            <ul class="list-unstyled list-inline price">
                                                                <li class="list-inline-item">$120.00</li>
                                                                <li class="list-inline-item">$150.00</li>
                                                            </ul>
                                                        </div>
                                                        <div>
                                                            <a href="#" data-toggle="tooltip" data-placement="top" title="Add to Cart"><img src="images/it-cart.png" alt=""></a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="tab-item">
                                                    <div class="tab-heading">
                                                        <ul class="list-unstyled list-inline">
                                                            <li class="list-inline-item"><a href="#">Home Appliance,</a></li>
                                                            <li class="list-inline-item"><a href="#">Smart Led</a></li>
                                                        </ul>
                                                        <p><a href="#">Samsung Smart Led Tv 42"</a></p>
                                                    </div>
                                                    <div class="tab-img">
                                                        <img class="main-img img-fluid" src="images/tab-9.png" alt="">
                                                        <img class="sec-img img-fluid" src="images/tab-16.png" alt="">
                                                        <div class="layer-box">
                                                            <a href="#" class="it-comp" data-toggle="tooltip" data-placement="left" title="Compare"><img src="images/it-comp.png" alt=""></a>
                                                            <a href="#" class="it-fav" data-toggle="tooltip" data-placement="left" title="Favourite"><img src="images/it-fav.png" alt=""></a>
                                                        </div>
                                                    </div>
                                                    <div class="img-content d-flex justify-content-between">
                                                        <div>
                                                            <ul class="list-unstyled list-inline fav">
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                            </ul>
                                                            <ul class="list-unstyled list-inline price">
                                                                <li class="list-inline-item">$120.00</li>
                                                                <li class="list-inline-item">$150.00</li>
                                                            </ul>
                                                        </div>
                                                        <div>
                                                            <a href="#" data-toggle="tooltip" data-placement="top" title="Add to Cart"><img src="images/it-cart.png" alt=""></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12 padding-fix-l20">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="banner">
                                            <a href="#"><img src="images/banner-1.png" alt="" class="img-fluid"></a>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="banner">
                                            <a href="#"><img src="images/banner-2.png" alt="" class="img-fluid"></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12 padding-fix-l20">
                                <div class="new-product">
                                    <div class="sec-title">
                                        <h5>New Product</h5>
                                    </div>
                                    <div class="new-slider owl-carousel">
                                        
                                        
                                     <g:each status="i" var="tmpInvItmImg" in="${inv.det.InvItmImg.findAllByDelFlgAndStatsFlg('N','M',[max: 10, sort: 'itm', order: 'desc'])}">
                                        
                                            
                                            <div class="new-item">
                                            <div class="tab-heading">
                                                <ul class="list-unstyled list-inline">
                                                    <li class="list-inline-item"><a href="#">${tmpInvItmImg?.itm?.catgry?.catgryName},</a></li>
                                                    <li class="list-inline-item"><a href="#">${tmpInvItmImg?.itm?.brand?.brandName}</a></li>
                                                </ul>
                                                <p><a href="#">${tmpInvItmImg?.itm?.itmName}</a></p>
                                            </div>
                                            <div class="new-img">
                                                <img class="main-img img-fluid" src="${createLink(controller:'GenEcom', action:'itmImgShow',params:['id':tmpInvItmImg.id.toInteger()])}" alt="" width="650" height="700">
                                                <img class="sec-img img-fluid" src="${createLink(controller:'GenEcom', action:'itmImgShow',params:['id':tmpInvItmImg.id.toInteger()])}" alt="" width="650" height="700">
                                                <div class="layer-box">
                                                    <a href="#" class="it-comp" data-toggle="tooltip" data-placement="left" title="Compare"><img src="images/it-comp.png" alt=""></a>
                                                    <a href="#" class="it-fav" data-toggle="tooltip" data-placement="left" title="Favourite"><img src="images/it-fav.png" alt=""></a>
                                                </div>
                                            </div>
                                            <div class="img-content d-flex justify-content-between">
                                                <div>
                                                    <ul class="list-unstyled list-inline fav">
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                    </ul>
                                                    <ul class="list-unstyled list-inline price">
                                                        <li class="list-inline-item">${tmpInvItmImg?.itm?.opRate}</li>
                                                        <li class="list-inline-item">${tmpInvItmImg?.itm?.mrp}</li>
                                                    </ul>
                                                </div>
                                                <div>
                                                    <a href="#" data-toggle="tooltip" data-placement="top" title="Add to Cart"><img src="images/it-cart.png" alt=""></a>
                                                </div>
                                            </div>
                                        </div>
                                        
                                        
                                         </g:each>
                                        
                                       
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12 padding-fix-l20">
                                <div class="banner-two">
                                    <a href="#"><img src="images/banner-3.png" alt="" class="img-fluid"></a>
                                </div>
                            </div>
                            <div class="col-md-12 padding-fix-l20">
                                <div class="top-slr">
                                    <div class="sec-title">
                                        <h5>Top Seller</h5>
                                    </div>
                                    <div class="slr-slider owl-carousel">
                                        <div class="slr-items">
                                            <div class="slr-box d-flex">
                                                <div class="slr-img">
                                                    <a href="#"><img src="images/sbar-6.png" alt=""></a>
                                                </div>
                                                <div class="slr-content">
                                                    <p><a href="#">Items Title Here</a></p>
                                                    <ul class="list-unstyled list-inline fav">
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                    </ul>
                                                    <ul class="list-unstyled list-inline price">
                                                        <li class="list-inline-item">$120.00</li>
                                                        <li class="list-inline-item">$150.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="slr-box d-flex">
                                                <div class="slr-img">
                                                    <a href="#"><img src="images/sbar-7.png" alt=""></a>
                                                </div>
                                                <div class="slr-content">
                                                    <p><a href="#">Items Title Here</a></p>
                                                    <ul class="list-unstyled list-inline fav">
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                    </ul>
                                                    <ul class="list-unstyled list-inline price">
                                                        <li class="list-inline-item">$120.00</li>
                                                        <li class="list-inline-item">$150.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="slr-box d-flex">
                                                <div class="slr-img">
                                                    <a href="#"><img src="images/sbar-8.png" alt=""></a>
                                                </div>
                                                <div class="slr-content">
                                                    <p><a href="#">Items Title Here</a></p>
                                                    <ul class="list-unstyled list-inline fav">
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                    </ul>
                                                    <ul class="list-unstyled list-inline price">
                                                        <li class="list-inline-item">$120.00</li>
                                                        <li class="list-inline-item">$150.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="slr-items">
                                            <div class="slr-box d-flex">
                                                <div class="slr-img">
                                                    <a href="#"><img src="images/sbar-9.png" alt=""></a>
                                                </div>
                                                <div class="slr-content">
                                                    <p><a href="#">Items Title Here</a></p>
                                                    <ul class="list-unstyled list-inline fav">
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                    </ul>
                                                    <ul class="list-unstyled list-inline price">
                                                        <li class="list-inline-item">$120.00</li>
                                                        <li class="list-inline-item">$150.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="slr-box d-flex">
                                                <div class="slr-img">
                                                    <a href="#"><img src="images/sbar-10.png" alt=""></a>
                                                </div>
                                                <div class="slr-content">
                                                    <p><a href="#">Items Title Here</a></p>
                                                    <ul class="list-unstyled list-inline fav">
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                    </ul>
                                                    <ul class="list-unstyled list-inline price">
                                                        <li class="list-inline-item">$120.00</li>
                                                        <li class="list-inline-item">$150.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="slr-box d-flex">
                                                <div class="slr-img">
                                                    <a href="#"><img src="images/sbar-11.png" alt=""></a>
                                                </div>
                                                <div class="slr-content">
                                                    <p><a href="#">Items Title Here</a></p>
                                                    <ul class="list-unstyled list-inline fav">
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                    </ul>
                                                    <ul class="list-unstyled list-inline price">
                                                        <li class="list-inline-item">$120.00</li>
                                                        <li class="list-inline-item">$150.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="slr-items">
                                            <div class="slr-box d-flex">
                                                <div class="slr-img">
                                                    <a href="#"><img src="images/sbar-12.png" alt=""></a>
                                                </div>
                                                <div class="slr-content">
                                                    <p><a href="#">Items Title Here</a></p>
                                                    <ul class="list-unstyled list-inline fav">
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                    </ul>
                                                    <ul class="list-unstyled list-inline price">
                                                        <li class="list-inline-item">$120.00</li>
                                                        <li class="list-inline-item">$150.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="slr-box d-flex">
                                                <div class="slr-img">
                                                    <a href="#"><img src="images/sbar-13.png" alt=""></a>
                                                </div>
                                                <div class="slr-content">
                                                    <p><a href="#">Items Title Here</a></p>
                                                    <ul class="list-unstyled list-inline fav">
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                    </ul>
                                                    <ul class="list-unstyled list-inline price">
                                                        <li class="list-inline-item">$120.00</li>
                                                        <li class="list-inline-item">$150.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="slr-box d-flex">
                                                <div class="slr-img">
                                                    <a href="#"><img src="images/sbar-14.png" alt=""></a>
                                                </div>
                                                <div class="slr-content">
                                                    <p><a href="#">Items Title Here</a></p>
                                                    <ul class="list-unstyled list-inline fav">
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                    </ul>
                                                    <ul class="list-unstyled list-inline price">
                                                        <li class="list-inline-item">$120.00</li>
                                                        <li class="list-inline-item">$150.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="slr-items">
                                            <div class="slr-box d-flex">
                                                <div class="slr-img">
                                                    <a href="#"><img src="images/sbar-6.png" alt=""></a>
                                                </div>
                                                <div class="slr-content">
                                                    <p><a href="#">Items Title Here</a></p>
                                                    <ul class="list-unstyled list-inline fav">
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                    </ul>
                                                    <ul class="list-unstyled list-inline price">
                                                        <li class="list-inline-item">$120.00</li>
                                                        <li class="list-inline-item">$150.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="slr-box d-flex">
                                                <div class="slr-img">
                                                    <a href="#"><img src="images/sbar-4.png" alt=""></a>
                                                </div>
                                                <div class="slr-content">
                                                    <p><a href="#">Items Title Here</a></p>
                                                    <ul class="list-unstyled list-inline fav">
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                    </ul>
                                                    <ul class="list-unstyled list-inline price">
                                                        <li class="list-inline-item">$120.00</li>
                                                        <li class="list-inline-item">$150.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="slr-box d-flex">
                                                <div class="slr-img">
                                                    <a href="#"><img src="images/sbar-2.png" alt=""></a>
                                                </div>
                                                <div class="slr-content">
                                                    <p><a href="#">Items Title Here</a></p>
                                                    <ul class="list-unstyled list-inline fav">
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                                        <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                                                    </ul>
                                                    <ul class="list-unstyled list-inline price">
                                                        <li class="list-inline-item">$120.00</li>
                                                        <li class="list-inline-item">$150.00</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12 padding-fix-l20">
                                <div class="hm-blog">
                                    <div class="sec-title">
                                        <h5>Latest News</h5>
                                    </div>
                                    <div class="blog-slider owl-carousel">
                                        <div class="blog-item">
                                            <div class="blog-img">
                                                <a href="#"><img src="images/news-1.jpg" alt="" class="img-fluid"></a>
                                            </div>
                                            <div class="blog-content">
                                                <h6><a href="#">Sint eius inventore magni quod.</a></h6>
                                                <ul class="list-unstyled list-inline">
                                                    <li class="list-inline-item"><i class="fa fa-user-o"></i><a href="#">John</a></li>
                                                    <li class="list-inline-item"><i class="fa fa-calendar"></i>12 Feb, 2020</li>
                                                </ul>
                                                <p>Lorem ipsum dolor sit amet, consectet adipisicing elit. Delectus, expedita dolorum tenetur soluta...</p>
                                            </div>
                                        </div>
                                        <div class="blog-item">
                                            <div class="blog-img">
                                                <a href="#"><img src="images/news-2.jpg" alt="" class="img-fluid"></a>
                                            </div>
                                            <div class="blog-content">
                                                <h6><a href="#">Sint eius inventore magni quod.</a></h6>
                                                <ul class="list-unstyled list-inline">
                                                    <li class="list-inline-item"><i class="fa fa-user-o"></i><a href="#">John</a></li>
                                                    <li class="list-inline-item"><i class="fa fa-calendar"></i>12 Mar, 2020</li>
                                                </ul>
                                                <p>Lorem ipsum dolor sit amet, consectet adipisicing elit. Delectus, expedita dolorum tenetur soluta...</p>
                                            </div>
                                        </div>
                                        <div class="blog-item">
                                            <div class="blog-img">
                                                <a href="#"><img src="images/news-3.jpg" alt="" class="img-fluid"></a>
                                            </div>
                                            <div class="blog-content">
                                                <h6><a href="#">Sint eius inventore magni quod.</a></h6>
                                                <ul class="list-unstyled list-inline">
                                                    <li class="list-inline-item"><i class="fa fa-user-o"></i><a href="#">John</a></li>
                                                    <li class="list-inline-item"><i class="fa fa-calendar"></i>12 Jan, 2020</li>
                                                </ul>
                                                <p>Lorem ipsum dolor sit amet, consectet adipisicing elit. Delectus, expedita dolorum tenetur soluta...</p>
                                            </div>
                                        </div>
                                        <div class="blog-item">
                                            <div class="blog-img">
                                                <a href="#"><img src="images/news-4.jpg" alt="" class="img-fluid"></a>
                                            </div>
                                            <div class="blog-content">
                                                <h6><a href="#">Sint eius inventore magni quod.</a></h6>
                                                <ul class="list-unstyled list-inline">
                                                    <li class="list-inline-item"><i class="fa fa-user-o"></i><a href="#">John</a></li>
                                                    <li class="list-inline-item"><i class="fa fa-calendar"></i>12 Feb, 2020</li>
                                                </ul>
                                                <p>Lorem ipsum dolor sit amet, consectet adipisicing elit. Delectus, expedita dolorum tenetur soluta...</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="tp-bnd owl-carousel">
                            <div class="bnd-items">
                                <a href="#"><img src="images/brand-01.png" alt="" class="img-fluid"></a>
                            </div>
                            <div class="bnd-items">
                                <a href="#"><img src="images/brand-02.png" alt="" class="img-fluid"></a>
                            </div>
                            <div class="bnd-items">
                                <a href="#"><img src="images/brand-03.png" alt="" class="img-fluid"></a>
                            </div>
                            <div class="bnd-items">
                                <a href="#"><img src="images/brand-04.png" alt="" class="img-fluid"></a>
                            </div>
                            <div class="bnd-items">
                                <a href="#"><img src="images/brand-05.png" alt="" class="img-fluid"></a>
                            </div>
                            <div class="bnd-items">
                                <a href="#"><img src="images/brand-06.png" alt="" class="img-fluid"></a>
                            </div>
                            <div class="bnd-items">
                                <a href="#"><img src="images/brand-07.png" alt="" class="img-fluid"></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Product Area -->

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
                                <li><a href="#"><i class="fa fa-angle-right"></i>My Account</a></li>
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
                        <img src="images/payment.png" alt="" class="img-fluid">
                    </div>
                </div>
            </div>
            <div class="back-to-top text-center">
                <img src="images/backtotop.png" alt="" class="img-fluid">
            </div>
        </section>
        <!-- End Footer Area -->


        <!-- =========================================
        JavaScript Files
        ========================================== -->

        <!-- jQuery JS -->
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

    </body>

<!-- Mirrored from www.thetahmid.com/themes/xemart-v1.0/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 28 Aug 2020 07:52:04 GMT -->
</html>
