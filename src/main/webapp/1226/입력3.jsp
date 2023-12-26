<%--
  Created by IntelliJ IDEA.
  User: PC-24
  Date: 2023-12-26
  Time: AM 9:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <style>
        h1 {
            color: red;
            margin: 50px;
        }
        table {
            border: 1px solid blue;
        }
        td {
            width: 100px;
            height: 50px;
        }
        .cont {
            width: 300px;
        }
    </style>
</head>
<body>
<h1>JSP : JAVA SERVER PAGE</h1>

<%
    request.setCharacterEncoding("UTF-8");

    String userName = request.getParameter("name");
    String title = request.getParameter("title");
    String area = request.getParameter("area"); //엔터기호(\r\n)가 포함

    String car1 = request.getParameter("cars1");
    String[] car2 = request.getParameterValues("cars2");

    //다중선택은 for문으로 저장하고 출력
    String str ="";
    for(String car : car2) {
        str += car + "<br>";
    }

    area = area.replaceAll("\n", "<br>");

    //db처리 - crud

    //결과값으로 응답 페이지를 생성
%>

<table border="1">
    <tr>
        <td>이름</td>
        <td class="cont"><%= userName%></td>
    </tr>
    <tr>
        <td>제목</td>
        <td class="cont"><%= title%></td>
    </tr>
    <tr>
        <td>내용</td>
        <td class="cont"><%= area%></td>
    </tr>
    <tr>
        <td>자동차1</td>
        <td class="cont"><%= car1%></td>
    </tr>
    <tr>
        <td>자동차2</td>
        <td class="cont"><%= str%></td>
    </tr>
</table>
</body>
</html>
