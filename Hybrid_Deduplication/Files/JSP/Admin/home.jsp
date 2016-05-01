<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="com.util.Utility" %>
<html>
<%
	String admin=request.getAttribute("admin").toString();

%>
<head>
<meta charset="utf-8">
<title>Admin home</title>

<link href="<%=request.getContextPath()%>/Files/CSS/style.css"
	rel="stylesheet" type="text/css" />
	
</head>

<body>
<div class="logo" ></div>
	<div class="innerheader" ></div>
<div id='cssmenu' style="position: absolute; top: 180px; height: 320px; right:0px; width: 170px;" >

	<br><br>

	<font style="font-family: Monotype Corsiva; font-size: 25px; color: #FEDCBA;">Welcome <%=admin %></font>
	<a href="<%=request.getContextPath() %>/AdminProfile?name=<%=admin%>" target="afrm">Show Profile</a>
	<a href="<%=request.getContextPath() %>/Files/JSP/Admin/key.jsp?name=<%=admin%>" target="afrm">Key Setup</a>
	<a  href="<%=request.getContextPath() %>/UserList?submit=get" target="afrm">User List</a>
	<a  href="<%=request.getContextPath() %>/CloudList?submit=get" target="afrm">Cloud Details</a>
	<a href="<%=request.getContextPath() %>/Trans1?submit=get" target="afrm">Transactios</a>
	<a href="<%=request.getContextPath() %>/Files/JSP/Admin/logout.jsp">Sign Out</a>

</div>


<div style="top:140px;left:0%;">
		<iframe frameborder="0" scrolling="auto" name="afrm" style="position:absolute;left:10px;height:500px;width:800px;top: 150px;" >
		</iframe>
	</div>
	
		<%
	if(Utility.parse(request.getParameter("no"))==1)
    {%>
    	<div class="success" id="message">	
    		<p>Key Generated Successfully.....!</p>
    	</div>			
    <%}
	
	if(Utility.parse(request.getParameter("no"))==2)
    {%>
    	<div class="error" id="message">	
    		<p>Error in Key Generation .....!</p>
    	</div>			
    <%}
	
	%>
</body>
</html>
