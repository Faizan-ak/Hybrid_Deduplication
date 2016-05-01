<%@ page import="com.util.*" %>
<%@ page import="java.sql.*" %>
<html>
<%
	ResultSet rs=(ResultSet)request.getAttribute("rs");
	int id=0;
	String c_url="",c_username="",c_password="",c_status="",c_remarks="";
	while(rs.next())
	{
		id=rs.getInt(1);
		c_url=rs.getString(2);
		c_username=rs.getString(3);
		c_password=rs.getString(4);
		c_status=rs.getString(5);
		c_remarks=rs.getString(6);
		
	}
%>
<head>
	<link href="<%=request.getContextPath() %>/Files/CSS/message.css" rel="stylesheet" type="text/css" /> 
	<link rel="stylesheet" href="<%=request.getContextPath() %>/Files/CSS/login.css" type="text/css"/>
	<link href="<%=request.getContextPath()%>/Files/CSS/style.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath() %>/Files/CSS/button.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="<%=request.getContextPath() %>/Files/JS/style.js"></script>
		<link href="<%=request.getContextPath()%>/Files/CSS/logins.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/Files/CSS/popup.css" rel="stylesheet" type="text/css" />
<script src="<%=request.getContextPath()%>/Files/JS/jquery-1.6.4.min.js" type="text/javascript"></script>

<style>
table, tr, td
th, td
{
padding:12px;
}
</style>
<style> 
#popup {

    box-shadow: 10px 10px 50px #1A1A14;
}
</style>
</head>
<body onload="startTimer()" style="height: 450px;">

<div >
		<div  ">

			

				<form action="<%=request.getContextPath() %>/CloudList">
			<input type="hidden" name="submit" value="Edit"></input>
			<input type="hidden" name="edit1" value="YES"></input>
			<input type="hidden" name="id" value="<%=id %>"></input>


				<div style="position: absolute; top: 30px; left: 50px;">
					<table style="width: 100">
						<tr>
							<td align="center" colspan="5"><label>
							<font style="font-family: Monotype Corsiva; font-size: 35px; color: #DAA520;">Edit Cloud</font></label></td>
						</tr>
						<br> <br>
						<tr>
							<td><label><font style="color: #fedcba;">CloudId</font></label></td><td>
								
								<input type="text" value="<%=id %>"
								tabindex="1" name="id" class="input" placeholder="User Id"
								readonly="readonly"></td><td>
								<label>
							<font style="color: #fedcba;">Url</font></label></td><td>
							 <input type="text" value="<%=c_url %>" tabindex="1" class="input" name="url"
								 required>
						</td></tr>
					
						

						<tr>
							<td><label><font style="color: #fedcba;">Name</font></label></td><td>
								 <input type="text"
								tabindex="1" name="username" class="input" value="<%=c_username%>" 
								required></td><td><label><font
									style="color: #fedcba;">Password</font></label></td><td>
								<input type="text" class="input" tabindex="2" name="password"
								value="<%=c_password %>"required></td>
						</tr>
						

						<tr>
							<td><label><font style="color: #fedcba;">Status</font></label></td><td>
								
								<input type="text" tabindex="1" class="input" name="status"
								value="<%=c_status %>" 
								 required></td><td>
								<label> <font style="color: #fedcba;">Remark</font></label>
								</td><td> <input type="text"
								class="input" tabindex="2" name="remark" value="<%=c_remarks %>"
								
								required></td>
						</tr>

						

						

					</table>
					<br><br/>
					<center><input
								type="image" id="" value="register"
								src="<%=request.getContextPath() %>/Files/Images/update.png"
								alt="submit Button"
								class="gradientbuttons" height="40" width="100"></center>
				</div>

			</form>

		</div>
	</div>
		
<%
if(Utility.parse(request.getParameter("no"))==1)
{%>
	<div class="error" id="message" style="position:absolute">	
		<p>Sorry this user id is already exists.....!</p>
	</div>			
<%}
%>
</body>
</html>