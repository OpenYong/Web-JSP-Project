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
<title>ȸ������</title>
</head>
<body>

	<div>
	<fieldset >
		<form  method = POST action = "signupinsert.jsp">
			<label>���̵� : </label>
			<input type="text" name="uid" placeholder = "���̵�" required><br>
			<label>��й�ȣ : </label>
			<input type="text" name="pass" placeholder = "��й�ȣ" required>
			<input type="submit" value="����">
		</form>
	</fieldset>
	</div>
</body>
</html>