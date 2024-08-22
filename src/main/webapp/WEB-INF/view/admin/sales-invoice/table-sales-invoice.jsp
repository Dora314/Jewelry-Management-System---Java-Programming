<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <!DOCTYPE html>
            <html>

            <head>
                <meta charset="UTF-8">
                <title>Sales Invoices</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
            </head>

            <body>
                <div class="container mt-5">
                    <h1>Sales Invoices</h1>
                    <a href="/admin/sales-invoices/create" class="btn btn-primary mb-3">Create New Sales Invoice</a>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Created Date</th>
                                <th>Customer</th>
                                <th>Employee</th>
                                <th>Stall</th>
                                <th>Total Amount</th>
                                <th>Discount</th>
                                <th>Payment Method</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${salesInvoices}" var="invoice">
                                <tr>
                                    <td>${invoice.salesInvoiceId}</td>
                                    <td>
                                        <fmt:formatDate value="${invoice.createdDate}" pattern="yyyy-MM-dd HH:mm:ss" />
                                    </td>
                                    <td>${invoice.customer.customerName}</td>
                                    <td>${invoice.employee.employeeName}</td>
                                    <td>${invoice.stall.stallName}</td>
                                    <td>${invoice.totalAmount}</td>
                                    <td>${invoice.discount}</td>
                                    <td>${invoice.paymentMethod}</td>
                                    <td>
                                        <a href="/admin/sales-invoices/edit/${invoice.salesInvoiceId}"
                                            class="btn btn-warning btn-sm">Edit</a>
                                        <a href="/admin/sales-invoices/delete/${invoice.salesInvoiceId}"
                                            class="btn btn-danger btn-sm"
                                            onclick="return confirm('Are you sure you want to delete this sales invoice?')">Delete</a>
                                        <a href="/admin/sales-invoice-details/invoice/${invoice.salesInvoiceId}"
                                            class="btn btn-info btn-sm">Details</a> <%-- Thêm link xem chi tiết --%>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </body>

            </html>