<%--
  Created by IntelliJ IDEA.
  User: PC-24
  Date: 2023-12-21
  Time: PM 12:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>

    <title>Title</title>
    <style>
        table {
            border : 2px double green;
            margin: 10%;
        }
        td {
            width: 300px;
            height: 150px;
        }
    </style>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");

    String userId = request.getParameter("id");
    String userName = request.getParameter("name");

    String sgend = request.getParameter("gend");

    String[] likes = request.getParameterValues("like");

    String str = "";
//    for(int i = 0; i < likes.length; i++) {
//        str += likes[i]+ "&nbsp;&nbsp;";
//    }
    for(String ss : likes) {
        str += ss + "&nbsp;&nbsp;&nbsp;";
    }
%>

<table border="1">
    <tr>
        <td>아이디</td>
        <td>이름</td>
        <td>성별</td>
        <td>음식</td>
    </tr>

    <tr>
        <td><%= userId%></td>
        <td><%= userName%></td>
        <td><%= sgend%></td>
        <td><%= str%></td>
    </tr>
</table>

</body>
</html>
