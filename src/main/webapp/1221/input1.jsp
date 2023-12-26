<%--
  Created by IntelliJ IDEA.
  User: PC-24
  Date: 2023-12-21
  Time: AM 11:39
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
    String userPass = request.getParameter("pass");
    String userName = request.getParameter("name");

    //db와 연결 - 해당하는 데이터가 있는지
    //검색, 삭제, 수정, 새로운 데이터로 입력

    //db수랭 결과를 가지고 응답 페이지를 생성

%>

<table border="1">
    <tr>
        <td>아이디</td>
        <td>비밀번호</td>
    </tr>
<table border="1">
    <tr>
        <td><%= userId %></td>
        <td><%= userPass %></td>
        <td><%= userName %></td>
    </tr>
</table>
</body>
</html>
