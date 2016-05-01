<%@ page import="com.util.*" %>
<%@ page import="java.sql.*" %>
<html>
<%
	String admin=Utility.parse1(request.getAttribute("admin"));
	System.out.println("Admin value issssssss "+admin);
	ResultSet rs=(ResultSet)request.getAttribute("rs");
	int no=Utility.parse(request.getParameter("no"));
	int id=0;
	String adminid="",name="",add="",email="",phone="";
	if(no==0)
	while(rs.next())
	{
		id=rs.getInt(1);
		adminid=rs.getString(4);
		name=rs.getString(2);
		add=rs.getString(5);
		email=rs.getString(7);
		phone=rs.getString(6);
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
<body onload="startTimer()"style="height: 450px;">
		<div >
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
		

			

				<form action="<%=request.getContextPath() %>/EditProfile1">
					<input type="hidden" name="admin" value="<%=admin %>"></input>
					<input type="hidden" name="no" value="2"></input>
					<input type="hidden" name="id" value="<%=id %>"></input>
					<div id='cssmenu'  style="position: absolute; top: 150px; height: 320px; left:0px; width: 170px;" >
					
						<input type="submit" value="Save Updates" class="btn1" id="a1"/>
						<a  href="<%=request.getContextPath() %>/ChangePass1?name=<%=admin %>&no=1&id=<%=id %>" target="afrm">Change Password</a>
					
					
					</div>
					<div style="position: absolute;top:10px;left: 180px;">
					<table align="center" style="width: 100;">
					<tr>
							<td align="center" colspan="5"><label><font
									style="font-family: Monotype Corsiva; font-size: 35px; color: #DAA520;">Edit Profile</font></label></td>
						</tr>
						<br><br/>


				
						<tr>
							<td><label><font style="color: #fedcba;">UserId</font></label></td>
							<td> <input type="text" value="<%=id %>"
								tabindex="1" name="id" class="input" placeholder="User Id"
								readonly="readonly"></td><td>
								<label>
							<font style="color: #fedcba;">User user id</font></label></td><td>
							 <input type="text" value="<%=adminid %>" tabindex="1" class="input" name="name"
								 required readonly="readonly"> 
						</td></tr>
					
					
						<tr>
						<td><label>
							<font style="color: #fedcba;">User Name</font></label></td><td>
							 <input type="text" value="<%=name %>" tabindex="1" class="input" name="name1"
								 required></td><td>
								 <label><font style="color: #fedcba;">Address</font></label>
								</td><td><input type="text"
								tabindex="1" name="add" class="input" value="<%=add %>" 
								required>&nbsp;&nbsp; 
						</td>
						</tr>

						<tr>
							<td> <label><font style="color: #fedcba;">Email</font></label>
								</td><td>
								<input type="text" tabindex="1" class="input" name="email"
								value="<%=email %>" 
								pattern="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" required></td><td>
								<label> <font style="color: #fedcba;">Phone</font></label>
								</td><td><input type="text"
								class="input" tabindex="2" name="phone" value="<%=phone %>"
								pattern="[7-9]{1}[0-9]{9}"
								required></td>
						</tr>

						

						
					</table>
					
					
				</div>

			</form>

		</div>
	</div>
				<%
			}
		%>
</body>
</html>