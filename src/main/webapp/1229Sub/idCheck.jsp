<%@ page import="java.util.Map" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.HashMap" %>
<%--
  Created by IntelliJ IDEA.
  User: PC-24
  Date: 2023-12-29
  Time: PM 6:10
  To change this template use File | Settings | File Templates.
--%>
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
    <style>
        #id {
            font-size: 1.2rem;
            color: blue;
        }
    </style>
</head>

<body>
<%
//    request.setCharacterEncoding("UTF-8");
//
//    String id = request.getParameter("id");

//    Map<String, Object> selectId = selectOne(sql);

//    String str = "";
//    if(selectId.isEmpty()) {
//        str = id + "는 사용 불가능 아이디 입니다.";
//    }
//    else
//        str = id + "는 사용 가능 아이디 입니다.";
%>
<%
    String userId = null;

    Class.forName(driver);
    conn = DriverManager.getConnection(url, user,password);

    String sql = " select mem_id from member where mem_id = ? ";
    //실행객체
    ps = conn.prepareStatement(sql);
    //실행문에 값 셋팅
    ps.setString(1, userId);

    //실행
    //쿼리 수행 rs
    rs = ps.executeQuery();

    if(rs.next()) {
%>
//사용 불가능
<p></p>
<%
}
else {
%>
//사용 가능
<%  }
%>

</body>
</html>
