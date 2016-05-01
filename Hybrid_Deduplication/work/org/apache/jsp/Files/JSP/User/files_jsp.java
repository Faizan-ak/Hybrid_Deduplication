package org.apache.jsp.Files.JSP.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import com.util.*;
import java.io.*;
import java.sql.*;
import javax.servlet.*;
import org.apache.commons.fileupload.*;
import com.DAOFactory.CommonDAO;
import com.DAOFactory.User;
import com.util.Utility;

public final class files_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("javax.servlet.\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<html>\r\n");

	String name=(String) session.getAttribute ("name");
	System.out.println("IN files.jsp name is  "+name);
	int id=CommonDAO.getUserID(name);
	ResultSet rs1=CommonDAO.getFiles(id);

	int count=1;

      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"");
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
      out.write("\t\r\n");
      out.write("\r\n");
      out.write("<style>\r\n");
      out.write(".popup{\r\n");
      out.write("position:fixed;\r\n");
      out.write("width:100%;\r\n");
      out.write("height:100%;\r\n");
      out.write("left:0px;\r\n");
      out.write("right:0px;\r\n");
      out.write("top: 0px;\r\n");
      out.write("bottom:0px;\r\n");
      out.write("background-color:rgba(3,3,3,0.8);\r\n");
      out.write("}\r\n");
      out.write(" \r\n");
      out.write(".popupWindow{\r\n");
      out.write("background-color:white;\r\n");
      out.write("margin:0px auto;\r\n");
      out.write("width:40%;\r\n");
      out.write("min-width:400px;\r\n");
      out.write("min-height:300px;\r\n");
      out.write("margin-top:12%;\r\n");
      out.write("text-align: center;\r\n");
      out.write("-moz-border-radius: 50px 50px / 50px 50px;\r\n");
      out.write("border-radius: 50px 50px / 50px 50px;\r\n");
      out.write("box-shadow: 10px 10px 5px #000;\r\n");
      out.write("}\r\n");
      out.write(" \r\n");
      out.write(".popup_txt{\r\n");
      out.write("font-size:26px;\r\n");
      out.write("font-weight:bold;\r\n");
      out.write("margin:10px;\r\n");
      out.write("padding-top:100px;\r\n");
      out.write("color:green;\r\n");
      out.write("}\r\n");
      out.write(" \r\n");
      out.write(".popup_img{\r\n");
      out.write("maring:10px;\r\n");
      out.write("}\r\n");
      out.write(" \r\n");
      out.write(".popup_img_yes,.popup_img_no{\r\n");
      out.write("margin:20px;\r\n");
      out.write("}\r\n");
      out.write(" \r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("<style >\r\n");
      out.write("table, tr, td\r\n");
      out.write("th, td\r\n");
      out.write("{\r\n");
      out.write("padding:8px;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body onload=\"startTimer()\" style=\"height: 450px;\">\r\n");
      out.write("<form action=\"");
      out.print(request.getContextPath() );
      out.write("/UploadFile\">\r\n");
      out.write("<input type=\"hidden\" name=\"name\" value=\"");
      out.print(name);
      out.write("\"/>\r\n");
      out.write("<div id='cssmenu' style=\"position: absolute; top: 150px; height: 90px; left:0px; width: 170px;\">\r\n");
      out.write("<input type=\"submit\" name=\"submit\" value=\"Upload\" class=\"btn\" id=\"a1\"/>&nbsp;&nbsp;&nbsp;&nbsp;\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("\t<div style=\"position: absolute; top: 100px; left:  150px; \">\r\n");
      out.write("\t<table align=\"center\" id=\"results\" class=\"tab\" style=\"width: 500 ; color: FFFFCC\";>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<th>Select</th>\r\n");
      out.write("\t\t<th>Name</th>\r\n");
      out.write("\t\t<th>Date</th>\r\n");
      out.write("\t\t<th>Day</th>\r\n");
      out.write("\t\t<th>Time</th>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t");

	if(rs1!=null)
		while(rs1.next())
		{
      out.write("\r\n");
      out.write("\t\t\t<tr>\r\n");
      out.write("\t\t\t\t<td>");
      out.print(count++ );
      out.write("&nbsp;&nbsp;&nbsp;\r\n");
      out.write("\t\t\t\t\t<input name=\"chk\" type=\"checkbox\" value=\"");
      out.print(rs1.getInt(1) );
      out.write("\"></td>\r\n");
      out.write("\t\t\t\t<td>");
      out.print(rs1.getString(3) );
      out.write("</td>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\t<td>");
      out.print(rs1.getString(6) );
      out.write("</td>\r\n");
      out.write("\t\t\t\t<td>");
      out.print(rs1.getString(8) );
      out.write("</td>\r\n");
      out.write("\t\t\t\t<td>");
      out.print(rs1.getString(7) );
      out.write("</td>\r\n");
      out.write("\t\t\t</tr>\r\n");
      out.write("\t\t");
}
	
      out.write("\r\n");
      out.write("</table>\r\n");
      out.write("</div>\r\n");
      out.write("</form>\r\n");
      out.write("<div id=\"pageNavPosition\" style=\"cursor:hand; position: absolute; top: 350px; left:  150px; \" ></div>\r\n");
      out.write("<script type=\"text/javascript\"><!--\r\n");
      out.write("        var pager = new Pager('results', 5); \r\n");
      out.write("        pager.init(); \r\n");
      out.write("        pager.showPageNav('pager', 'pageNavPosition'); \r\n");
      out.write("        pager.showPage(1);\r\n");
      out.write("    //--></script>\r\n");

	if(Utility.parse(request.getParameter("no"))==2)
    {
      out.write("\r\n");
      out.write("    \t<div class=\"success\" id=\"message\">\t\r\n");
      out.write("    \t\t<p>File Uploaded Successfully.....!</p>\r\n");
      out.write("    \t</div>\t\t\t\r\n");
      out.write("    ");
}
	if(Utility.parse(request.getParameter("no"))==1)
	{
      out.write("\r\n");
      out.write("\t\t<div class=\"tab1\" style=\"position:absolute;top:350px;left:360px\">\t\r\n");
      out.write("\t\t\t<form id=\"login\" action=\"");
      out.print(request.getContextPath() );
      out.write("/UploadToCloud?name=");
      out.print(name);
      out.write("\" method=\"post\">\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t<input type=\"file\" name=\"file\" class=\"field\" required=\"required\"></input><br></br>\r\n");
      out.write("\t\t\t\t<input type=\"submit\" name=\"Upload File\" class=\"btn\" \"></input>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t</form>\r\n");
      out.write("\t\t</div>\t\t\t\r\n");
      out.write("\t");
}
	if(Utility.parse(request.getParameter("no"))==3)
    {
      out.write("\r\n");
      out.write("    \t<div class=\"error\" id=\"message\" style=\"height: 50;width: 250;\">\t\r\n");
      out.write("    \t\t<p>Opp's select atleast one to delete.....!</p>\r\n");
      out.write("    \t</div>\t\t\t\r\n");
      out.write("    ");
}
	if(Utility.parse(request.getParameter("no"))==4)
    {
      out.write("\r\n");
      out.write("    \t<div class=\"success\" id=\"message\" style=\"height: 50;width: 250;\">\t\r\n");
      out.write("    \t\t<p>File Deleted Successfully.....!</p>\r\n");
      out.write("    \t</div>\t\t\t\r\n");
      out.write("    ");
}
	
	if(Utility.parse(request.getParameter("no"))==5)
    {
      out.write("\r\n");
      out.write("    \t<div class=\"error\" id=\"message\" style=\"height: 50;width: 250;\">\t\r\n");
      out.write("    \t\t<p>Network problem.....!</p>\r\n");
      out.write("    \t</div>\t\t\t\r\n");
      out.write("    ");
}
	
	if(Utility.parse(request.getParameter("no"))==7)
    {
      out.write("\r\n");
      out.write("    \t<div class=\"error\" id=\"message\" style=\"height: 50;width: 250;\">\t\r\n");
      out.write("    \t\t<p>YOU HAVE NO RIGHTS TO DE-DUPLICATE THIS FILE.....!</p>\r\n");
      out.write("    \t</div>\t\t\t\r\n");
      out.write("    ");
}
	
	
	if(Utility.parse(request.getParameter("no"))==8)
    {
      out.write("\r\n");
      out.write("    \t<div class=\"error\" id=\"message\" style=\"height: 50;width: 250;\">\t\r\n");
      out.write("    \t\t<p>File is already on the Global Cloud .....!</p>\r\n");
      out.write("    \t</div>\t\t\t\r\n");
      out.write("    ");
}
	
	
	
	if(Utility.parse(request.getParameter("no"))==6)
    {
      out.write("\r\n");
      out.write("    \t\r\n");
      out.write("\r\n");
      out.write("   ");

 	String file=request.getParameter("file");
 	session.setAttribute("filename", file);
 	
 	String file_code=request.getParameter("file_code");
 	session.setAttribute("file_code", file_code);
 	System.out.println("In Files.jsp  file_code is  "+file_code);
 	
 	
 
      out.write("\r\n");
      out.write(" \r\n");
      out.write("<div class=\"popup\"> \r\n");
      out.write("        <div class=\"popupWindow\">\r\n");
      out.write("                <div class=\"popup_txt\">\r\n");
      out.write("                        File is Already on the cloud...\r\n");
      out.write("                        Do you want to De-duplicate it??\r\n");
      out.write("                        \r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"popup_img\">\r\n");
      out.write("                <form action=\"");
      out.print(request.getContextPath() );
      out.write("/UploadToGlobal?name=");
      out.print(name);
      out.write("\" method=\"post\">\r\n");
      out.write("                <input type=\"image\" id=\"\" value=\"yes\" name=\"submit\"\r\n");
      out.write("                 src=\"");
      out.print(request.getContextPath() );
      out.write("/Files/Images/yes.png\" />\r\n");
      out.write("                 </form>\r\n");
      out.write("                 \r\n");
      out.write("             \t <a href=\"");
      out.print(request.getContextPath() );
      out.write("/UploadFile?name=");
      out.print(name);
      out.write("&submit=get\" target=\"afrm\">\r\n");
      out.write("                <input  type=\"image\" id=\"\" value=\"no\" name=\"submit\"\r\n");
      out.write("                  src=\"");
      out.print(request.getContextPath() );
      out.write("/Files/Images/no.png\" /></a>\r\n");
      out.write("                  \r\n");
      out.write("                </div>\r\n");
      out.write("        </div>\r\n");
      out.write("</div>  \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("    ");

    }

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
