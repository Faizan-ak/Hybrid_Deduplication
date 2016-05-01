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

import com.DAOFactory.*;
import com.util.*;
public class key_generation extends HttpServlet 
{
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws IOException 
	{
		PrintWriter out=response.getWriter();
		RequestDispatcher rd=null;
		boolean key=false;
		try
		{		String option=request.getParameter("select");
				System.out.println("select value isss "+option);
				int option_value=Integer.parseInt(option);
				boolean delete=Admin.deleteKeys();
				System.out.println("Delete value  "+delete);
				if(delete)
				{
				for(int i=1;i<=option_value;i++)
				{
					
					int rank=i;
					key=RSA_File_EncryptionDecryption.generateRSAKey1(rank);
					System.out.println("Key Status  "+key);	
				}
			
				if(key)
				{
					rd=request.getRequestDispatcher("/Files/JSP/Admin/key.jsp?no=1");
					rd.forward(request, response);
				}
				else
				{
					 rd=request.getRequestDispatcher("/Files/JSP/Admin/key.jsp?no=2");
					 rd.forward(request, response);
				}
				
				}
				else
				{
					 rd=request.getRequestDispatcher("/Files/JSP/Admin/key.jsp?no=2");
					 rd.forward(request, response);
				}
		}
		catch(Exception e)
		{
			System.out.println("Opps's Error is in AdminProfile Servlet......"+e);
			out.println("Opps's Error is in AdminProfile Servlet......"+e);
		}
	}
}
