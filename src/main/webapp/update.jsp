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
<title>ȸ�� ���� ����</title>
</head>
<body>
	<%String uid = request.getParameter("uid");%>
	<%String pass = request.getParameter("pass");%>
	<table border="1" cellpadding="5" align=center>
		<tr>
			<td>���̵�</td>
			<td>��й�ȣ</td>
		</tr>
		<tr>
			<td><%= uid%></td>
			<td><%= pass%></td>
		</tr>
		<tr>
			<td colspan="2">
				<form action="updateSQL.jsp">
					<input type="hidden" name="uid" value=<%= uid%>>
					<input type="text" name="changeId">
					<input type="text" name="changePass">
					<input type="submit" value="����">
				</form>
			</td>
		</tr>
	</table>
</body>
</html>