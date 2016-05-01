package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.util.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, false, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<title>Hybrid Deduplication</title>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<script type=\"text/javascript\"> \r\n");
      out.write("window.history.forward(); \r\n");
      out.write("function noBack() { window.history.forward(); } </script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<link href=\"");
      out.print(request.getContextPath());
      out.write("/Files/CSS/tooltip.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<script src=\"");
      out.print(request.getContextPath());
      out.write("/Files/JS/tooltip.js\" type=\"text/javascript\"></script>\r\n");
      out.write("<link href=\"");
      out.print(request.getContextPath());
      out.write("/Files/CSS/message.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("<script src=\"");
      out.print(request.getContextPath());
      out.write("/Files/JS/style.js\" type=\"text/javascript\"></script>\r\n");
      out.write("<link href=\"");
      out.print(request.getContextPath());
      out.write("/Files/CSS/styles.css\" rel=\"stylesheet\" type=\"text/css\" />  ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body onload=\"startTimer();\" >\r\n");
      out.write("\r\n");
      out.write("\t<div class=\"main\">\r\n");
      out.write("\t\t<span\r\n");
      out.write("\t\t\tstyle=\"position: absolute; top: 230px; height: 120px; right:0px; width: 120px; background-color: #BDBDAC;\">\r\n");
      out.write("\t\t\t<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img\r\n");
      out.write("\t\t\tsrc=\"");
      out.print(request.getContextPath() );
      out.write("/Files/Images/Uncle Sam.ico\"\r\n");
      out.write("\t\t\talign=\"center\" height=\"60\" width=\"60\" /> &nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("\t\t\t&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=\"#\"\r\n");
      out.write("\t\t\tonmouseover=\"tooltip.pop(this, '#sub1', {position:1, offsetX:-20, effect:'slide'})\"><font\r\n");
      out.write("\t\t\t\tstyle=\"color: #A37547;\"><b>Admin</b></font></a>\r\n");
      out.write("\t\t</span>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"header\"><h1>A Hybrid Cloud Approach for Secure</h1></div>\r\n");
      out.write("\t\t<div class=\"headerline2\"><h1>Authorized Deduplication</h1></div>\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t<div class=\"main\">\r\n");
      out.write("\t\t <span\r\n");
      out.write("\t\t\tstyle=\"position: absolute; top: 230px; height: 120px; width: 120px; left:0px; background-color: #BDBDAC\">\r\n");
      out.write("\t\t\t<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img\r\n");
      out.write("\t\t\tsrc=\"");
      out.print(request.getContextPath() );
      out.write("/Files/Images/User group.ico\"\r\n");
      out.write("\t\t\theight=\"60\" width=\"60\" /> <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("\t\t\t&nbsp;&nbsp;&nbsp;&nbsp; <a href=\"#\"\r\n");
      out.write("\t\t\tonmouseover=\"tooltip.pop(this, '#sub2', {position:1, offsetX:-220, effect:'slide'})\"><font\r\n");
      out.write("\t\t\t\tstyle=\"color: #A37547;\"><b>User</b></font></a>\r\n");
      out.write("\t\t</span>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(" <div style=\"display:none;\">\r\n");
      out.write("\r\n");
      out.write("\t<div id=\"sub1\" >\r\n");
      out.write("\t<form class=\"login\" action=\"");
      out.print(request.getContextPath());
      out.write("/AdminLogin\"\r\n");
      out.write("\t\t\t\tmethod=\"post\">\r\n");
      out.write("\t\t<br></br>\r\n");
      out.write("\t\t<center>\r\n");
      out.write("\t\t\t<label><font\r\n");
      out.write("\t\t\t\tstyle=\"font-family: Monotype Corsiva; font-size: 35px; color: #DAA520;\">Admin\r\n");
      out.write("\t\t\t\t\tLogin</font></label> <br></br>\r\n");
      out.write("\t\t\t<br></br> <label><font style=\"color: #336633;\">User Id</font></label>\r\n");
      out.write("\t\t\t&nbsp;&nbsp;<input type=\"text\" tabindex=\"1\" class=\"input\" name=\"name\"\r\n");
      out.write("\t\t\t\tplaceholder=\"User Id\" required><br> <br> <label><font\r\n");
      out.write("\t\t\t\tstyle=\"color: #336633;\">Password</font></label> <input type=\"password\"\r\n");
      out.write("\t\t\t\tclass=\"input\" tabindex=\"2\" name=\"pass\" placeholder=\"Password\"\r\n");
      out.write("\t\t\t\trequired ><br> <br> <br>\r\n");
      out.write("\r\n");
      out.write("\t\t\t&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input\r\n");
      out.write("\t\t\t\ttype=\"image\" id=\"\" value=\"submit\"\r\n");
      out.write("\t\t\t\tsrc=\"");
      out.print(request.getContextPath() );
      out.write("/Files/Images/login.jpg\"\r\n");
      out.write("\t\t\t\talt=\"submit Button\" class=\"gradientbuttons\" width=\"80\" height=\"30\">&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("\t\t</center>\r\n");
      out.write("\t</form>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<div id=\"sub2\" >\r\n");
      out.write("\t<form class=\"login\" action=\"");
      out.print(request.getContextPath());
      out.write("/UserLogin\"\r\n");
      out.write("\t\t\t\tmethod=\"post\">\r\n");
      out.write("\t\t<br></br>\r\n");
      out.write("\t\t<center>\r\n");
      out.write("\t\t\t<label><font\r\n");
      out.write("\t\t\t\tstyle=\"font-family: Monotype Corsiva; font-size: 35px; color: #DAA520;\">UserLogin</font></label>\r\n");
      out.write("\r\n");
      out.write("\t\t\t<br></br>\r\n");
      out.write("\t\t\t<br></br> <label><font style=\"color: #336633;\">User Id</font></label>\r\n");
      out.write("\t\t\t&nbsp;&nbsp; <input type=\"text\" tabindex=\"1\" class=\"input\"\r\n");
      out.write("\t\t\t\tname=\"name\" placeholder=\"User Id\" required><br> <br>\r\n");
      out.write("\t\t\t<label><font style=\"color: #336633;\">Password</font></label> <input\r\n");
      out.write("\t\t\t\ttype=\"password\" class=\"input\" tabindex=\"2\" name=\"pass\"\r\n");
      out.write("\t\t\t\tplaceholder=\"Password\" required><br> <br> <br>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("\t\t\t<input type=\"image\" id=\"\" value=\"submit\"\r\n");
      out.write("\t\t\t\tsrc=\"");
      out.print(request.getContextPath() );
      out.write("/Files/Images/login.jpg\"\r\n");
      out.write("\t\t\t\talt=\"submit Button\" class=\"gradientbuttons\" width=\"80\" height=\"30\">&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t</center>\r\n");
      out.write("\t</form>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t\t\t");

		int noo=Utility.parse(request.getParameter("no"));
		if(noo==1)
{
	
      out.write("\r\n");
      out.write("\t\t\r\n");
      out.write("\t\t\t<div class=\"error\" id=\"message\" style=\" left:300px;height: 100px;width: 300px;\" >\t\r\n");
      out.write("\t\t\t<p>Opp's,your Id or password is wrong ..!</p>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t");

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
        else log(t.getMessage(), t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
