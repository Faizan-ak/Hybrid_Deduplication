<%@ page import="java.sql.*" %>
<%@ page import="com.util.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<%
	ResultSet rs=(ResultSet)Utility.parse2(request.getAttribute("rs"));
	String name=Utility.parse1(request.getParameter("name")); 
	//System.out.println("IN files.jsp name is  "+name);
	int count=1;
%>


<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/Files/CSS/message.css" type="text/css"/>

	<link rel="stylesheet" href="<%=request.getContextPath() %>/Files/CSS/button.css" type="text/css"/>

	<script type="text/javascript" src="<%=request.getContextPath() %>/Files/JS/style.js"></script>
	<link href="<%=request.getContextPath()%>/Files/CSS/style.css" rel="stylesheet" type="text/css"></link>
	<script>
function loadXMLDoc()
{
var xmlhttp;
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
	  
	  alert('hello');
    document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
    }
  }
xmlhttp.open("POST","upload.html",true);
xmlhttp.send();

}
</script>
</head>
<body onload="startTimer()" style="height: 450px;" >


			<div  style="left:100px;height: 440px;width:600px; position:absolute; background-image: url('Files/Images/Uploads.png'); background-repeat: no-repeat;">
				</div>
				<form id="login" action="<%=request.getContextPath() %>/UploadToCloud?name=<%=name%>" enctype="multipart/form-data" method="post">
			
				<div id="myDiv" style="position: absolute;top:200px;left: 200px;">
				<input type="file" name="file" class="field" required="required"></input><br></br>
				
				<input type="submit" name="Upload File" class="btn" onclick="loadXMLDoc()"></input>
				</div>
				
			</form>
			


</body>
</html>