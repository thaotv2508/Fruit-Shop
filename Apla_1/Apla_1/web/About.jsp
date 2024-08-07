<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "entity.*" %>
<%@page import = "dao.*" %>
<%@page import = "java.util.*" %>
<%@page import = "java.util.ArrayList" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<%
             ArrayList<Cart> cart_list = (ArrayList<Cart>)session.getAttribute("cart-list");
    if(cart_list != null){  
    request.setAttribute("cart_list",cart_list);}
%>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

        <!-- title -->
        <title>About</title>

        <!-- favicon -->
        <link rel="shortcut icon" type="image/png" href="assets/img/favicon.png">
        <!-- google font -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
        <!-- fontawesome -->
        <link rel="stylesheet" href="assets/css/all.min.css">
        <!-- bootstrap -->
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <!-- owl carousel -->
        <link rel="stylesheet" href="assets/css/owl.carousel.css">
        <!-- magnific popup -->
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <!-- animate css -->
        <link rel="stylesheet" href="assets/css/animate.css">
        <!-- mean menu css -->
        <link rel="stylesheet" href="assets/css/meanmenu.min.css">
        <!-- main style -->
        <link rel="stylesheet" href="assets/css/main.css">
        <!-- responsive -->
        <link rel="stylesheet" href="assets/css/responsive.css">

    </head>
    <jsp:include page="Menu.jsp"></jsp:include>
        <!-- end header -->

        <!-- end search arewa -->

        <!-- breadcrumb-section -->
        <div class="breadcrumb-section breadcrumb-bg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2 text-center">
                        <div class="breadcrumb-text">
                            <p>We sale fresh fruits</p>
                            <h1>About Us</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end breadcrumb section -->

        <!-- featured section -->
        <div class="feature-bg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7">
                        <div class="featured-text">
                            <h2 class="pb-3">Why <span class="orange-text">Fruitkha</span></h2>
                            <div class="row">
                                <div class="col-lg-6 col-md-6 mb-4 mb-md-5">
                                    <div class="list-box d-flex">
                                        <div class="list-icon">
                                            <i class="fas fa-shipping-fast"></i>
                                        </div>
                                        <div class="content">
                                            <h3>Home Delivery</h3>
                                            <p>Fast delivery service, reaching users in a short time.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 mb-5 mb-md-5">
                                    <div class="list-box d-flex">
                                        <div class="list-icon">
                                            <i class="fas fa-money-bill-alt"></i>
                                        </div>
                                        <div class="content">
                                            <h3>Best Price</h3>
                                            <p>Affordable price, easy to reach the majority of customers.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 mb-5 mb-md-5">
                                    <div class="list-box d-flex">
                                        <div class="list-icon">
                                            <i class="fas fa-briefcase"></i>
                                        </div>
                                        <div class="content">
                                            <h3>Custom Box</h3>
                                            <p>Packed carefully, promising to bring customers intact products.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <div class="list-box d-flex">
                                        <div class="list-icon">
                                            <i class="fas fa-sync-alt"></i>
                                        </div>
                                        <div class="content">
                                            <h3>Quick Refund</h3>
                                            <p>Quickly return goods, compensate for similar products or refund 100% of the purchase amount if the product is defective.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end featured section -->

        <!-- shop banner -->
<!--        <section class="shop-banner">
            <div class="container">
                <h3>July sale is on! <br> with big <span class="orange-text">Discount...</span></h3>
                <div class="sale-percent"><span>Sale! <br> Upto</span>50% <span>off</span></div>
                <a href="shop" class="cart-btn btn-lg">Shop Now</a>
            </div>
        </section>-->
        <!-- end shop banner -->

        <!-- team section -->
        <div class="mt-150">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 offset-lg-2 text-center">
                        <div class="section-title">
                            <h3>Our <span class="orange-text">Team</span></h3>
                            <p>Typical faces in product development.</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <div class="single-team-item">
                            <div class="team-bg team-bg-1"></div>
                            <h4>Jimmy Doe <span>Farmer</span></h4>
                            <ul class="social-link-team">
                                <li><a href="https://www.facebook.com/" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
                                <li><a href="https://twitter.com/" target="_blank"><i class="fab fa-twitter"></i></a></li>
                                <li><a href="https://www.instagram.com/" target="_blank"><i class="fab fa-instagram"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="single-team-item">
                            <div class="team-bg team-bg-2"></div>
                            <h4>Marry Doe <span>Farmer</span></h4>
                            <ul class="social-link-team">
                                <li><a href="https://www.facebook.com/" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
                                <li><a href="https://twitter.com/" target="_blank"><i class="fab fa-twitter"></i></a></li>
                                <li><a href="https://www.instagram.com/" target="_blank"><i class="fab fa-instagram"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 offset-md-3 offset-lg-0">
                        <div class="single-team-item">
                            <div class="team-bg team-bg-3"></div>
                            <h4>Simon Joe <span>Farmer</span></h4>
                            <ul class="social-link-team">
                                <li><a href="https://www.facebook.com/" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
                                <li><a href="https://twitter.com/" target="_blank"><i class="fab fa-twitter"></i></a></li>
                                <li><a href="https://www.instagram.com/" target="_blank"><i class="fab fa-instagram"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end team section -->

        <!-- testimonail-section -->
        <div class="testimonail-section mt-80 mb-150">
            <div class="container">
                <div class="row">
                    <div class="col-lg-10 offset-lg-1 text-center">
                        <div class="testimonial-sliders">
                            <div class="single-testimonial-slider">
                                <div class="client-avater">
                                    <img src="assets/img/avaters/avatar1.png" alt="">
                                </div>
                                <div class="client-meta">
                                    <h3>Saira Hakim <span>Local shop owner</span></h3>
                                    <p class="testimonial-body">
                                        "Fruikha is a website selling fresh fruits, a place for people who love the taste and freshness of fresh fruits. Here, customers will be greeted with a fresh and vibrant online space where they can discover a wide range of fresh fruits from around the world."
                                    </p>
                                    <div class="last-icon">
                                        <i class="fas fa-quote-right"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="single-testimonial-slider">
                                <div class="client-avater">
                                    <img src="assets/img/avaters/avatar2.png" alt="">
                                </div>
                                <div class="client-meta">
                                    <h3>David Niph <span>Local shop owner</span></h3>
                                    <p class="testimonial-body">
                                        "With a combination of quality and freshness, this website is committed to bringing customers the best quality products. From familiar fruits like apples, pears and oranges to rare and unique fruits like kiwis and pomegranates, each product is carefully selected to ensure freshness and the best flavor."
                                    </p>
                                    <div class="last-icon">
                                        <i class="fas fa-quote-right"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="single-testimonial-slider">
                                <div class="client-avater">
                                    <img src="assets/img/avaters/avatar3.png" alt="">
                                </div>
                                <div class="client-meta">
                                    <h3>Jacob Sikim <span>Local shop owner</span></h3>
                                    <p class="testimonial-body">
                                        "Not only is it a place to shop, the website also provides customers with useful information about fruits, from how to choose, preserve, and enjoy them in the most optimal way. By combining a convenient online shopping experience and professional service, the fresh fruit website not only satisfies shopping needs but also serves as a useful source of information for food lovers. Food and beauty from fresh fruits."
                                    </p>
                                    <div class="last-icon">
                                        <i class="fas fa-quote-right"></i>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end testimonail-section -->

        <!-- logo carousel -->
        <div class="logo-carousel-section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="logo-carousel-inner">
                            <div class="single-logo-item">
                                <img src="assets/img/company-logos/1.png" alt="">
                            </div>
                            <div class="single-logo-item">
                                <img src="assets/img/company-logos/2.png" alt="">
                            </div>
                            <div class="single-logo-item">
                                <img src="assets/img/company-logos/3.png" alt="">
                            </div>
                            <div class="single-logo-item">
                                <img src="assets/img/company-logos/4.png" alt="">
                            </div>
                            <div class="single-logo-item">
                                <img src="assets/img/company-logos/5.png" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end logo carousel -->

        <!-- footer -->
    <jsp:include page="Footer.jsp"></jsp:include>
       
        <!-- end footer -->


    </body>
</html>