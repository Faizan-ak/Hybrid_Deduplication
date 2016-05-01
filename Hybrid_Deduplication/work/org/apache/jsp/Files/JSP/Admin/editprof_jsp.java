package org.apache.jsp.Files.JSP.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.util.*;
import java.sql.*;

public final class editprof_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
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
      out.write("<html>\r\n");

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

      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"");
      out.print(request.getContextPath() );
      out.write("/Files/CSS/message.css\" type=\"text/css\"/>\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"");
      out.print(request.getContextPath() );
      out.write("/Files/CSS/trans.css\" type=\"text/css\"/>\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"");
      out.print(request.getContextPath() );
      out.write("/Files/CSS/login.css\" type=\"text/css\"/>\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"");
      out.print(request.getContextPath() );
      out.write("/Files/CSS/button.css\" type=\"text/css\"/>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"");
      out.print(request.getContextPath() );
      out.write("/Files/JS/pagination.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"");
      out.print(request.getContextPath() );
      out.write("/Files/JS/style.js\"></script>\r\n");
      out.write("\t<link href=\"");
      out.print(request.getContextPath());
      out.write("/Files/CSS/style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("\t<style>\r\n");
      out.write("table, tr, td\r\n");
      out.write("th, td\r\n");
      out.write("{\r\n");
      out.write("padding:12px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body onload=\"startTimer()\"style=\"height: 450px;\">\r\n");
      out.write("\t\t<div >\r\n");
      out.write("\t\t<div >\r\n");
      out.write("\t\t");

			if(no==1)
			{
				
      out.write("\r\n");
      out.write("\t\t\t\t\t<div class=\"error\" id=\"message\">\t\r\n");
      out.write("\t\t\t\t\t\t<p>Opp's,Seems something went wrong ..!</p>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t");

			}
			if(no==0)
			{
				
      out.write("\r\n");
      out.write("\t\t\r\n");
      out.write("\r\n");
      out.write("\t\t\t\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<form action=\"");
      out.print(request.getContextPath() );
      out.write("/EditProfile1\">\r\n");
      out.write("\t\t\t\t\t<input type=\"hidden\" name=\"admin\" value=\"");
      out.print(admin );
      out.write("\"></input>\r\n");
      out.write("\t\t\t\t\t<input type=\"hidden\" name=\"no\" value=\"2\"></input>\r\n");
      out.write("\t\t\t\t\t<input type=\"hidden\" name=\"id\" value=\"");
      out.print(id );
      out.write("\"></input>\r\n");
      out.write("\t\t\t\t\t<div id='cssmenu'  style=\"position: absolute; top: 150px; height: 320px; left:0px; width: 170px;\" >\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<input type=\"submit\" value=\"Save Updates\" class=\"btn1\" id=\"a1\"/>\r\n");
      out.write("\t\t\t\t\t\t<a  href=\"");
      out.print(request.getContextPath() );
      out.write("/ChangePass1?name=");
      out.print(admin );
      out.write("&no=1&id=");
      out.print(id );
      out.write("\" target=\"afrm\">Change Password</a>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div style=\"position: absolute;top:10px;left: 180px;\">\r\n");
      out.write("\t\t\t\t\t<table align=\"center\" style=\"width: 100;\">\r\n");
      out.write("\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td align=\"center\" colspan=\"5\"><label><font\r\n");
      out.write("\t\t\t\t\t\t\t\t\tstyle=\"font-family: Monotype Corsiva; font-size: 35px; color: #DAA520;\">Edit Profile</font></label></td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t<br><br/>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td><label><font style=\"color: #fedcba;\">UserId</font></label></td>\r\n");
      out.write("\t\t\t\t\t\t\t<td> <input type=\"text\" value=\"");
      out.print(id );
      out.write("\"\r\n");
      out.write("\t\t\t\t\t\t\t\ttabindex=\"1\" name=\"id\" class=\"input\" placeholder=\"User Id\"\r\n");
      out.write("\t\t\t\t\t\t\t\treadonly=\"readonly\"></td><td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<label>\r\n");
      out.write("\t\t\t\t\t\t\t<font style=\"color: #fedcba;\">User user id</font></label></td><td>\r\n");
      out.write("\t\t\t\t\t\t\t <input type=\"text\" value=\"");
      out.print(adminid );
      out.write("\" tabindex=\"1\" class=\"input\" name=\"name\"\r\n");
      out.write("\t\t\t\t\t\t\t\t required readonly=\"readonly\"> \r\n");
      out.write("\t\t\t\t\t\t</td></tr>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t<td><label>\r\n");
      out.write("\t\t\t\t\t\t\t<font style=\"color: #fedcba;\">User Name</font></label></td><td>\r\n");
      out.write("\t\t\t\t\t\t\t <input type=\"text\" value=\"");
      out.print(name );
      out.write("\" tabindex=\"1\" class=\"input\" name=\"name1\"\r\n");
      out.write("\t\t\t\t\t\t\t\t required></td><td>\r\n");
      out.write("\t\t\t\t\t\t\t\t <label><font style=\"color: #fedcba;\">Address</font></label>\r\n");
      out.write("\t\t\t\t\t\t\t\t</td><td><input type=\"text\"\r\n");
      out.write("\t\t\t\t\t\t\t\ttabindex=\"1\" name=\"add\" class=\"input\" value=\"");
      out.print(add );
      out.write("\" \r\n");
      out.write("\t\t\t\t\t\t\t\trequired>&nbsp;&nbsp; \r\n");
      out.write("\t\t\t\t\t\t</td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td> <label><font style=\"color: #fedcba;\">Email</font></label>\r\n");
      out.write("\t\t\t\t\t\t\t\t</td><td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"text\" tabindex=\"1\" class=\"input\" name=\"email\"\r\n");
      out.write("\t\t\t\t\t\t\t\tvalue=\"");
      out.print(email );
      out.write("\" \r\n");
      out.write("\t\t\t\t\t\t\t\tpattern=\"\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*\" required></td><td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<label> <font style=\"color: #fedcba;\">Phone</font></label>\r\n");
      out.write("\t\t\t\t\t\t\t\t</td><td><input type=\"text\"\r\n");
      out.write("\t\t\t\t\t\t\t\tclass=\"input\" tabindex=\"2\" name=\"phone\" value=\"");
      out.print(phone );
      out.write("\"\r\n");
      out.write("\t\t\t\t\t\t\t\tpattern=\"[7-9]{1}[0-9]{9}\"\r\n");
      out.write("\t\t\t\t\t\t\t\trequired></td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t</form>\r\n");
      out.write("\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\t\t\t");

			}
		
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
