<%--
  Created by IntelliJ IDEA.
  User: Meo Ot
  Date: 8/12/2020
  Time: 8:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <%
    RequestDispatcher dispatcher = request.getRequestDispatcher("/products");
    dispatcher.forward(request, response);
  %>
  </body>
</html>
