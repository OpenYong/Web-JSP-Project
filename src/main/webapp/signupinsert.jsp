<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.Statement"%>
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
	request.setCharacterEncoding("utf-8");
	String uid = request.getParameter("uid"); // input.jsp���� �Է¹��� ������ �޾ƿɴϴ�.
	String pass = request.getParameter("pass");
	out.println(uid + pass);

	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/db01?useUnicode=true&characterEncoding=utf8"; // �Ʊ� ���������� ���������� url�� ��������
		Connection con = DriverManager.getConnection(url, "root", "1234");
		String sql = "INSERT INTO users(uid,pass) VALUES(?,?)"; // sql�� �ۼ�(id�� name, pwd������ ���������� �۾�)
		PreparedStatement pstmt = con.prepareStatement(sql);

		pstmt.setString(1,uid); // values�� �� ������ id, name, pwd ����
		pstmt.setString(2,pass);

		pstmt.executeUpdate(); // sql�� ����(ȸ���߰� ����)
		pstmt.close();
		con.close();
		response.sendRedirect("index.html"); 
	}

	catch(ClassNotFoundException e) // ����ó��
	{
		out.println(e);
	}
	catch(SQLException e)
	{
		out.println(e);
	}
%>
</body>
</html>