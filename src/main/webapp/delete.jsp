<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
   <%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.Statement"%>
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
	

	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/db01?useUnicode=true&characterEncoding=utf8"; // �Ʊ� ���������� ���������� url�� ��������
	
		Connection con = DriverManager.getConnection(url, "root", "dyddus29!");
		
		String sql = "delete from users where uid = ?"; // sql�� �ۼ�(id�� name, pwd������ ���������� �۾�)
		
		

		PreparedStatement pstmt = con.prepareStatement(sql);

		pstmt.setString(1,uid); // values�� �� ������ id, name, pwd ����


		pstmt.executeUpdate(); // sql�� ����(ȸ���߰� ����)

		pstmt.close();

		con.close();
		response.sendRedirect("list.jsp"); 
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