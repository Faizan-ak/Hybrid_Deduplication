package com.action.user;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAOFactory.CommonDAO;
import com.DAOFactory.User;
import com.util.Utility;
public class FileAccess  extends HttpServlet 
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
			ResultSet rs=null;
			RequestDispatcher rd=null;
			if(submit.equals("Ok"))
			{
				String[]chk=request.getParameterValues("chk");
				
				request.setAttribute("name", name);
				if(chk==null)
				{
					rs=CommonDAO.getFiles();
				
					request.setAttribute("rs", rs);
					rd=request.getRequestDispatcher("/Files/JSP/User/files.jsp?no=3");
					rd.forward(request,response);
				}
				else
				{
					//for(int i=0;i<chk.length;i++)
					{
						
						//System.out.println("Check values  "+chk[]);
						int id=CommonDAO.getUserID(name);
						int rank=CommonDAO.getRank(name);
						int file_code=CommonDAO.getFileId();
						boolean check=User.AccessSetting(file_code,id,rank,chk);
						if(check)
						{
							rs=CommonDAO.getFiles();
							
							request.setAttribute("rs", rs);
							rd=request.getRequestDispatcher("/Files/JSP/User/files.jsp?no=2");
							rd.forward(request,response);
							
						}
					}
			}
		

		}
	}
		
		catch(Exception e)
		{
			System.out.println("Opps's Error is in User UploadFile Servlet......"+e);
			out.println("Opps's Error is in User UploadFile Servlet......"+e);
		}
		
	}
}
