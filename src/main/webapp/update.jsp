<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
	
<title>회원 정보 수정</title>
</head>
<body>	
	<table>

<title>회원 정보 변경</title>
</head>
<body>
	<table border="1" cellpadding ="5" align = center>
		<tr>
			<td>아이디</td>
			<td>비밀번호</td>
		</tr>
		<tr>

			<td><%= request.getParameter("uid")%></td>
			<td><%= request.getParameter("pass")%></td>
		</tr>
		<tr>
			<td><INPUT TYPE="text" NAME="changeId" VALUE=<%= request.getParameter("uid")%> required></td>
			<td><INPUT TYPE="text" NAME="changePass" VALUE=<%= request.getParameter("pass")%> required></td>
			<td><INPUT TYPE="hidden" NAME="uid" VALUE=<%= request.getParameter("uid")%>></td>
		</tr>
		<tr>
			<td colspan = 2><input type="submit" value="수정"></td>
			
		</tr>
		
	</table>
	
			<td><%= request.getParameter("uid")--%></td>
			<td><%= request.getParameter("pass")--%></td>
		</tr>
		<tr>
			<td colspan="2">
				<form action="updateSQL.jsp">
					<input type="hidden" name="uid" value=<%=uid%>>
					<input type="text" name="changeId"> 
					<input type="text" name="changePass"> 
					<input type="submit" value="수정">
				</form>
			</td>
		</tr>
	</table>
</body>
</html>
