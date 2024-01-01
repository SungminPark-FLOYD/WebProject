<%--
  Created by IntelliJ IDEA.
  User: PC-24
  Date: 2023-12-29
  Time: PM 7:52
  To change this template use File | Settings | File Templates.
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%!
    private Connection conn = null;
    private ResultSet rs = null;
    private PreparedStatement ps = null;
    private String driver =
            "oracle.jdbc.driver.OracleDriver";
    private String url =
            "jdbc:oracle:thin:@localhost:1521:xe";
    private String user =
            "FLOYD";
    private String password =
            "java";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");

    String id = request.getParameter("id");


    String userId = null;

    Class.forName(driver);
    conn = DriverManager.getConnection(url, user,password);

    String sql = " select mem_id, mem_name,mem_hp from member";
    //실행객체
    ps = conn.prepareStatement(sql);
    //실행
    //쿼리 수행 rs
    rs = ps.executeQuery();
%>
<%
    while (rs.next()) {
        String
    }
%>
</body>
</html>
