<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<<<<<<< HEAD
<title>ȸ�� ���� ����</title>
</head>
<body>	
	<table>
=======
<title>ȸ�� ���� ����</title>
</head>
<body>
	<table border="1" cellpadding ="5" align = center>
>>>>>>> 2f36dcacd8d23a6655bdd9d2391e5e8d7362c57f
		<tr>
			<td>���̵�</td>
			<td>��й�ȣ</td>
		</tr>
		<tr>
<<<<<<< HEAD
			<td><%= request.getParameter("uid")%></td>
			<td><%= request.getParameter("pass")%></td>
		</tr>
		<tr>
			<td><INPUT TYPE="text" NAME="changeId" VALUE=<%= request.getParameter("uid")%> required></td>
			<td><INPUT TYPE="text" NAME="changePass" VALUE=<%= request.getParameter("pass")%> required></td>
			<td><INPUT TYPE="hidden" NAME="uid" VALUE=<%= request.getParameter("uid")%>></td>
		</tr>
		<tr>
			<td colspan = 2><input type="submit" value="����"></td>
			
		</tr>
		
	</table>
	
=======
			<td><%= request.getParameter("uid")--%></td>
			<td><%= request.getParameter("pass")--%></td>
		</tr>
		<tr>
			<td colspan="2">
				<form action="updateSQL.jsp">
					<input type="hidden" name="uid" value=<%=uid%>>
					<input type="text" name="changeId"> 
					<input type="text" name="changePass"> 
					<input type="submit" value="����">
				</form>
			</td>
		</tr>
	</table>
>>>>>>> 2f36dcacd8d23a6655bdd9d2391e5e8d7362c57f
</body>
</html>