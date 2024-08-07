<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">
        <!-- title -->
        <title>Manager Product</title>
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
        <style>
            img{
                width: 200px;
                height: 120px;
            }
            .manage-product {
                background-color: #000;
                padding: 20px;
                margin-top: 20px;
                border-radius: 10px;
                color: #fff;
                margin-bottom: 20px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <!-- Manage Product Section -->
            <div class="manage-product" style="background-color: #ccc; padding: 20px; border-radius: 10px; margin-top: 20px;">
                <h2 style="color: white; display: inline-block;">Manage <b>Product</b></h2>
                <div style="float: right;">
                    <a href="Add.jsp"  class="btn btn-success" data-toggle="modal" style="margin-right: 10px;"><i class="material-icons">&#xE147;</i> <span>Add New Product</span></a>
                </div>
            </div>
            <!-- Product Table -->
            <div class="table-wrapper">
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>
                                <span class="custom-checkbox">
                                    <input type="checkbox" id="selectAll">
                                    <label for="selectAll"></label>
                                </span>
                            </th>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Image</th>
                            <th>Price</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                  <style>
    /* Loại bỏ khung màu của icon trong nút */
    .btn span {
        border: none;
    }
</style>

<tbody>
    <!-- Populate table with product list -->
    <c:forEach items="${list}" var="o">
        <tr>
            <td>
                <span class="custom-checkbox">
                    <input type="checkbox" id="checkbox1" name="options[]" value="1">
                    <label for="checkbox1"></label>
                </span>
            </td>
            <td>${o.id}</td>
            <td>${o.name}</td>
            <td>
                <img src="${o.image}">
            </td>
            <td>${o.price} $</td>
            <td>
                <div class="btn-group" role="group">
                    <a href="loadProduct?pid=${o.id}" style="text-decoration: none; color: orange;" data-toggle="modal" data-target="#editProductModal">
                        ✎
                    </a>
                    <a href="delete?pid=${o.id}" style="text-decoration: none; color: red;" data-toggle="modal" data-target="#deleteProductModal">
                        🗑
                    </a>
                </div>
            </td>
        </tr>
    </c:forEach>
</tbody>

                </table>
                <!-- Pagination -->
<!--                <div class="clearfix">
                    <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>
                    <ul class="pagination">
 loadProduct?pid=${o.id}
                        <li class="page-item disabled"><a href="#">Previous</a></li>
                        <li class="page-item"><a href="#" class="page-link">1</a></li>
                        <li class="page-item"><a href="#" class="page-link">2</a></li>
                        <li class="page-item active"><a href="#" class="page-link">3</a></li>
                        <li class="page-item"><a href="#" class="page-link">4</a></li>
                        <li class="page-item"><a href="#" class="page-link">5</a></li>
                        <li class="page-item"><a href="#" class="page-link">Next</a></li>
                    </ul>
                </div>-->
            </div>
            <!-- Add Product Modal -->
            <div id="addEmployeeModal" class="modal fade">
                <!-- Modal Content -->
            </div>
            <!-- Delete Product Modal -->
            <div id="deleteEmployeeModal" class="modal fade">
                <!-- Modal Content -->
            </div>
            <!-- Back to Home Button -->
            <a href="home"><button type="button" class="btn btn-primary">Back to home</button></a>
        </div>
        <script src="js/manager.js" type="text/javascript"></script>
    </body>
</html>
