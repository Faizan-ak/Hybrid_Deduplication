
<%@ page import="com.util.*" %>
<html>
<head>
	<%
		String user=Utility.parse1(request.getAttribute("user"));
		int no=Utility.parse(request.getParameter("no"));
		int id=Utility.parse(request.getParameter("id"));
	%>
	<link href="<%=request.getContextPath() %>/Files/CSS/message.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath() %>/Files/CSS/button.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="<%=request.getContextPath() %>/Files/JS/style.js"></script>
		<link href="<%=request.getContextPath()%>/Files/CSS/logins.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/Files/CSS/popup.css" rel="stylesheet" type="text/css" />
<script src="<%=request.getContextPath()%>/Files/JS/jquery-1.6.4.min.js" type="text/javascript"></script>
<link href="<%=request.getContextPath()%>/Files/CSS/style.css"
	rel="stylesheet" type="text/css" />
<style>
table, tr, td
{
padding:12px;
}
</style>
</head>
<body onload="startTimer()" style="height: 450px;">

<form action="<%=request.getContextPath() %>/ChangePass2">
		<input type="hidden" name="user" value="<%=user %>"></input>
		<input type="hidden" name="id" value="<%=id %>"></input>
		<input type="hidden" name="no" value="2"></input>
		
		<div id='cssmenu' style="position: absolute; top: 130px; height: 90px; left:0px; width: 170px;" >
		<input type="submit" value="Save Updates" class="btn1" id="a1"/>
			<a href="<%=request.getContextPath() %>/EditProfile2?name=<%=user %>&no=1" target="afrm">Edit Profile</a>
			
		</div>
		<div style="position:absolute; top: 50px;left: 200px;">
		<table style="width: 400;color: FFFFCC";>
					


				
						<tr>
							<td align="center" colspan="5"><label><font
									style="font-family: Monotype Corsiva; font-size: 35px; color: #DAA520;">Change Password</font></label></td>
						</tr>
						
						<tr>
							<td><label><font >Your Id</font></label>
								</td><td>
								<input type="text" value="<%=user %>"
								tabindex="1" name="id" class="input" placeholder="User Id"
								readonly="readonly">
								</td></tr>
								<tr>
								<td>
								<label>
							<font style="color: #black;">Current Password</font></label>
							</td><td>
							 <input type="password" tabindex="1" class="input" name="pass"
								 required>
						</td></tr>
					
						

						<tr>
							<td><label><font style="color: #black;">New Password</font></label>
							</td><td>
								 <input type="password" tabindex="1"  class="input" name="npass" 
								required>
								</td></tr>
								<tr>
								<td>
								<label><font
									style="color: #black;">Confirm New Password</font></label>
								</td><td>
								<input type="password" class="input" tabindex="2" name="cpass"
								required></td>
						</tr>
					

					</table>
				</div>

			

	
<%
if(no==1)
{
	%>
		<div class="error" id="message">	
			<p>Opp's,your current password is wrong ..!</p>
		</div>
	<%
}
if(no==2)
{
	%>
		<div class="error" id="message">	
			<p>Opp's,your new password do not match with confirm password ..!</p>
		</div>
	<%
}
if(no==3)
{
	%>
		<div class="error" id="message">	
			<p>Opp's,Seems something went wrong....!</p>
		</div>
	<%
}
%>	
	
</body>
</html>