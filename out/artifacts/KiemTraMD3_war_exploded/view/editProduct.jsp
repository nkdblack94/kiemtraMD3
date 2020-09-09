<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Product Management Application</title>
    <style>
        th{
            color: dodgerblue;
        }
        input{
            color: blue;
        }
        select{
            color: blue;
        }
    </style>
</head>
<body>
<div style="text-align: center;">
    <h1 style="color: green">Product Management</h1>
    <h2>
        <a href="products?action=products">List All Product</a>
    </h2>
</div>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="3">
            <caption>
                <h2 style="color: red">
                    Edit Product
                </h2>
            </caption>
            <c:if test="${product != null}">
                <input type="hidden" name="id" value="${product.getId()}"/>
            </c:if>
            <tr>
                <th>Product Name:</th>
                <td>
                    <input type="text" name="name" size="50"
                           value="${product.getName()}"/>
                </td>
            </tr>
            <tr>
                <th>Product price:</th>
                <td>
                    <input type="text" name="price" size="50"
                           value="${product.getPrice()}"/>
                </td>
            </tr>
            <tr>
                <th>Quantity:</th>
                <td>
                    <input type="text" name="quantity" size="30"
                           value="${product.getQuantity()}"/>
                </td>
            </tr>
            <tr>
                <th>Color:</th>
                <td>
                    <input type="text" name="color" size="30"
                           value="${product.getColor()}"/>
                </td>
            </tr>
            <tr>
                <th>description:</th>
                <td>
                    <input type="text" name="description" size="15"
                           value="${product.getDescription()}"/>
                </td>
            </tr>
            <tr>
                <th>Category:</th>
                <td>
                    <div class="form-group">
                        <select name="category" id="category">
                            <c:forEach items='${requestScope["categories"]}' var="category">
                                <option value="${category.getName()}" <c:if test="${category.getName() == product.getCategory()}"> selected </c:if> > ${category.getName()}</option>
                            </c:forEach>
                        </select>
                    </div>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Update" style="background-color: green; color: white"/>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>