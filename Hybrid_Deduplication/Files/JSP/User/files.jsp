<%@ page import="java.sql.*" %>
<%@ page import="com.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>javax.servlet.
<%@ page import="javax.servlet.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="com.DAOFactory.CommonDAO" %>
<%@ page import="com.DAOFactory.User" %>
<%@ page import="com.util.Utility" %>

<html>
<%
	String name=(String) session.getAttribute ("name");
	System.out.println("IN files.jsp name is  "+name);
	int id=CommonDAO.getUserID(name);
	ResultSet rs1=CommonDAO.getFiles(id);

	int count=1;
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
.popup{
position:fixed;
width:100%;
height:100%;
left:0px;
right:0px;
top: 0px;
bottom:0px;
background-color:rgba(3,3,3,0.8);
}
 
.popupWindow{
background-color:white;
margin:0px auto;
width:40%;
min-width:400px;
min-height:300px;
margin-top:12%;
text-align: center;
-moz-border-radius: 50px 50px / 50px 50px;
border-radius: 50px 50px / 50px 50px;
box-shadow: 10px 10px 5px #000;
}
 
.popup_txt{
font-size:26px;
font-weight:bold;
margin:10px;
padding-top:100px;
color:green;
}
 
.popup_img{
maring:10px;
}
 
.popup_img_yes,.popup_img_no{
margin:20px;
}
 
</style>

<style >
table, tr, td
th, td
{
padding:8px;
}
</style>
</head>
<body onload="startTimer()" style="height: 450px;">
<form action="<%=request.getContextPath() %>/UploadFile">
<input type="hidden" name="name" value="<%=name%>"/>
<div id='cssmenu' style="position: absolute; top: 150px; height: 90px; left:0px; width: 170px;">
<input type="submit" name="submit" value="Upload" class="btn" id="a1"/>&nbsp;&nbsp;&nbsp;&nbsp;

</div>
	<div style="position: absolute; top: 100px; left:  150px; ">
	<table align="center" id="results" class="tab" style="width: 500 ; color: FFFFCC";>
	<tr>
		<th>Select</th>
		<th>Name</th>
		<th>Date</th>
		<th>Day</th>
		<th>Time</th>
	</tr>
	<%
	if(rs1!=null)
		while(rs1.next())
		{%>
			<tr>
				<td><%=count++ %>&nbsp;&nbsp;&nbsp;
					<input name="chk" type="checkbox" value="<%=rs1.getInt(1) %>"></td>
				<td><%=rs1.getString(3) %></td>
			
				<td><%=rs1.getString(6) %></td>
				<td><%=rs1.getString(8) %></td>
				<td><%=rs1.getString(7) %></td>
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
    	<div class="success" id="message">	
    		<p>File Uploaded Successfully.....!</p>
    	</div>			
    <%}
	if(Utility.parse(request.getParameter("no"))==1)
	{%>
		<div class="tab1" style="position:absolute;top:350px;left:360px">	
			<form id="login" action="<%=request.getContextPath() %>/UploadToCloud?name=<%=name%>" method="post">
				
				<input type="file" name="file" class="field" required="required"></input><br></br>
				<input type="submit" name="Upload File" class="btn" "></input>
				
			</form>
		</div>			
	<%}
	if(Utility.parse(request.getParameter("no"))==3)
    {%>
    	<div class="error" id="message" style="height: 50;width: 250;">	
    		<p>Opp's select atleast one to delete.....!</p>
    	</div>			
    <%}
	if(Utility.parse(request.getParameter("no"))==4)
    {%>
    	<div class="success" id="message" style="height: 50;width: 250;">	
    		<p>File Deleted Successfully.....!</p>
    	</div>			
    <%}
	
	if(Utility.parse(request.getParameter("no"))==5)
    {%>
    	<div class="error" id="message" style="height: 50;width: 250;">	
    		<p>Network problem.....!</p>
    	</div>			
    <%}
	
	if(Utility.parse(request.getParameter("no"))==7)
    {%>
    	<div class="error" id="message" style="height: 50;width: 250;">	
    		<p>YOU HAVE NO RIGHTS TO DE-DUPLICATE THIS FILE.....!</p>
    	</div>			
    <%}
	
	
	if(Utility.parse(request.getParameter("no"))==8)
    {%>
    	<div class="error" id="message" style="height: 50;width: 250;">	
    		<p>File is already on the Global Cloud .....!</p>
    	</div>			
    <%}
	
	
	
	if(Utility.parse(request.getParameter("no"))==6)
    {%>
    	

   <%
 	String file=request.getParameter("file");
 	session.setAttribute("filename", file);
 	
 	String file_code=request.getParameter("file_code");
 	session.setAttribute("file_code", file_code);
 	System.out.println("In Files.jsp  file_code is  "+file_code);
 	
 	
 %>
 
<div class="popup"> 
        <div class="popupWindow">
                <div class="popup_txt">
                        File is Already on the cloud...
                        Do you want to De-duplicate it??
                        
                </div>
                <div class="popup_img">
                <form action="<%=request.getContextPath() %>/UploadToGlobal?name=<%=name%>" method="post">
                <input type="image" id="" value="yes" name="submit"
                 src="<%=request.getContextPath() %>/Files/Images/yes.png" />
                 </form>
                 
             	 <a href="<%=request.getContextPath() %>/UploadFile?name=<%=name%>&submit=get" target="afrm">
                <input  type="image" id="" value="no" name="submit"
                  src="<%=request.getContextPath() %>/Files/Images/no.png" /></a>
                  
                </div>
        </div>
</div>  




 
    <%
    }
%>		
</body>
</html>