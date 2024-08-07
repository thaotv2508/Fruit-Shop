<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

        <!-- title -->
        <title>Single News</title>

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
            <!-- end search arewa -->

            <!-- breadcrumb-section -->
            <div class="breadcrumb-section breadcrumb-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 offset-lg-2 text-center">
                            <div class="breadcrumb-text">
                                <p>Read the Details</p>
                                <h1>Single Article</h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end breadcrumb section -->

            <!-- single article section -->
            <div class="mt-150 mb-150">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8">
                            <div class="single-article-section">
                                <div class="single-article-text">
                                    <img src="${detailnew.image}" alt="">
                                <p class="blog-meta">
                                    <span class="author"><i class="fas fa-user"></i> ${detailnew.author}</span>
                                    <span class="date"><i class="fas fa-calendar"></i> ${detailnew.date}</span>
                                </p>
                                <p>${detailnew.moredescription}</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="sidebar-section">
                            <div class="recent-posts">
                            </div>
                            <div class="archive-posts">
                                <h4>Recent Posts</h4>
                                <ul>
                                    <li><a href="detailnew?nid=1">You will vainly look for fruit on it in autumn.</a></li>
                                    <li><a href="detailnew?nid=2">Breakfast is nutritious with fresh fruits.</a></li>
                                    <li><a href="detailnew?nid=3">Good thoughts bear good fresh juicy fruit..</a></li>
                                    <li><a href="detailnew?nid=4">Fall in love with the fresh orange.</a></li>
                                    <li><a href="detailnew?nid=5">Why the berries always look delicious.</a></li>
                                    <li><a href="detailnew?nid=6">Love for fruits are genuine of Mr.Tran.</a></li>
                                </ul>
                            </div>
                            <div class="tag-section">
                                <h4>Tags</h4>
                                <ul>
                                    <li><a href="detail?pid=5">Apple</a></li>
                                    <li><a href="detail?pid=1">Strawberry</a></li>
                                    <li><a href="detail?pid=3">Berry</a></li>
                                    <li><a href="detail?pid=9">Orange</a></li>
                                    <li><a href="detail?pid=3">Lemon</a></li>
                                    <li><a href="detail?pid=8">Mango</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end single article section -->

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
        <!-- end copyright -->

        <!-- jquery -->
        <script src="assets/js/jquery-1.11.3.min.js"></script>
        <!-- bootstrap -->
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <!-- count down -->
        <script src="assets/js/jquery.countdown.js"></script>
        <!-- isotope -->
        <script src="assets/js/jquery.isotope-3.0.6.min.js"></script>
        <!-- waypoints -->
        <script src="assets/js/waypoints.js"></script>
        <!-- owl carousel -->
        <script src="assets/js/owl.carousel.min.js"></script>
        <!-- magnific popup -->
        <script src="assets/js/jquery.magnific-popup.min.js"></script>
        <!-- mean menu -->
        <script src="assets/js/jquery.meanmenu.min.js"></script>
        <!-- sticker js -->
        <script src="assets/js/sticker.js"></script>
        <!-- main js -->
        <script src="assets/js/main.js"></script>

    </body>
</html>