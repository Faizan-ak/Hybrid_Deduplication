package org.apache.jsp.Files.JSP.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.util.*;

public final class changepass_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<head>\r\n");
      out.write("\t");

		String user=Utility.parse1(request.getAttribute("user"));
		int no=Utility.parse(request.getParameter("no"));
		int id=Utility.parse(request.getParameter("id"));
	
      out.write("\r\n");
      out.write("\t<link href=\"");
      out.print(request.getContextPath() );
      out.write("/Files/CSS/message.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("\t<link href=\"");
      out.print(request.getContextPath() );
      out.write("/Files/CSS/button.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("\t<script type=\"text/javascript\" src=\"");
      out.print(request.getContextPath() );
      out.write("/Files/JS/style.js\"></script>\r\n");
      out.write("\t\t<link href=\"");
      out.print(request.getContextPath());
      out.write("/Files/CSS/logins.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<link href=\"");
      out.print(request.getContextPath());
      out.write("/Files/CSS/popup.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<script src=\"");
      out.print(request.getContextPath());
      out.write("/Files/JS/jquery-1.6.4.min.js\" type=\"text/javascript\"></script>\r\n");
      out.write("<link href=\"");
      out.print(request.getContextPath());
      out.write("/Files/CSS/style.css\"\r\n");
      out.write("\trel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<style>\r\n");
      out.write("table, tr, td\r\n");
      out.write("{\r\n");
      out.write("padding:12px;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body onload=\"startTimer()\" style=\"height: 450px;\">\r\n");
      out.write("\r\n");
      out.write("<form action=\"");
      out.print(request.getContextPath() );
      out.write("/ChangePass2\">\r\n");
      out.write("\t\t<input type=\"hidden\" name=\"user\" value=\"");
      out.print(user );
      out.write("\"></input>\r\n");
      out.write("\t\t<input type=\"hidden\" name=\"id\" value=\"");
      out.print(id );
      out.write("\"></input>\r\n");
      out.write("\t\t<input type=\"hidden\" name=\"no\" value=\"2\"></input>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<div id='cssmenu' style=\"position: absolute; top: 130px; height: 90px; left:0px; width: 170px;\" >\r\n");
      out.write("\t\t<input type=\"submit\" value=\"Save Updates\" class=\"btn1\" id=\"a1\"/>\r\n");
      out.write("\t\t\t<a href=\"");
      out.print(request.getContextPath() );
      out.write("/EditProfile2?name=");
      out.print(user );
      out.write("&no=1\" target=\"afrm\">Edit Profile</a>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div style=\"position:absolute; top: 50px;left: 200px;\">\r\n");
      out.write("\t\t<table style=\"width: 400;color: FFFFCC\";>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td align=\"center\" colspan=\"5\"><label><font\r\n");
      out.write("\t\t\t\t\t\t\t\t\tstyle=\"font-family: Monotype Corsiva; font-size: 35px; color: #DAA520;\">Change Password</font></label></td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td><label><font >Your Id</font></label>\r\n");
      out.write("\t\t\t\t\t\t\t\t</td><td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"text\" value=\"");
      out.print(user );
      out.write("\"\r\n");
      out.write("\t\t\t\t\t\t\t\ttabindex=\"1\" name=\"id\" class=\"input\" placeholder=\"User Id\"\r\n");
      out.write("\t\t\t\t\t\t\t\treadonly=\"readonly\">\r\n");
      out.write("\t\t\t\t\t\t\t\t</td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<label>\r\n");
      out.write("\t\t\t\t\t\t\t<font style=\"color: #black;\">Current Password</font></label>\r\n");
      out.write("\t\t\t\t\t\t\t</td><td>\r\n");
      out.write("\t\t\t\t\t\t\t <input type=\"password\" tabindex=\"1\" class=\"input\" name=\"pass\"\r\n");
      out.write("\t\t\t\t\t\t\t\t required>\r\n");
      out.write("\t\t\t\t\t\t</td></tr>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<td><label><font style=\"color: #black;\">New Password</font></label>\r\n");
      out.write("\t\t\t\t\t\t\t</td><td>\r\n");
      out.write("\t\t\t\t\t\t\t\t <input type=\"password\" tabindex=\"1\"  class=\"input\" name=\"npass\" \r\n");
      out.write("\t\t\t\t\t\t\t\trequired>\r\n");
      out.write("\t\t\t\t\t\t\t\t</td></tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t<td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<label><font\r\n");
      out.write("\t\t\t\t\t\t\t\t\tstyle=\"color: #black;\">Confirm New Password</font></label>\r\n");
      out.write("\t\t\t\t\t\t\t\t</td><td>\r\n");
      out.write("\t\t\t\t\t\t\t\t<input type=\"password\" class=\"input\" tabindex=\"2\" name=\"cpass\"\r\n");
      out.write("\t\t\t\t\t\t\t\trequired></td>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\r\n");
      out.write("\r\n");
      out.write("\t\r\n");

if(no==1)
{
	
      out.write("\r\n");
      out.write("\t\t<div class=\"error\" id=\"message\">\t\r\n");
      out.write("\t\t\t<p>Opp's,your current password is wrong ..!</p>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t");

}
if(no==2)
{
	
      out.write("\r\n");
      out.write("\t\t<div class=\"error\" id=\"message\">\t\r\n");
      out.write("\t\t\t<p>Opp's,your new password do not match with confirm password ..!</p>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t");

}
if(no==3)
{
	
      out.write("\r\n");
      out.write("\t\t<div class=\"error\" id=\"message\">\t\r\n");
      out.write("\t\t\t<p>Opp's,Seems something went wrong....!</p>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t");

}

      out.write("\t\r\n");
      out.write("\t\r\n");
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
