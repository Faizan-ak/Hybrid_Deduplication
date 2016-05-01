/**
 * 
 */
package com.action.user;



import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.PrivateKey;
import java.sql.ResultSet;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import java.io.*;

import com.DAOFactory.CommonDAO;
import com.DAOFactory.User;
import com.util.Utility;


public class UploadToGlobalCloud extends HttpServlet
{
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException 
			{
			PrintWriter out = response.getWriter();
			String name1=(String)request.getSession(false).getAttribute("name");
			System.out.println("INNN Upload to global cloud name is  "+name1);
		    int rank=CommonDAO.getRank(name1);
		    
		    System.out.println("User Rank to return : "+rank);
		    
		    String fileName = "", root = "", md = "", dir = "cloud_project";
		    
		    File uploadedFile = null;
			ResultSet rs = null;
			boolean flag = false;
			RequestDispatcher rd = null;
			
			fileName =(String)request.getSession(false).getAttribute("filename");
			System.out.println("File name isss  "+fileName);
			
			//To Check Deduplicate rights
			String file_code =(String)request.getSession(false).getAttribute("file_code");
			System.out.println("File codeee isss  "+file_code);
			
			int file_id=Integer.parseInt(file_code);
			System.out.println("File codeeeeeee  "+file_code);
			
			String dedup_access=CommonDAO.getDedupAccess(file_id);
			System.out.println("DedupAcessssssss   "+dedup_access);
			
			String[] split=dedup_access.split("-");
			boolean checks=false;
			
			for(int i=0;i<split.length;i++)
			{
				int check=Integer.parseInt(split[i]);
				System.out.println("Integer Checkkkkkkkk valueee  "+check+"....... check condition "+(rank==check));
				if(rank==check)
				{
					checks=true;
					
				}
				else
				{
					System.out.println("checks :"+checks);
				}
				
				System.out.println("checks :"+checks);
			}
			System.out.println("Boolean Checksss valueee  "+checks);
				if(checks)
				{
				
					root = getServletContext().getRealPath("/CLOUD_PROJECT/Enc_");
				
					uploadedFile = new File(root +fileName);
					System.out.println("uPLOADED File name isss  "+uploadedFile);
					//file.write(uploadedFile);
				
			
			
			      try
			        {
					  int id = CommonDAO.getUserID(name1);
					  md = Utility.MD(uploadedFile);
					 // byte ds[] = Utility.DS(md.getBytes(),CommonDAO.getPvtKey(rank));
					  boolean chkmd=false;
						chkmd=User.CHKMDGlobal(md);
						System.out.println("CHKMD Status "+chkmd);
						if(!chkmd)
						{	
					  flag=Utility.uploadFile(Utility.getPro("server1"), Utility.getPro("user1"), Utility.getPro("pass1"),fileName,uploadedFile, dir);

			
					  if(flag)
						{
						  
							CommonDAO.makeTrans1(id,fileName, "Upload",md,rank);
							flag = Utility.writeOnFile(name1 + ".txt","User has uploaded file (" + fileName
						 	+ ") on date "+ Utility.getDate()+ " and time "+ Utility.getTime() + "",
								getServletContext().getRealPath("/"));
							rs = CommonDAO.getFiles();
							if (rs.next()) 
							{
							rs = CommonDAO.getFiles();
							request.setAttribute("rs", rs);
							rd = request.getRequestDispatcher("/Files/JSP/User/files.jsp?no=2");
							rd.forward(request, response);
							}
						}
			
					   if(!flag)
					  {
						   
						   rd = request.getRequestDispatcher("/Files/JSP/User/files.jsp?no=5");
						   rd.forward(request, response);
					  }
					   
						}
						
						else
						{
							rd = request.getRequestDispatcher("/Files/JSP/User/files.jsp?no=8");
							rd.forward(request, response);
						}
					   
					   
					   
					   
			        	}
			
			      	catch(Exception e)
			      		{
				
			    	  e.printStackTrace();
			      		}
			      
					
				}
				
			
				else
				{
					   rd = request.getRequestDispatcher("/Files/JSP/User/files.jsp?no=7");
					   try 
					   {
						rd.forward(request, response);
					   } 
					   catch (ServletException e)
					   {
						
						e.printStackTrace();
					   }
					   
				}
				
				
	}
}
