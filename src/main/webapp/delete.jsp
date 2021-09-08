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
	String uid = request.getParameter("uid"); // input.jsp에서 입력받은 값들을 받아옵니다.
	

	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/db01?useUnicode=true&characterEncoding=utf8"; // 아까 예제에서와 마찬가지로 url을 설정하죠
	
		Connection con = DriverManager.getConnection(url, "root", "dyddus29!");
		
		String sql = "delete from users where uid = ?"; // sql문 작성(id와 name, pwd값들을 보내기위한 작업)
		
		

		PreparedStatement pstmt = con.prepareStatement(sql);

		pstmt.setString(1,uid); // values에 들어갈 각각의 id, name, pwd 설정


		pstmt.executeUpdate(); // sql문 실행(회원추가 실행)

		pstmt.close();

		con.close();
		response.sendRedirect("list.jsp"); 
	}

	catch(ClassNotFoundException e) // 예외처리

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