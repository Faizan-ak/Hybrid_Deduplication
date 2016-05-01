<%@ page import="com.util.*" %>
<%@ page import="java.sql.*" %>
<html>
<%
	String user=Utility.parse1(request.getAttribute("user"));
	session.setAttribute( "name", user );
	ResultSet rs=(ResultSet)request.getAttribute("rs");
	int no=Utility.parse(request.getParameter("no"));
	int id=0;
	String userid="",name="",gender="",add="",email="",phone="",city="";
	if(no==0)
	while(rs.next())
	{
		id=rs.getInt(1);
		userid=rs.getString(2);
		name=rs.getString(4);
		gender=rs.getString(5);
		add=rs.getString(6);
		city=rs.getString(7);
		email=rs.getString(8);
		phone=rs.getString(9);
	}
%>
<head>
	
<link rel="stylesheet" href="<%=request.getContextPath() %>/Files/CSS/message.css" type="text/css"/>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/Files/CSS/trans.css" type="text/css"/>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/Files/CSS/login.css" type="text/css"/>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/Files/CSS/button.css" type="text/css"/>
	<script type="text/javascript" src="<%=request.getContextPath() %>/Files/JS/pagination.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/Files/JS/style.js"></script>
	<link href="<%=request.getContextPath()%>/Files/CSS/style.css" rel="stylesheet" type="text/css" />
<style >
table, tr, td
th, td
{
padding:15px;
}
</style>
</head>
<body onload="startTimer()" style="height: 450px;">
		<%
			if(no==1)
			{
				%>
					<div class="error" id="message">	
						<p>Opp's,Seems something went wrong ..!</p>
					</div>
				<%
			}
			if(no==0)
			{
				%>
					<div id='cssmenu' style="position: absolute; top: 100px; height: 90px; left:0px; width: 170px;">
						<a  href="<%=request.getContextPath() %>/EditProfile2?name=<%=user %>&no=1" target="afrm">Edit Profile</a>
						<a  href="<%=request.getContextPath() %>/ChangePass2?name=<%=user %>&no=1&id=<%=id %>" target="afrm">Change Password</a>
					</div>
					
					<div style="position: absolute;top: 50px; left: 300px;">
					<table align="center"   style="width: 100px ; color: FFFFCC";>
						<tr><td>ID No : </td><td><%=id %></td></tr>
						<tr><td>Name : </td><td><%=name %></td></tr>
						<tr><td>User Id: </td><td><%=userid %></td></tr>
						<tr><td>Mail Id: </td><td><%=email%></td></tr>
						<tr><td>Cell No: </td><td><%=phone %></td></tr>
						<tr><td>Address: </td><td><%=add%></td></tr>
					
						</table>
					</div>
				<%
				if(Utility.parse(request.getParameter("no1"))==1)
				{
					%>
						<div class="success" id="message">	
							<p>Your profile updated successfully ..!</p>
						</div>
					<%
				}
			}
		%>
</body>
</html>