/**
 * 
 */
package com.action.admin;

import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAOFactory.DAO;
import com.DAOFactory.DAOFactory;

/**
 * @author rajat Gudle
 *Mar 28, 2012 5:45:32 PM
 *Project:-Cloud_Computing(RC4)
 *Package:-com.rajat.action.admin
 *File:-Trans.java
 */
public class Trans extends HttpServlet 
{
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws IOException
	{
		PrintWriter out = response.getWriter();
		try
		{
			String task=request.getParameter("submit");
			System.out.println("Start "+task);
			
			DAOFactory factory=new DAOFactory();
			DAO dao=factory.getInstance("Admin");
			ResultSet rs=null;
			if(task.equals("get"))
			{
				System.out.println("Start ");
				
				RequestDispatcher rd=null;
				rd=request.getRequestDispatcher("Files/JSP/Admin/trans.jsp");
				rd.forward(request, response);
				
			}
			if(task.equals("Ok"))
			{
				String name=request.getParameter("name");
				out.println("<html><body>");
				out.println("<h1 style='color:white'>Transactions</h1>");
				FileInputStream fstream = new FileInputStream(getServletContext().getRealPath("/")+"\\Files\\Transactios\\"+name+".txt");
				DataInputStream in = new DataInputStream(fstream);
				BufferedReader br = new BufferedReader(new InputStreamReader(in));
				String text="";
				
				while((text = br.readLine()) != null)
				{
					out.println("<h4 style='color:white'>"+text+"</h4>");
					
				}
				out.println("</body></html>");
			}
		}
		catch(Exception e)
		{
			System.out.println("Opps's Error is in User Transaction Servlet......"+e);
			out.println("Opps's Error is in User Transaction Servlet......"+e);
		}
	}
}
