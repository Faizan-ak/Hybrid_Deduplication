package org.apache.jsp.Files.JSP.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.util.Utility;

public final class home_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");

	String admin=request.getAttribute("admin").toString();


      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"utf-8\">\r\n");
      out.write("<title>Admin home</title>\r\n");
      out.write("\r\n");
      out.write("<link href=\"");
      out.print(request.getContextPath());
      out.write("/Files/CSS/style.css\"\r\n");
      out.write("\trel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("\t\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("<div class=\"logo\" ></div>\r\n");
      out.write("\t<div class=\"innerheader\" ></div>\r\n");
      out.write("<div id='cssmenu' style=\"position: absolute; top: 180px; height: 320px; right:0px; width: 170px;\" >\r\n");
      out.write("\r\n");
      out.write("\t<br><br>\r\n");
      out.write("\r\n");
      out.write("\t<font style=\"font-family: Monotype Corsiva; font-size: 25px; color: #FEDCBA;\">Welcome ");
      out.print(admin );
      out.write("</font>\r\n");
      out.write("\t<a href=\"");
      out.print(request.getContextPath() );
      out.write("/AdminProfile?name=");
      out.print(admin);
      out.write("\" target=\"afrm\">Show Profile</a>\r\n");
      out.write("\t<a href=\"");
      out.print(request.getContextPath() );
      out.write("/Files/JSP/Admin/key.jsp?name=");
      out.print(admin);
      out.write("\" target=\"afrm\">Key Setup</a>\r\n");
      out.write("\t<a  href=\"");
      out.print(request.getContextPath() );
      out.write("/UserList?submit=get\" target=\"afrm\">User List</a>\r\n");
      out.write("\t<a  href=\"");
      out.print(request.getContextPath() );
      out.write("/CloudList?submit=get\" target=\"afrm\">Cloud Details</a>\r\n");
      out.write("\t<a href=\"");
      out.print(request.getContextPath() );
      out.write("/Trans1?submit=get\" target=\"afrm\">Transactios</a>\r\n");
      out.write("\t<a href=\"");
      out.print(request.getContextPath() );
      out.write("/Files/JSP/Admin/logout.jsp\">Sign Out</a>\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div style=\"top:140px;left:0%;\">\r\n");
      out.write("\t\t<iframe frameborder=\"0\" scrolling=\"auto\" name=\"afrm\" style=\"position:absolute;left:10px;height:500px;width:800px;top: 150px;\" >\r\n");
      out.write("\t\t</iframe>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t\t");

	if(Utility.parse(request.getParameter("no"))==1)
    {
      out.write("\r\n");
      out.write("    \t<div class=\"success\" id=\"message\">\t\r\n");
      out.write("    \t\t<p>Key Generated Successfully.....!</p>\r\n");
      out.write("    \t</div>\t\t\t\r\n");
      out.write("    ");
}
	
	if(Utility.parse(request.getParameter("no"))==2)
    {
      out.write("\r\n");
      out.write("    \t<div class=\"error\" id=\"message\">\t\r\n");
      out.write("    \t\t<p>Error in Key Generation .....!</p>\r\n");
      out.write("    \t</div>\t\t\t\r\n");
      out.write("    ");
}
	
	
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
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
