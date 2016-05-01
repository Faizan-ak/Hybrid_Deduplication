<%@ page import="java.sql.*" %>
<%@ page import="com.util.*" %>
<html>
<%
	ResultSet rs=(ResultSet)request.getAttribute("rs");
	int count=1;
%>
<head>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/Files/CSS/message.css" type="text/css"/>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/Files/CSS/trans.css" type="text/css"/>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/Files/CSS/login.css" type="text/css"/>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/Files/CSS/style.css" type="text/css"/>
	<script type="text/javascript" src="<%=request.getContextPath() %>/Files/JS/pagination.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/Files/JS/style.js"></script>
	
<style >
table, tr, td
th, td
{
padding:8px;
}
</style>
</head>
<body onload="startTimer()" style="height: 450px;">
<form action="<%=request.getContextPath() %>/UserList">
<div id='cssmenu' style="position: absolute; top: 150px; height: 90px; left:0px; width: 170px;">
<input type="submit" name="submit" value="Add" class="btn id="a1"/>
<input type="submit" name="submit" value="Edit" class="btn" id="a1"/>
<input type="submit" name="submit" value="Delete" class="btn" id="a1"/>
</div>
	<div style="position: absolute;top: 130px;left: 100px;">
	<table id="results" class="tab"  style="color: #FFFFCC;">
	<tr>
		<th></th>
		<th>Select</th>
		<th>ID</th>
		<th>Name</th>
		
		
		<th>City</th>
		<th>E-Mail</th>
		<th>Contact No</th>
		<th>Privilege</th>
	</tr>
	<%
		while(rs.next())
		{%>
			<tr>
				<td><%=count++ %>&nbsp;&nbsp;&nbsp;
				<td><input name="chk" type="checkbox" value="<%=rs.getInt(1) %>"></td>
						<td><%=rs.getString(2) %></td>
						<td><%=rs.getString(4) %></td>
						
						<td><%=rs.getString(7) %></td>
						<td><%=rs.getString(8) %></td>
						<td><%=rs.getString(9) %></td>
						<td><%=rs.getString(10) %></td>
			</tr>
		<%}
	%>
</table>
</div>
</form>
<div id="pageNavPosition" style="cursor:hand; position: absolute; top: 350px; left:  150px; " ></div>
<script type="text/javascript"><!--
        var pager = new Pager('results', 5); 
        pager.init(); 
        pager.showPageNav('pager', 'pageNavPosition'); 
        pager.showPage(1);
    //--></script>
<%
	if(Utility.parse(request.getParameter("no"))==1)
    {%>
    	<div class="success" id="message" style="position:absolute;top:10px;left:300px">	
    		<p>User Added Successfully.....!</p>
    	</div>			
    <%}
	if(Utility.parse(request.getParameter("no"))==-1)
	{%>
		<div class="success" id="message" style="position:absolute;top:10px;left:300px">	
			<p>Opp's something went wrong.....!</p>
		</div>			
	<%}
	if(Utility.parse(request.getParameter("no"))==2)
	{%>
		<div class="error" id="message" style="position:absolute;top:10px;left:300px">	
			<p>Opp's select atleast one.....!</p>
		</div>			
	<%}
	if(Utility.parse(request.getParameter("no"))==3)
	{%>
		<div class="success" id="message" style="position:absolute;top:10px;left:300px">	
			<p>User Deleted Successfully.....!</p>
		</div>			
	<%}
	if(Utility.parse(request.getParameter("no"))==4)
	{%>
		<div class="error" id="message" style="position:absolute;top:10px;left:300px">	
			<p>Opp's Select only one user to edit....!</p>
		</div>			
	<%}
	if(Utility.parse(request.getParameter("no"))==5)
	{%>
		<div class="success" id="message" style="position:absolute;top:10px;left:300px">	
			<p>User Updated Successfully....!</p>
		</div>			
	<%}
%>		
</body>
</html>