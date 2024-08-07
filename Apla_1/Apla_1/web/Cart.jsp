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
    List<Cart> cartProduct = null;
    if(cart_list != null){
       DAO dao = new DAO();    
    cartProduct = dao.getCartProducts(cart_list);
    double total = dao.getTotalCartPrice(cart_list);
    request.setAttribute("cart_list",cart_list);
    request.setAttribute("total",total);
    }
%>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

        <!-- title -->
        <title>Cart</title>

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

            <!-- cart -->
            <div class="cart-section mt-150 mb-150">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 col-md-12">
                            <div class="cart-table-wrap">
                                <table class="cart-table">
                                    <thead class="cart-table-head">
                                        <tr class="table-head-row">
                                            <th class="product-remove"></th>
                                            <th class="product-image">Product Image</th>
                                            <th class="product-name">Name</th>
                                            <th class="product-price">Price</th>
                                            <th class="product-quantity">Quantity</th>
                                            <!--                                            <th class="product-quantity">Buy Now</th>-->
                                        </tr>
                                    </thead>
                                    <tbody>

                                    <%
                                        if(cart_list != null){
                                        for(Cart c : cartProduct){  %>    
                                    <tr class="table-body-row">
                                        <td class="product-remove"><a href="removecart?id=<%= c.getId()%>"><i class="far fa-window-close"></i></a></td>
                                        <td class="product-image"><img src="<%= c.getImage()%>" alt=""></td>
                                        <td class="product-name"><%= c.getName()%></td>
                                        <td class="product-price"><%= c.getPrice()%>$</td>
                                <input type="hidden" name="id" value="<%=c.getId()%>">   
                                <td class="product-quantity">
                                    <form action="order" method="get">
                                        <input type="hidden" name="id" value="<%= c.getId()%>" class="form">
                                        <div clas="form-group d-flex justify-content-between">
                                            <a class="bth bth-sm bth-decre" href="quantity?action=des&id=<%= c.getId()%>"><i class="fas fa-minus-square"></i></a>
                                            <input type="text" name="quantity" class="form" value="<%= c.getQuantity()%>" rendonly>
                                            <a class="bth bth-sm bth-incre" href="quantity?action=inc&id=<%= c.getId()%>"><i class="fas fa-plus-square"></i></a>
                                        </div>  
                                    </form>
                                <td>
                                    <!--                                    <form action="order" method="get">
                                                                            <button type="submit" class="btn btn-primary">Buy Now</button>
                                                                        </form>-->
                                </td>           
                                </form
                                </tr>
                                <%}
                                }
                                %>

                                </form>
                                </tbody>

                            </table>
                        </div>
                    </div>

                    <div class="col-lg-4">
                        <div class="total-section">
                            <table class="total-table">
                                
                                <thead class="total-table-head">
                                    <tr class="table-total-row">
                                        <th>Total</th>
                                        <th>Price</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="total-data">
                                        <td><strong>Total: </strong></td>
                                        <td>${(total > 0)?total:0}$</td>
                                    </tr>
                                </tbody>
                            </table>
                            <div class="cart-buttons">
                                <form action="checkout" method="get">
                                    <button type="submit" class="boxed-btn black">Check Out</button>
                                </form>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
        <!-- end cart -->

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