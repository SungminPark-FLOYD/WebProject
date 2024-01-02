
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

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	 table{
            border: 2px solid lightblue;
            width: 50%;
        }
        td {
            border: 2px solid lightblue;
            height: 50px;
            text-align: center;
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

    String sql = " select mem_id, mem_name,mem_hp from member ";
    //실행객체
    ps = conn.prepareStatement(sql);

    //실행
    //쿼리 수행 rs
    rs = ps.executeQuery();
%>
<table>
<tr>
	<td>아이디</td>
	<td>이름</td>
	<td>전화번호</td>
<tr>
<%
	while(rs.next()) {
		String memId = rs.getString("MEM_ID");
		String memName = rs.getString("MEM_NAME");
		String memHp = rs.getString("MEM_HP");		
%>

		<tr>
			<td><%= memId%></td>
			<td><%= memName%></td>
			<td><%= memHp%></td>
		</tr>

<% 
	}
%>
</table>

</body>
</html>