<%@ page import="com.util.*" %>
<html>
<head>

</head>
<body>
	<%
		Utility.writeOnFile(request.getParameter("name")+".txt","Successfully Logged out on date "+Utility.getDate()+" and time "+Utility.getTime()+"",getServletContext().getRealPath("/"));
		response.sendRedirect(request.getContextPath());
	%>
</body>
</html>