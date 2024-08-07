<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<body>

    <!--PreLoader-->
    <div class="loader">
        <div class="loader-inner">
            <div class="circle"></div>
        </div>
    </div>
    <!--PreLoader Ends-->

    <!-- header -->
    <div class="top-header-area" id="sticker">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-sm-12 text-center">
                    <div class="main-menu-wrap">
                        <!-- logo -->
                        <div class="site-logo">
                            <a href="home">
                                <img src="assets/img/logo.png" alt="">
                            </a>
                        </div>
                        <!-- logo -->

                        <!-- menu start -->
                        <nav class="main-menu">
                            <ul>
                                <li><a href="About.jsp">About</a></li>
                                <li><a href="news">News</a>
                                <li><a href="shop">Shop</a>
                                </li>

                                <c:if test="${sessionScope.acc.isAdmin == 1}">
                                    <li><a href="ManagerOrder.jsp">Manager Account</a></li>
                                    </c:if>

                                <c:if test="${sessionScope.acc.isSell == 1}">
                                    <li><a href="manager">Manager Product</a></li>
                                    </c:if>

                                <c:if test="${sessionScope.acc == null}">
                                    <li><a href="Login.jsp">Login</a></li>
                                    </c:if>

                                <c:if test="${sessionScope.acc != null}" >
                                    <li><a href="OrderList.jsp">Hello ${sessionScope.acc.user}</a></li>
                                    <li><a href="logout">Logout</a></li>
                                    </c:if>


                                   
                                        <li>
                                    <div class="header-icons">
                                        <c:if test="${sessionScope.acc != null}">
                                            <a class="shopping-cart" href="Cart.jsp"><i class="fas fa-shopping-cart"><span class="badge badge-danger">${cart_list.size()}</span></i></a>
                                        </c:if>
                                        <a class="mobile-hide search-bar-icon" href="#">${requestScope.size}<i class="fas fa-search"></i></a>
                                    </div>
                                </li>
                                  
                            </ul>
                        </nav>
                        <a class="mobile-show search-bar-icon" href="#"><i class="fas fa-search"></i></a>
                        <div class="mobile-menu"></div>
                        <!-- menu end -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end header -->

    <!-- search area -->
    <form action="search" method="POST">
        <div class="search-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <span class="close-btn"><i class="fas fa-window-close"></i></span>
                        <div class="search-bar">
                            <div class="search-bar-tablecell">
                                <h3>Search For:</h3>
                                <input name="txt" type="txt" placeholder="Keywords">
                                <button type="submit">Search <i class="fas fa-search"></i></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
