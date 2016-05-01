package com.action.admin;
import java.io.IOException;

import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.DAOFactory.DAO;
import com.DAOFactory.DAOFactory;


public class cloud extends HttpServlet 
{
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws IOException
	{
		PrintWriter out = response.getWriter();
		try
		{
			
			String submit=request.getParameter("submit");
			System.out.println("value of submit button in cloud list issss  "+submit);
			DAOFactory factory=new DAOFactory();
			DAO dao=factory.getInstance("Admin");
			ResultSet rs=dao.getClouds();
			RequestDispatcher rd=null;
		
			if(submit.equals("get"))
			{
				if(rs.next())
				{
					rs=dao.getClouds();
					request.setAttribute("rs", rs);
					rd=request.getRequestDispatcher("/Files/JSP/Admin/clouds.jsp");
					rd.forward(request, response);
				}
				else
				{
					rd=request.getRequestDispatcher("/Files/JSP/Admin/clouds.jsp?no=-1");
					rd.forward(request, response);
				}
			}
			
			if(submit.equals("Edit"))
			{
				String []chk=request.getParameterValues("chk");
				if(com.util.Utility.parse1(request.getParameter("edit1")).equals("YES"))
				{
					String s[]=new String[6];
					s[0]=request.getParameter("id");
					s[1]=request.getParameter("c_url");
					s[2]=request.getParameter("c_username");
					s[3]=request.getParameter("c_password");
					s[4]=request.getParameter("c_status");
					s[5]=request.getParameter("c_remark");
					
					dao.editCloud(s);
					rs=dao.getClouds();
					request.setAttribute("rs", rs);
					rd=request.getRequestDispatcher("/Files/JSP/Admin/clouds.jsp?no=5");
					rd.forward(request,response);
				}
				else if(chk==null)
				{
					rs=dao.getClouds();
					request.setAttribute("rs", rs);
					rd=request.getRequestDispatcher("/Files/JSP/Admin/clouds.jsp?no=2");
					rd.forward(request,response);
				}
				else if(chk.length!=1)
				{
					rs=dao.getClouds();
					request.setAttribute("rs", rs);
					rd=request.getRequestDispatcher("/Files/JSP/Admin/clouds.jsp?no=4");
					rd.forward(request,response);
				}
				else if(chk.length==1)
				{
					rs=dao.getClouds(chk[0]);
					request.setAttribute("rs", rs);
					rd=request.getRequestDispatcher("/Files/JSP/Admin/editcloud.jsp");
					rd.forward(request,response);
				}
			}
			if(submit.equals("Delete"))
			{
				String []chk=request.getParameterValues("chk");
				if(chk==null)
				{
					rs=dao.getClouds();
					request.setAttribute("rs", rs);
					rd=request.getRequestDispatcher("/Files/JSP/Admin/clouds.jsp?no=2");
					rd.forward(request,response);
				}
				else
				{
					for(int i=0;i<chk.length;i++)
					{
						dao.deleteCloud(chk[i]);
					}
					rs=dao.getClouds();
					request.setAttribute("rs", rs);
					rd=request.getRequestDispatcher("/Files/JSP/Admin/clouds.jsp?no=3");
					rd.forward(request,response);
				}
			}
		}
		catch(Exception e)
		{
			System.out.println("Opps's Error is in Admin CloudList Servlet......"+e);
			out.println("Opps's Error is in Admin CloudList Servlet......"+e);
		}
	}
}
			
		