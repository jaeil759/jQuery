<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>국밥부장관 </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">
    
    <!-- CSS 
    ========================= -->
    <!--bootstrap min css-->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <!--owl carousel min css-->
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <!--slick min css-->
    <link rel="stylesheet" href="assets/css/slick.css">
    <!--magnific popup min css-->
    <link rel="stylesheet" href="assets/css/magnific-popup.css">
    <!--font awesome css-->
    <link rel="stylesheet" href="assets/css/font.awesome.css">
    <!--ionicons css-->
    <link rel="stylesheet" href="assets/css/ionicons.min.css">
    <!--linearicons css-->
    <link rel="stylesheet" href="assets/css/linearicons.css">
    <!--animate css-->
    <link rel="stylesheet" href="assets/css/animate.css">
    <!--jquery ui min css-->
    <link rel="stylesheet" href="assets/css/jquery-ui.min.css">
    <!--slinky menu css-->
    <link rel="stylesheet" href="assets/css/slinky.menu.css">
    <!--plugins css-->
    <link rel="stylesheet" href="assets/css/plugins.css">
   
    
    <!-- Main Style CSS -->
    <link rel="stylesheet" href="assets/css/style.css">
    
    
    <!--modernizr min js here-->
    <script src="assets/js/vendor/modernizr-3.7.1.min.js"></script>
</head>

<body>
   
    <!--header area start-->
    
    <!--offcanvas menu area start-->
	<div class="offcanvas_menu">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="canvas_open">
						<a href="javascript:void(0)"><i class="icon-menu"></i></a>
					</div>
					<div class="offcanvas_menu_wrapper">
						<div class="canvas_close">
							<a href="javascript:void(0)"><i class="icon-x"></i></a>
						</div>


						<div class="call-support">
							<p>
								<a href="tel:(042)82828282">(042)82828282</a> 전화문의
							</p>
						</div>
						<div id="menu" class="text-left ">
							<ul class="offcanvas_main_menu">
								<li class="menu-item-has-children active"><a
									href="gukbap_main">메인</a></li>
								<li class="menu-item-has-children"><a
									href="shop-right-sidebar">메뉴</a></li>
								<li class="menu-item-has-children"><a
									href="blog_sidebar">리뷰</a></li>
								<li class="menu-item-has-children"><a href="chat">문의</a>
								</li>
									<li class="menu-item-has-children">
                                    <a href="about">회사소개 </a>
                                    
                                </li>
							
							</ul>
						</div>
						<div class="offcanvas_footer">
							<span><a href="#"><i class="fa fa-envelope-o"></i>
									jaeil759@naver.com</a></span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--offcanvas menu area end-->
    
    <header>
        <div class="main_header">
         
            <div class="header_middle">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-2 col-md-3 col-sm-3 col-3">
                            <div class="logo">
                                <a href="gukbap_main"><img src="assets/img/logo/logo.png" alt=""></a>
                            </div>
                        </div>
                        <div class="col-lg-10 col-md-6 col-sm-7 col-8">
                            <div class="header_right_info">
                                <div class="header_account_area">
                                    <div class="header_account_list register">
                                        <ul>

                                        	<c:choose>
	                                        	<c:when test="${empty loginUser }">
		                                            <li><a href="register">Register</a></li>
		                                            <li><span>/</span></li>
		                                            <li><a href="login">Login</a></li>
	                                        	</c:when>
	                                        	<c:otherwise>
	                                        		<li><a href="logout_action">logout</a></li>
	                                        	</c:otherwise>
                                        	</c:choose>

                                        </ul>
                                    </div>
                                 
                                  
                                    <button style="border: none; background: transparent;" name="main_to_wishlist_button" value="${product.product_no }">
									<li class="wishlist"><a href="wishlist"><span class="lnr lnr-heart"></span></a></li></button> 
                                         
                                    
                                 <button style="border: none; background: transparent;" name="main_to_cart_button" value="${product.product_no}" >
                                    <li class="add_to_cart"><a href="to_cart_from_header"><span class="lnr lnr-cart"></span></a></li></button>	
                                        <!--mini cart-->
                    
                                        <!--mini cart end-->
                                   </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header_bottom sticky-header">
                <div class="container">  
                    <div class="row align-items-center">
                        <div class="col-12 col-md-6 mobail_s_block">
                            <div class="search_container">
                               <form action="#">
                                   <div class="hover_category">
                                   </div>
                                    
                                </form>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6">
                            <div class="categories_menu">
                                <div class="categories_title">
                                    <h2 class="categori_toggle">All Cattegories</h2>
                                </div>
                                <div class="categories_menu_toggle">
                                    <ul>
                                       <li><a class="active"  href="about">회사소개</a></li>
                                        <li class="mega_items"><a href="shop-right-sidebar">메뉴</a></li>
                                        <li><a href="blog_sidebar">리뷰</a></li>
                                        <li><a href="chat">문의</a></li> 
                                       <c:choose>
	                                        	<c:when test="${empty loginUser }">
		                                            <li><a href=""></a></li>
		                                            <li><span></span></li>
		                                            <li><a href=""></a></li>
	                                        	</c:when>
	                                        	<c:otherwise>
	                                        		<li><a href="my-account">내정보</a></li>
	                                        	</c:otherwise>
                                        	</c:choose>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-lg-6">
                            <!--main menu start-->
                            <div class="main_menu menu_position"> 
                                <nav>  
                                    <ul>
                                        <li><a class="active"  href="about">회사소개</a></li>
                                        <li class="mega_items"><a href="shop-right-sidebar">메뉴</a></li>
                                        <li><a href="blog_sidebar">리뷰</a></li>
                                        <li><a href="chat">문의</a></li> 
                                        <c:choose>
	                                        	<c:when test="${empty loginUser }">
		                                            <li><a href=""></a></li>
		                                            <li><span></span></li>
		                                            <li><a href=""></a></li>
	                                        	</c:when>
	                                        	<c:otherwise>
	                                        		<li><a href="my-account">내정보</a></li>
	                                        	</c:otherwise>
                                        	</c:choose>

                                        
                                    </ul>  
                                </nav> 
                            </div>
                            <!--main menu end-->
                        </div>
                        <div class="col-lg-3">
                            <div class="call-support">
                                <p><a href="tel:(042)82828282">(042)82828282</a> Customer Support</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> 
    </header>
</html>