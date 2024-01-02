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
    <style>
    	span {
    		font-size: 1.2rem;
            color: red;
    	}
    	.id {
    		font-size: 1.2rem;
            color: blue;
    	}
    	
    </style>
</head>

<body>
<%
    request.setCharacterEncoding("UTF-8");

    String id = request.getParameter("id");

 
    String userId = null;

    Class.forName(driver);
    conn = DriverManager.getConnection(url, user,password);

    String sql = " select mem_id from member where mem_id = ? ";
    //실행객체
    ps = conn.prepareStatement(sql);
    //실행문에 값 셋팅
    ps.setString(1, id);

    //실행
    //쿼리 수행 rs
    rs = ps.executeQuery();

    if(rs.next()) {
%>
<p><span class="id"><%= id%></span>는 사용 <span>불가능</span>입니다.</p>
<%
}
else {
%>
<p><span class="id"><%= id%></span>는 사용 <span>가능</span>입니다.</p>
<%  }
%>

</body>
</html>
