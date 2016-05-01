<%@ page import="com.util.*" %>
<%@ page import="java.sql.*" %>
<html>
<%
	ResultSet rs=(ResultSet)request.getAttribute("rs");
	int id=0;
	String userid="",add="",phone="",city="",name="",email="";
	while(rs.next())
	{
		id=rs.getInt(1);
		userid=rs.getString(2);
		name=rs.getString(4);
		add=rs.getString(6);
		city=rs.getString(7);
		email=rs.getString(8);
		phone=rs.getString(9);
	}
%>
<head>
	<link href="<%=request.getContextPath() %>/Files/CSS/message.css" rel="stylesheet" type="text/css" /> 
	<link rel="stylesheet" href="<%=request.getContextPath() %>/Files/CSS/login.css" type="text/css"/>
<link href="<%=request.getContextPath()%>/Files/CSS/style.css"
	rel="stylesheet" type="text/css" />
<style>
table, tr, td
th, td
{
padding:15px;
}
</style>
<style> 
#popup {

    box-shadow: 10px 10px 50px #1A1A14;
}
</style>
</head>
<body onload="startTimer()"style="height: 450px;">

<div >
		<div  ">

			

				<form action="<%=request.getContextPath() %>/UserList">
			<input type="hidden" name="submit" value="Edit"></input>
			<input type="hidden" name="edit1" value="YES"></input>
			<input type="hidden" name="id" value="<%=id %>"></input>


				<div style="position: absolute; top: 30px; left: 50px;">
					<table style="width: 100">
						<tr>
							<td align="center" colspan="5"><label>
							<font style="font-family: Monotype Corsiva; font-size: 35px; color: #DAA520;">Edit User</font></label></td>
						</tr>
						<br><br/>
						<tr>
							<td><label><font style="color: #fedcba;">UserId</font></label></td><td>
								
								<input type="text" value="<%=userid %>"
								tabindex="1" name="id" class="input" placeholder="User Id"
								readonly="readonly"></td><td>
								<label>
							<font style="color: #fedcba;">Name</font></label></td><td>
							 <input type="text" value="<%=name %>" tabindex="1" class="input" name="name"
								 required>
						</td></tr>
					
						

						<tr>
							<td><label><font style="color: #fedcba;">Address</font></label></td><td>
								 <input type="text"
								tabindex="1" name="add" class="input" value="<%=add %>" 
								required></td><td><label><font
									style="color: #fedcba;">City</font></label></td><td>
								<input type="text" class="input" tabindex="2" name="city"
								value="<%=city %>"required></td>
						</tr>
						

						<tr>
							<td><label><font style="color: #fedcba;">Email</font></label></td><td>
								
								<input type="text" tabindex="1" class="input" name="email"
								value="<%=email %>" 
								pattern="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" required></td><td>
								<label> <font style="color: #fedcba;">Phone</font></label>
								</td><td> <input type="text"
								class="input" tabindex="2" name="phone" value="<%=phone %>"
								pattern="[7-9]{1}[0-9]{9}"
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