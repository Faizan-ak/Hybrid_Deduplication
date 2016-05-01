/**
 * 
 */
package com.action.admin;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAOFactory.DAO;
import com.DAOFactory.DAOFactory;

/**
 * @author Rajat Bansal
 *Aug 23 2014 
 *Project:-Hybrid_Deduplication
 *Package:-com.rajat.database
 *File:-Database.java
 */
public class Login extends HttpServlet 
{
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws IOException
	{
		PrintWriter out = response.getWriter();
		try
		{
			String name=request.getParameter("name");
			String pass=request.getParameter("pass");
			DAOFactory factory=new DAOFactory();
			DAO dao=factory.getInstance("Admin");
			boolean result=dao.loginCHK(name, pass);
			if(result)
			{
				HttpSession session=request.getSession(true);
				System.out.println("Admin session is new-->"+session.isNew());
				request.setAttribute("admin", name);
				session.setAttribute("admin", name);
				RequestDispatcher rd=request.getRequestDispatcher("/Files/JSP/Admin/home.jsp");
				rd.forward(request, response);
			}
			else
				
				response.sendRedirect("index.jsp?no=1");
		}
		catch(Exception e)
		{
			System.out.println("Opps's Error is in AdminLogin Servlet......"+e);
			out.println("Opps's Error is in AdminLogin Servlet......"+e);
		}
	}
}
