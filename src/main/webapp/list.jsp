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
    String ID = "root";                         // MySQL ���̵�
    String PWD= "dyddus29!";                         // MySQL ��й�ȣ
    String PORTNO = "3306";                     // MySQL ��Ʈ ��ȣ
    String DBNAME = "db01";                     // ������ MySQL DB �̸�
    // MySQL 8.0 ���� �̻� ���� �� ���
 
    String Query = "jdbc:mysql://localhost:" + PORTNO + "/" + DBNAME + "?";                                             
 
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection conn = DriverManager.getConnection(Query, ID, PWD);  
 
    if (conn != null) {
        out.println("WebDB �����ͺ��̽��� �����߽��ϴ�. <br>");
        conn.close();
        out.println("WebDB �����ͺ��̽����� ������ �������ϴ�.<br>");
    }
    else {
        out.println("WebDB �����ͺ��̽��� ������ �� �����ϴ�.<br>");
    }
%>

</body>
</html>