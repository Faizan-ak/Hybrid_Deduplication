package com.action.admin;

import java.io.PrintWriter;
import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;

public class logout extends HttpServlet {
	public void doGet(HttpServletRequest request,HttpServletResponse response)
	{
		HttpSession session = request.getSession(false);
		if(session!=null)
		session.invalidate();
		try
		{
			System.out.println("Logout");
		RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
		rd.forward(request, response);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	

}
