<%@ page import="com.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>key</title>
<link href="<%=request.getContextPath() %>/Files/CSS/message.css" rel="stylesheet" type="text/css" /> 
<link href="<%=request.getContextPath()%>/Files/CSS/style.css"
	rel="stylesheet" type="text/css" />
</head>
<body onload="startTimer()" style="height: 450px;">
<form action="<%=request.getContextPath()%>/key_generation">
<div style="position: absolute; top:50px;left: 230px;">
<label><font style="font-family: Monotype Corsiva; font-size: 50px; color: #DAA520;">Key Generation</font></label>
</div>	
	<div style="position: absolute; top: 150px ; left: 200px;">
		
		<select name="select" size="10" style="background-color: #FEDCBA" >
		<%
		for(int i=1;i<=20;i++)
		{
		%>
			<option value="<%=i%>"><%=i%></option>
		<%
		}
		%>
		</select>
		</div>
		<div style="position: absolute; top:150px; left: 300px;">
		<input type="submit" class="btn" name="submit"  value="setup" >
	</div>
</form>
<%
				if(Utility.parse(request.getParameter("no"))==1)
				{
					%>
						<div class="success" id="message">	
							<p>Key Generated Successfully ..!</p>
						</div>
					<%
				}


	if(Utility.parse(request.getParameter("no"))==2)
	{
	%>
		<div class="error" id="message">	
			<p>Error In Key Generation ..!</p>
		</div>
	<%
	}
%>
		
</body>
</html>