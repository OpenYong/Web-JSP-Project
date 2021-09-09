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
<title>회원가입</title>
</head>
<body>

	<div>
	<fieldset >
		<form  method = POST action = "signupinsert.jsp">
			<label>아이디 : </label>
			<input type="text" name="uid" placeholder = "아이디" required><br>
			<label>비밀번호 : </label>
			<input type="text" name="pass" placeholder = "비밀번호" required>
			<input type="submit" value="가입">
		</form>
	</fieldset>
	</div>
</body>
</html>