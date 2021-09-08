<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>목록</title>
</head>
<body>
	<h1>회원 목록 페이지</h1>
	<table width="200" border="1">
		<tr>
			<td>아이디</td>
			<td>비밀번호</td>
			<td>삭제</td>
			<td>수정</td>
		</tr>
		<%
			Connection conn = null; 
			PreparedStatement pstmt = null; 
			ResultSet rs = null;
			
			try { 
			
            Class.forName("com.mysql.jdbc.Driver");

            
            String url = "jdbc:mysql://localhost/db01";
            conn = DriverManager.getConnection(url, "root", "1234");
			// 연결 끝
			
			String sql = "select * from users"; 
			pstmt= conn.prepareStatement(sql);


			out.println("연결 성공");
			rs = pstmt.executeQuery(sql); 
				while (rs.next()) { 
					String uid = rs.getString("uid"); 
					String pass = rs.getString("id");
		%>		<tr>
					<td><%=uid%></td>
					<td><a href="delete.jsp?id=<%=uid %>">삭제</a></td>
					<td><a href="update.jsp?id=<%=uid %>">수정</a></td>
				</tr>
		<%			
				}
			}catch(SQLException e){
				e.printStackTrace();
			}finally{
				try{
	                if( conn != null && !conn.isClosed()){
	                    conn.close();
	                }
	                if( pstmt != null && !pstmt.isClosed()){
	                    pstmt.close();
	                }
	                if( rs != null && !rs.isClosed()){
	                    rs.close();
	                }
	            }
	            catch( SQLException e){
	                e.printStackTrace();
	            }
			}
		%>
	</table>
</body>
</html>


















