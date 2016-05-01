
<%@ page import="com.util.Utility" %>
<html>
<%
	String user=request.getAttribute("user").toString();
	
	System.out.println("user name isss "+user);
	session.setAttribute("name", user);
	
%>
<script language="JavaScript">
javascript:window.history.forward(-1);
</script>

<head>
<link rel="stylesheet" href="<%=request.getContextPath() %>/Files/CSS/message.css" type="text/css"/>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/Files/CSS/trans.css" type="text/css"/>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/Files/CSS/login.css" type="text/css"/>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/Files/CSS/button.css" type="text/css"/>
	<script type="text/javascript" src="<%=request.getContextPath() %>/Files/JS/pagination.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/Files/JS/style.js"></script>
	<link href="<%=request.getContextPath()%>/Files/CSS/style.css" rel="stylesheet" type="text/css" />
</head>
<body onload="startTimer()">
	<div class="logo" ></div>
	<div class="innerheader" ></div>
	

<div id='cssmenu' style="position: absolute; top: 180px; height: 320px; right:0px; width: 170px;">
	<font style="font-family: Monotype Corsiva; font-size: 25px; color: #FEDCBA;">Welcome <%=user %></font>
	<br><br/>
	<a  href="<%=request.getContextPath() %>/UserProfile?name=<%=user %>" target="afrm">&nbsp;Show Profile &nbsp;</a>
	<a  href="<%=request.getContextPath() %>/UploadFile?name=<%=user%>&submit=get" target="afrm">&nbsp;Upload File &nbsp;&nbsp;</a>
	<a  href="<%=request.getContextPath() %>/DownloadFile?name=<%=user %>&submit=get" target="afrm">Download File</a>
	<a  href="<%=request.getContextPath() %>/Trans?name=<%=user%>" target="afrm">&nbsp;Transactions &nbsp;</a>
	<a  href="<%=request.getContextPath() %>/Files/JSP/User/logout.jsp?name=<%=user %>">&nbsp;&nbsp;&nbsp;Sign Out</a>
	
</div>		
	
	
<div style="top:140px;left:0%;">
		<iframe frameborder="2"  name="afrm" style="position:absolute;left:10px;height:500px;width:800px;top: 130px;" >
		</iframe>
	</div>
	
	

</body>
</html>