<%@ page import="com.util.*"%>
<%@ page import="java.sql.*"%>
<html>
<%
String user=Utility.parse1(request.getAttribute("user"));
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

<style>
table, tr, td
th, td
{
padding:12px;
}

</style>

</head>
<body onload="startTimer()" style="height: 450px;">
	<div>
		<div >
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


			

			<form action="<%=request.getContextPath() %>/EditProfile2">
					<input type="hidden" name="user" value="<%=user %>"></input>
					<input type="hidden" name="no" value="2"></input>
					<input type="hidden" name="id" value="<%=id %>"></input>
		<div id='cssmenu' style="position: absolute; top: 170px; height: 90px; left:0px; width: 170px;">
					<input type="submit" value="Save Updates" class="btn1" id="a1"/>&nbsp;&nbsp;&nbsp;&nbsp;
						<a  href="<%=request.getContextPath() %>/ChangePass2?name=<%=user %>&no=1&id=<%=id %>" target="afrm">Change Password</a>
					</div>
					<div style="position: absolute;top:10px;left: 180px;">
				<table align="center" style=" width: 100">
					<br></br>
					
					<tr>
							<td align="center" colspan="5"><label><font
									style="font-family: Monotype Corsiva; font-size: 35px; color: #DAA520;">Edit Your Details</font></label></td>
						</tr>



					
					<tr>
					<td><label><font style="color: #fedcba;">your
								Id</font></label></td>
								<td><input type="text"
						value="<%=id %>" tabindex="1" name="id" class="input"
						placeholder="User Id" readonly="readonly">&nbsp;&nbsp; 
						<label></td><td>
							<font style="color: #fedcba;">User's id</font>
					</label></td><td> <input type="text" value="<%=userid %>" 
						class="input" name="name" required readonly="readonly">&nbsp;&nbsp;</td>
					</tr>
					<br/>
					<tr>
						<td><label> <font style="color: #fedcba;">User
									Name</font></label></td><td>
							 <input type="text"
							name="name1" class="input" value="<%=name%>" required>&nbsp;&nbsp;
						</td><td> <label><font
								style="color: #fedcba;">City</font></label></td><td>
							 <input type="text"
							name="add" class="input" value="<%=city %>" required>&nbsp;&nbsp;
						</td>
					</tr>

					<tr>

						<td> <label><font style="color: #fedcba;">Email</font></label></td>
							
							<td><input type="text" tabindex="1" class="input" name="email"
							value="<%=email %>"
							pattern="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" required>&nbsp;&nbsp;</td>
							
							<td>
							<label> <font style="color: #fedcba;">Phone</font></label></td>
							<td>
							 <input type="text"
							class="input"  name="phone" value="<%=phone %>"
							pattern="[7-9]{1}[0-9]{9}"
							required></td>
					</tr>
				</table>
		</div>

		</form>

	</div>
	
	<%
			}
		%>
</body>
</html>