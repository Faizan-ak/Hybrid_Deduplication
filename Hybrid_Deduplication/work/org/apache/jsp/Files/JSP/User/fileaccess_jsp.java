package org.apache.jsp.Files.JSP.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.util.*;
import java.sql.*;

public final class fileaccess_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\r\n");
      out.write("<title>key</title>\r\n");
      out.write("<link href=\"");
      out.print(request.getContextPath() );
      out.write("/Files/CSS/message.css\" rel=\"stylesheet\" type=\"text/css\" /> \r\n");
      out.write("<link href=\"");
      out.print(request.getContextPath());
      out.write("/Files/CSS/style.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n");
      out.write("\r\n");
      out.write("<style >\r\n");
      out.write("table, tr, td\r\n");
      out.write("th, td\r\n");
      out.write("{\r\n");
      out.write("padding:8px;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");

	String name=(String) session.getAttribute ("name");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/deduplication","root", "admin");
    Statement st = con.createStatement();
    ResultSet rs=st.executeQuery("select * from digkey");
    
    
      out.write("\r\n");
      out.write("<body onload=\"startTimer()\"style=\"height: 450px;\">\r\n");
      out.write("<form action=\"");
      out.print(request.getContextPath());
      out.write("/FileAccess\">\r\n");
      out.write("<div style=\"position: absolute; top:50px;left: 230px;\">\r\n");
      out.write("<label><font style=\"font-family: Monotype Corsiva; font-size: 50px; color: #DAA520;\">File Access</font></label>\r\n");
      out.write("</div>\t\r\n");
      out.write("\t<div style=\"position: absolute; top: 150px ; left: 200px;\">\r\n");
      out.write("\t\t\r\n");
      out.write("\t<label><font style=\"color: #336633; font-size: 30px;\">Select Rank</font></label>\r\n");
      out.write("\t<br><br>\r\n");
      out.write("\t\t\t<table>\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");
 while(rs.next())
								{
									
      out.write("<tr>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td><input name=\"chk\" type=\"checkbox\"  value=\"");
      out.print(rs.getInt(1) );
      out.write("\"></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<td><label >Rank ");
      out.print(rs.getInt(1) );
      out.write("</label></td>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t");

								}
								
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t</table>\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t<input type=\"submit\" value=\"Ok\" class=\"btn\" name=\"submit\" >\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t\r\n");
      out.write("\t</div>\r\n");
      out.write("</form>\r\n");
      out.write("\r\n");
      out.write("\t\t\r\n");
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
