 <%@ page import = "java.sql.Connection" %>
    <%@ page import ="java.sql.DriverManager" %>
    <%@ page import ="java.sql.PreparedStatement" %>
    <%@ page import ="java.sql.ResultSet" %>
    <%@ page import ="java.sql.SQLException" %>
    <%@ page import ="java.sql.Statement" %>
    
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
    String ID = "root";                         // MySQL 아이디
    String PWD= "dyddus29!";                         // MySQL 비밀번호
    String PORTNO = "3306";                     // MySQL 포트 번호
    String DBNAME = "db01";                     // 연결할 MySQL DB 이름
    // MySQL 8.0 버전 이상 연결 시 사용
 
    String Query = "jdbc:mysql://localhost:" + PORTNO + "/" + DBNAME + "?";                                             
 
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection(Query, ID, PWD);  
 
    if (conn != null) {
        out.println("WebDB 데이터베이스로 연결했습니다. <br>");
        conn.close();
        out.println("WebDB 데이터베이스로의 연결을 끊었습니다.<br>");
    }
    else {
        out.println("WebDB 데이터베이스로 연결할 수 없습니다.<br>");
    }
%>

</body>
</html>