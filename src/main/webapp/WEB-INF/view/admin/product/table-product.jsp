<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Products</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
            <link rel="stylesheet" href="/css/style-dashboard.css">
            <link rel="stylesheet" href="/css/mini.css">
        </head>

        <body>
            <jsp:include page="../menu.jsp" />

            <div class="container mt-5">
                <h1>Products</h1>
                <a href="/admin/products/create" class="btn btn-primary mb-3">Create New Product</a>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Product Name</th>
                            <th>Product Type</th>
                            <th>Weight</th>
                            <th>Material</th>
                            <th>Making Fee</th>
                            <th>Gemstone Price</th>
                            <th>Cost Price</th>
                            <th>Markup Ratio</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${products}" var="product">
                            <tr>
                                <td>${product.productId}</td>
                                <td>${product.productName}</td>
                                <td>${product.productType}</td>
                                <td>${product.weight}</td>
                                <td>${product.material}</td>
                                <td>${product.makingFee}</td>
                                <td>${product.gemstonePrice}</td>
                                <td>${product.costPrice}</td>
                                <td>${product.markupRatio}</td>
                                <td>
                                    <a href="/admin/products/edit/${product.productId}"
                                        class="btn btn-warning btn-sm">Edit</a>
                                    <a href="/admin/products/delete/${product.productId}" class="btn btn-danger btn-sm"
                                        onclick="return confirm('Are you sure you want to delete this product?')">Delete</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </body>

        </html>