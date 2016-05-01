<%@ page import="com.util.*"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<link href="<%=request.getContextPath() %>/Files/CSS/message.css"
	rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/Files/CSS/style.css"
	rel="stylesheet" type="text/css" />
<style>
table, tr, td
th, td
{
padding:12px;
}

</style>
</head>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/deduplication","root", "admin");
    Statement st = con.createStatement();
    ResultSet rs=st.executeQuery("select * from digkey");
    
    %>
<body onload="startTimer()" style="height: 450px;">

	<!-- User Register Pop Up -->

	<div >
		<div id="popup" style="height: 400px; width: 600px; padding: 10px; ">

			

			<form action="<%=request.getContextPath() %>/UserList">
				<input type="hidden" name="submit" value="Add"></input> <input
					type="hidden" name="add1" value="YES"></input>


				<div style="position: absolute; top: 30px; left: 50px;">
				
				<center><label><font style="font-family: Monotype Corsiva; font-size: 35px; color: #DAA520;">User
										Registration</font></label></center><br></br>
					<table style="width: 130">
						
						
						
						
						<tr>
							<td><label><font style="color: #fedcba;">UserId</font></label></td>
							<td><input type="text" tabindex="1" name="id" class="input" placeholder="User Id"
								required></td>
								<td> <label><font style="color: #fedcba;">Password</font></label></td>
								<td> <input type="password" class="input" name="pass" tabindex="2"
								placeholder="Password" required></td>
						</tr>
						
						<tr>
							<td><label><font style="color: #fedcba;">User Name</font></label> </td><td>
							<input type="text" tabindex="1" class="input" name="name"
								placeholder="User Name" required></td>
								
								<td> <label><font style="color: #fedcba;">Gender</font></label></td>
								<td> <input name="gender" value="Male"
								type="radio" checked="true" /> Male<input
								name="gender" value="Female" type="radio" />Female</td>
						</tr>
						

						<tr>
							<td><label><font style="color: #fedcba;">Address</font></label>
								</td><td> <input type="text"
								tabindex="1" name="add" class="input" placeholder="Address"
								required></td><td> <label><font
									style="color: #fedcba;">City</font></label>
								</td><td>
								<input type="text" class="input" tabindex="2" name="city"
								placeholder="City" required></td>
						</tr>
						

						<tr>
							<td><label><font style="color: #fedcba;">Email</font></label>
								</td><td>
								<input type="text" tabindex="1" class="input" name="email"
								placeholder="Email"
								pattern="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" required>
								
								</td><td><label> <font style="color: #fedcba;">Phone</font></label>
								</td><td> <input type="text"
								class="input" tabindex="2" name="phone" placeholder="Phone"
								pattern="[7-9]{1}[0-9]{9}"
								required></td>
						</tr>

						<tr>
							<td><label><font style="color: #fedcba;">
										Rank</font></label></td><td> <select
								name="select" required="yes">
									<% while(rs.next())
								{
									%>

									<option><%=rs.getString(1)%></option>
									<%
								}
								%>
							</select></td>
						</tr>

						
</center>
					</table>
					<center>
					<input type="image" id="" value="register"src="<%=request.getContextPath() %>/Files/Images/register.jpg"
								alt="submit Button" width="100" height="40"></center>
				</div>

			</form>

		</div>
	</div>






	<%
			int no = Utility.parse(request.getParameter("no"));
			if (no == 1) {
		%>
	<div class="error" id="message">
		<p>Opp's,Invalid userid / password..!</p>
	</div>
	<%
			}
			if (no == 3) {
		%>
	<div class="error" id="message">
		<p>Opp's,Something went wrong ..!</p>
	</div>
	<%
			}
			if (no == 4) {
		%>
	<div class="success" id="message">
		<p>You have registered successfully!</p>
	</div>
	<%
			}
		%>
	</div>

	<%
			if (Utility.parse(request.getParameter("no1")) == 5) {
		%>
	<div class="error" id="message" style="position: absolute">
		<p>Sorry this user id is already exists.....!</p>
	</div>
	<%
			}
		%>
</body>
</html>