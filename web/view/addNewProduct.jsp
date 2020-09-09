<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Add New Product</title>
    <style>
        th{
            color: lightseagreen;
        }
        input{
            color: lightseagreen;
        }
        select{
            color: lightseagreen;
        }
    </style>
</head>
<body>
<div style="text-align: center;">
    <h1 style="color: green">Product Management</h1>
    <h2>
        <a href="/products?action=products" style="color: red">List All Users</a>
    </h2>
</div>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2 style="color: blue">Add New Product</h2>
            </caption>
            <tr>
                <th>Product Name:</th>
                <td>
                    <input type="text" name="name" id="name" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Product Price:</th>
                <td>
                    <input type="text" name="price" id="price" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Quantity:</th>
                <td>
                    <input type="text" name="quantity" id="quantity" size="15"/>
                </td>
            </tr>
            <tr>
                <th>Color:</th>
                <td>
                    <input type="text" name="color" id="color" size="15"/>
                </td>
            </tr>
            <tr>
                <th>description:</th>
                <td>
                    <input type="text" name="description" id="description" size="15"/>
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
                    <input type="submit" value="Create" style="background-color:green; color: white"/>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
