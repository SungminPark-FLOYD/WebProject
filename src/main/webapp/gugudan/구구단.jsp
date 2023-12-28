<%--
  Created by IntelliJ IDEA.
  User: PC-24
  Date: 2023-12-26
  Time: PM 7:00
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
            height: 400px;
            margin-left: auto;
            margin-right: auto;
            border-spacing: 15px;
        }
        td {
            width: 10%;
            height: 10%;
            padding: 5px;
            text-align: center;
        }
    </style>
</head>
<%!
    int sum;
%>
<body>
<table border = "1">
    <%
        for(int i=1; i<10; i++){
    %>
    <tr>
        <%
            for(int j=1; j<10; j++){
                sum = i * j;
        %>
        <td>
            <%=sum%>
        </td>
        <%
            }
        %>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
