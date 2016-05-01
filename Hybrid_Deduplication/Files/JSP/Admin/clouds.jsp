<%@ page import="java.sql.*" %>
<%@ page import="com.util.*" %>
<html>
<%
	ResultSet rs=(ResultSet)request.getAttribute("rs");
	int count=1;
%>
<head>
	<link href="<%=request.getContextPath() %>/Files/CSS/message.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath() %>/Files/CSS/button.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="<%=request.getContextPath() %>/Files/JS/style.js"></script>
		<link href="<%=request.getContextPath()%>/Files/CSS/logins.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/Files/CSS/popup.css" rel="stylesheet" type="text/css" />
<script src="<%=request.getContextPath()%>/Files/JS/jquery-1.6.4.min.js" type="text/javascript"></script>
<link href="<%=request.getContextPath() %>/Files/CSS/message.css" rel="stylesheet" type="text/css" /> 
<link href="<%=request.getContextPath()%>/Files/CSS/style.css"
	rel="stylesheet" type="text/css" />
	
	<style>
table, tr, td
th, td
{
padding:8px;
}
</style>
</head>
<body onload="startTimer()" style="height: 450px;">
<form action="<%=request.getContextPath() %>/CloudList">
<div id='cssmenu' style="position: absolute; top: 150px; height: 90px; left:0px; width: 170px;">

<input type="submit" name="submit" value="Edit" class="btn" id="a1"/>
<input type="submit" name="submit" value="Delete" class="btn" id="a1"/>
</div>
<div style="position: absolute; top: 100px; left:  150px; ">

							<label >
							<font style="font-family: Monotype Corsiva; font-size: 35px; color: #DAA520;">Cloud Details</font></label>
						<br>
	<table id="results" class="tab" style="color: #FFFFCC">
	<tr>
		<th></th>
		<th>Select</th>
		<th>ID</th>
		<th>Url</th>
		<th>Name</th>
		<th>Password</th>
		<th>Status</th>
		<th>Remarks</th>
		
	</tr>
	<%
		while(rs.next())
		{%>
			<tr>
				<td><%=count++ %>&nbsp;&nbsp;&nbsp;
				<td><input name="chk" type="checkbox" value="<%=rs.getInt(1) %>"></td>
						<td><%=rs.getString(1) %></td>
						<td><%=rs.getString(2) %></td>
						<td><%=rs.getString(3) %></td>
						<td><%=rs.getString(4) %></td>
						<td><%=rs.getString(5) %></td>
						<td><%=rs.getString(6) %></td>
						
						
			</tr>
		<%}
	%>
</table>
</div>
</form>
<div id="pageNavPosition" style="cursor:hand"></div>
<script type="text/javascript"><!--
        var pager = new Pager('results', 5); 
        pager.init(); 
        pager.showPageNav('pager', 'pageNavPosition'); 
        pager.showPage(1);
    //--></script>
<%
	
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
			<p>Cloud Deleted Successfully.....!</p>
		</div>			
	<%}
	if(Utility.parse(request.getParameter("no"))==4)
	{%>
		<div class="error" id="message" style="position:absolute;top:10px;left:300px">	
			<p>Opp's Select only one Cloud to edit....!</p>
		</div>			
	<%}
	if(Utility.parse(request.getParameter("no"))==5)
	{%>
		<div class="success" id="message" style="position:absolute;top:10px;left:300px">	
			<p>Cloud Updated Successfully....!</p>
		</div>			
	<%}
%>		
</body>
</html>