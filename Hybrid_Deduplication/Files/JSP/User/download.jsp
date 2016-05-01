<%@ page import="java.sql.*" %>
<%@ page import="com.util.*" %>
<%@ page import="com.DAOFactory.CommonDAO" %>
<html>
<%
	ResultSet rs=CommonDAO.getFiles();
	String name=Utility.parse1(request.getParameter("name")); 
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
padding:4px;
}
</style>
</head>
<body onload="startTimer()" style="height: 400px;">
<form action="<%=request.getContextPath() %>/DownloadFile">
<input type="hidden" name="name" value="<%=name %>"/>
<div id='cssmenu' style="position: absolute; top: 150px; height: 190px; left:0px; width: 130px;">
<input type="submit" name="submit" value="Download" class="btn2" id="a1"/>

</div>		

<div style="position: absolute; top: 100px; left:  150px; ">
		<table id="results" class="tab" style="width: 500 ; color: FFFFCC";>
		
	<tr>
		<th>Select</th>
		<th>Name</th>
		<th>ID</th>
		<th>Date</th>
		<th>Day</th>
		<th>Time</th>
	</tr>
	<%
	if(rs!=null)
		while(rs.next())
		{%>
			<tr>
				<td><%=count++ %>&nbsp;&nbsp;&nbsp;
					<input name="chk" type="checkbox" value="<%=rs.getInt(1) %>"></td>
				<td><%=rs.getString(3) %></td>
				<td><%=rs.getString(2) %></td>
				<td><%=rs.getString(6) %></td>
				<td><%=rs.getString(8) %></td>
				<td><%=rs.getString(7) %></td>
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
	if(Utility.parse(request.getParameter("no"))==2)
    {%>
    	<div class="success" id="message" style="height: 50;width: 250;">	
    		<p>File Uploaded Successfully.....!</p>
    	</div>			
    <%}
	if(Utility.parse(request.getParameter("no"))==1)
	{%>
		<div class="tab1" style="position:absolute;top:50px;left:510px">	
			<form id="login" action="<%=request.getContextPath() %>/UploadToCloud" enctype="multipart/form-data" method="post">
				<input type="hidden" name="name" value="<%=name %>"/>
				<input type="file" name="file" class="field" required="true"></input><br></br>
				<input type="submit" name="Upload File" class="button"></input>
			</form>
		</div>			
	<%}
	if(Utility.parse(request.getParameter("no"))==3)
    {%>
    	<div align="right" class="error" id="message" style="height: 50;width: 250;">	
    		<p>Opp's select atleast one to process.....!</p>
    	</div>			
    <%}
	if(Utility.parse(request.getParameter("no"))==4)
    {%>
    	<div class="success" id="message" style="height: 50;width: 250;">	
    		<p>File Deleted Successfully.....!</p>
    	</div>			
    <%}
	
	if(Utility.parse(request.getParameter("no"))==9)
    {%>
    	<div class="error" id="message" style="height: 50;width: 250;">	
    		<p>YOU ARE NOT HAVING READ ACCESS .....!</p>
    	</div>			
    <%}
	
	if(Utility.parse(request.getParameter("no"))==5)
    {%>
    	<div class="error" id="message" style="height: 50;width: 250;">	
    		<p>Network Problem.....!</p>
    	</div>			
    <%}
%>		
</body>
</html>