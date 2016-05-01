package org.apache.jsp.Files.JSP.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import com.util.*;

public final class filedownload_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("\r\n");

	ResultSet rs=(ResultSet)Utility.parse2(request.getAttribute("rs"));
	String name=Utility.parse1(request.getParameter("name")); 
	//System.out.println("IN files.jsp name is  "+name);
	int count=1;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"");
      out.print(request.getContextPath() );
      out.write("/Files/CSS/message.css\" type=\"text/css\"/>\r\n");
      out.write("\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"");
      out.print(request.getContextPath() );
      out.write("/Files/CSS/button.css\" type=\"text/css\"/>\r\n");
      out.write("\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"");
      out.print(request.getContextPath() );
      out.write("/Files/JS/style.js\"></script>\r\n");
      out.write("\t<link href=\"");
      out.print(request.getContextPath());
      out.write("/Files/CSS/style.css\" rel=\"stylesheet\" type=\"text/css\"></link>\r\n");
      out.write("\t<script>\r\n");
      out.write("function loadXMLDoc()\r\n");
      out.write("{\r\n");
      out.write("var xmlhttp;\r\n");
      out.write("if (window.XMLHttpRequest)\r\n");
      out.write("  {// code for IE7+, Firefox, Chrome, Opera, Safari\r\n");
      out.write("  xmlhttp=new XMLHttpRequest();\r\n");
      out.write("  }\r\n");
      out.write("else\r\n");
      out.write("  {// code for IE6, IE5\r\n");
      out.write("  xmlhttp=new ActiveXObject(\"Microsoft.XMLHTTP\");\r\n");
      out.write("  }\r\n");
      out.write("xmlhttp.onreadystatechange=function()\r\n");
      out.write("  {\r\n");
      out.write("  if (xmlhttp.readyState==4 && xmlhttp.status==200)\r\n");
      out.write("    {\r\n");
      out.write("\t  \r\n");
      out.write("\t  alert('hello');\r\n");
      out.write("    document.getElementById(\"myDiv\").innerHTML=xmlhttp.responseText;\r\n");
      out.write("    }\r\n");
      out.write("  }\r\n");
      out.write("xmlhttp.open(\"POST\",\"upload.html\",true);\r\n");
      out.write("xmlhttp.send();\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body onload=\"startTimer()\" style=\"height: 450px;\" >\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t<div  style=\"left:100px;height: 440px;width:600px; position:absolute; background-image: url('Files/Images/Uploads.png'); background-repeat: no-repeat;\">\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<form id=\"login\" action=\"");
      out.print(request.getContextPath() );
      out.write("/UploadToCloud?name=");
      out.print(name);
      out.write("\" enctype=\"multipart/form-data\" method=\"post\">\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\t<div id=\"myDiv\" style=\"position: absolute;top:200px;left: 200px;\">\r\n");
      out.write("\t\t\t\t<input type=\"file\" name=\"file\" class=\"field\" required=\"required\"></input><br></br>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t<input type=\"submit\" name=\"Upload File\" class=\"btn\" onclick=\"loadXMLDoc()\"></input>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t</form>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
