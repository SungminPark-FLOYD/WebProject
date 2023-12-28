<%--
  Created by IntelliJ IDEA.
  User: PC-24
  Date: 2023-12-27
  Time: PM 7:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        table {
            border: 10px solid lightblue;
            width: 400px;
            height: 600px;
            margin-left: auto;
            margin-right: auto;
            border-spacing: 15px;
        }
        td {
            border: none;
            border-bottom: 1px solid lightblue;
            text-align: center;
        }
    </style>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");

    String dan = request.getParameter("dan");
    int num = Integer.parseInt(dan);

%>

<table border="1">
    <% for(int i=1; i <= 9; i++) { %>
    <tr>
        <td><%= dan%></td>
        <td>*</td>
        <td><%= i%></td>
        <td>=</td>
        <td><%= num*i%></td>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
