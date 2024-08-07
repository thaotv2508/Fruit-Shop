<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

        <!-- title -->
        <title>Fruitkha</title>

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
    <body>
        <jsp:include page="Menu.jsp"></jsp:include>
            <!-- end search area -->

            <!-- hero area -->
            <div class="hero-area hero-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-9 offset-lg-2 text-center">
                            <div class="hero-text">
                                <div class="hero-text-tablecell">
                                    <p class="subtitle">Fresh & Organic</p>
                                    <h1>Delicious Seasonal Fruits</h1>
                                    <div class="hero-btns">
                                        <a href="shop" class="boxed-btn">Fruit Collection</a>
                                        <a href="contact.html" class="bordered-btn">Contact Us</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end hero area -->

            <!-- features list section -->
            <div class="list-section pt-80 pb-80">
                <div class="container">

                    <div class="row">
                        <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                            <div class="list-box d-flex align-items-center">
                                <div class="list-icon">
                                    <i class="fas fa-shipping-fast"></i>
                                </div>
                                <div class="content">
                                    <h3>Free Shipping</h3>
                                    <p>When order over $10</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                            <div class="list-box d-flex align-items-center">
                                <div class="list-icon">
                                    <i class="fas fa-phone-volume"></i>
                                </div>
                                <div class="content">
                                    <h3>24/7 Support</h3>
                                    <p>Get support all day</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="list-box d-flex justify-content-start align-items-center">
                                <div class="list-icon">
                                    <i class="fas fa-sync"></i>
                                </div>
                                <div class="content">
                                    <h3>Refund</h3>
                                    <p>Get refund within 3 days!</p>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <!-- end features list section -->

            <!-- product section -->
            <div class="product-section mt-150 mb-150">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 offset-lg-2 text-center">
                            <div class="section-title">	
                                <h3><span class="orange-text">Our</span> Products</h3>
                                <p>Best-selling products.</p>
                            </div>
                        </div>
                    </div>

                    <div class="row">
<!--                        requestScope.-->
                    <c:forEach items="${listP}" var="p">
                        <div class="col-lg-4 col-md-6 text-center">
                            <div class="single-product-item">
                                <div class="product-image">
                                    <a href="detail?pid=${p.id}"><img src="${p.image}" alt=""></a>
                                </div>
                                <h3>${p.name}</h3>
                                <p class="product-price"><span>Per Kg</span> ${p.price}$ </p>                                                          
                            </div>
                        </div>
                    </c:forEach>
                    <div class="container">
                        <div class="row">
                            <div class="col-12 mt-4 text-center"> 
                                <a href="shop" class="btn btn-custom">Show more product</a>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <!-- end product section -->

        <!-- cart banner section -->
        <!-- end cart banner section -->

        <!-- testimonail-section -->
        <jsp:include page="Ceo.jsp"></jsp:include>
            <!-- end testimonail-section -->

            <!-- advertisement section -->
            <div class="abt-section mb-150">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-md-12">
                            <div class="abt-bg">
                                <a href="https://www.youtube.com/watch?v=dLC54mz--Dk" class="video-play-btn popup-youtube"><i class="fas fa-play"></i></a>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-12">
                            <div class="abt-text">
                                <p class="top-sub">Since Year 2022</p>
                                <h2>We are <span class="orange-text">Fruitkha</span></h2>
                                <p>At Fruitkha, we're passionate about bringing you the finest fruits that nature has to offer. With a commitment to quality and taste, we're proud to present our latest offering – the Hikan Strawberry. Handpicked from the most pristine orchards, our Hikan Strawberries are a testament to our dedication to providing you with nothing but the best. Whether you're craving a sweet indulgence or looking to add a burst of freshness to your day, Fruitkha's Hikan Strawberries are your go-to choice. Experience the difference with Fruitkha – where every bite is a celebration of flavor and vitality.</p>                               
                                <a href="About.jsp" class="boxed-btn mt-4">Know more</a>
                            </div>
                        </div>            
                    </div>
                </div>
            </div>
            <!-- end advertisement section -->

            <!-- shop banner -->
            <!-- end shop banner -->

            <!-- latest news -->
            <div class="latest-news pt-150 pb-150">
                <div class="container">

                    <div class="row">
                        <div class="col-lg-8 offset-lg-2 text-center">
                            <div class="section-title">	
                                <h3><span class="orange-text">Our</span> News</h3>
                                <p>Discover the Exciting World of Hikan Strawberries at Fruitkha!</p>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                    <c:forEach items="${listNewTwo}" var="n">
                        <div class="col-lg-4 col-md-6">
                            <div class="single-latest-news">
                                <a href="detailnew?nid=${n.id}"><img src="${n.image}" alt=""></a>
                                <div class="news-text-box">
                                    <h3><a href="detailnew?nid=${n.id}">${n.tittle}.</a></h3>
                                    <p class="blog-meta">
                                        <span class="author"><i class="fas fa-user"></i>${n.author}</span>
                                        <span class="date"><i class="fas fa-calendar"></i>${n.date}</span>
                                    </p>
                                    <p class="excerpt">${n.description}</p>
                                    <a href="detailnew?nid=${n.id}" class="read-more-btn">read more <i class="fas fa-angle-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <a href="news" class="boxed-btn">More News</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- end latest news -->

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
        <jsp:include page="Footer.jsp"></jsp:include>

    </body>
</html>