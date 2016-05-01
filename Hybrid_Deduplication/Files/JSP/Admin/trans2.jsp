<%@ page import="com.DAOFactory.*"%>
<%@ page import="java.sql.*"%>
<html>
<%
	DAOFactory factory=new DAOFactory();
	DAO dao=factory.getInstance("Admin");
	ResultSet rs=dao.getUsers();
	
%>
<head>

<link rel="stylesheet"
	href="<%=request.getContextPath() %>/Files/CSS/style.css"
	type="text/css" />
</head>
<body style="height: 300px;">
<form action="<%=request.getContextPath()%>/Trans1" target="v2">
	<div style="position: absolute;top: 100px;">
		<select name="name" style="width:80;height: 30;color: #663300; background-color: #987654 ">
		<option>Select</option>
			<%
				while (rs.next()) {
			%>
			
			<option value="<%=rs.getString(2)%>"><%=rs.getString(2)%> </option>
			<%
				}
			%>
		</select>

<input type="submit" name="submit" value="Ok" class="btn">
</div>
	</form>	
</body>
</html>