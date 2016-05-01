/**
 * 
 */
package com.action.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.mail.Session;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAOFactory.CommonDAO;
import com.DAOFactory.DAO;
import com.DAOFactory.DAOFactory;
import com.util.Utility;


public class UploadFile extends HttpServlet 
{
	
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws IOException
	{
		PrintWriter out = response.getWriter();
		try
		{
			  
			String submit=request.getParameter("submit");
			String name=(String)request.getSession(false).getAttribute("name");
			System.out.println("submit---"+submit);
			System.out.println("name----"+name);
			boolean result=false;
			//int id=CommonDAO.getID(name);
			ResultSet rs=CommonDAO.getFiles();
			
			RequestDispatcher rd=null;
			if(submit.equals("get"))
			{
				if(rs.next())
				{
					request.setAttribute("name", name);
					rd=request.getRequestDispatcher("/Files/JSP/User/files.jsp");
					rd.forward(request, response);
				}
				else
				{
					rd=request.getRequestDispatcher("/Files/JSP/User/files.jsp?no=-1");
					rd.forward(request, response);
				}
			}
			else if(submit.equals("Upload"))
			{
				rs=CommonDAO.getFiles();
				
				request.setAttribute("rs", rs);
				//rd=request.getRequestDispatcher("/Files/JSP/User/files.jsp?no=1");
				rd=request.getRequestDispatcher("/Files/JSP/User/filedownload.jsp");
				rd.forward(request, response);
			}
			
			
			
			
		}
		catch(Exception e)
		{
			System.out.println("Opps's Error is in User UploadFile Servlet......"+e);
			out.println("Opps's Error is in User UploadFile Servlet......"+e);
		}
	}
}
