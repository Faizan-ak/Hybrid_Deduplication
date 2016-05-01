<%@ page import="com.util.*" %>
<%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>key</title>
<link href="<%=request.getContextPath() %>/Files/CSS/message.css" rel="stylesheet" type="text/css" /> 
<link href="<%=request.getContextPath()%>/Files/CSS/style.css" rel="stylesheet" type="text/css" />

<style >
table, tr, td
th, td
{
padding:8px;
}
</style>
</head>
<%
	String name=(String) session.getAttribute ("name");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/deduplication","root", "admin");
    Statement st = con.createStatement();
    ResultSet rs=st.executeQuery("select * from digkey");
    
    %>
<body onload="startTimer()"style="height: 450px;">
<form action="<%=request.getContextPath()%>/FileAccess">
<div style="position: absolute; top:50px;left: 230px;">
<label><font style="font-family: Monotype Corsiva; font-size: 50px; color: #DAA520;">File Access</font></label>
</div>	
	<div style="position: absolute; top: 150px ; left: 200px;">
		
	<label><font style="color: #336633; font-size: 30px;">Select Rank</font></label>
	<br><br>
			<table>			
								
									<% while(rs.next())
								{
									%><tr>
										<td><input name="chk" type="checkbox"  value="<%=rs.getInt(1) %>"></td>
										<td><label >Rank <%=rs.getInt(1) %></label></td>
									<%
								}
								%>
								
			</table>	
			
							<input type="submit" value="Ok" class="btn" name="submit" >				
							
	</div>
</form>

		
</body>
</html>