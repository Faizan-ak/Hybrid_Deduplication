/**
 * 
 */
package com.action.user;

import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAOFactory.CommonDAO;
import com.util.RSA_File_EncryptionDecryption;
import com.util.Utility;

public class DownloadFile extends HttpServlet 
{
	
	public void doGet(HttpServletRequest request,HttpServletResponse response)throws IOException
	{
		try
		{
			String submit=request.getParameter("submit");
			String name=request.getParameter("name");
			boolean result=false;
			//int id=CommonDAO.getID(name);
			ResultSet rs=CommonDAO.getFiles();
			
			RequestDispatcher rd=null;
			if(submit.equals("get"))
			{
				if(rs.next())
				{
					rs=CommonDAO.getFiles();
					
					request.setAttribute("rs", rs);
					request.setAttribute("name", name);
					rd=request.getRequestDispatcher("/Files/JSP/User/download.jsp");
					rd.forward(request, response);
				}
				else
				{
					rd=request.getRequestDispatcher("/Files/JSP/User/download.jsp?no=-1");
					rd.forward(request, response);
				}
			}
			
			else if(submit.equals("Download"))
			{
				String []chk=request.getParameterValues("chk");
				request.setAttribute("name", name);
				if(chk==null || chk.length!=1)
				{
					rs=CommonDAO.getFiles();
					
					request.setAttribute("rs", rs);
					rd=request.getRequestDispatcher("/Files/JSP/User/download.jsp?no=3");
					rd.forward(request,response);
				}
				else
				{
					int num=CommonDAO.getCloudNo(chk[0]);
					String fname=CommonDAO.getFileName(chk[0]);
					System.out.println("Downloading file name is rj  "+fname);
					int rank=CommonDAO.getRank(name);
					int file_id=CommonDAO.getFileId(fname);
				
					
					String read_access=CommonDAO.getReadAccess(file_id);
					System.out.println("ReadAcessssssss   "+read_access);
					boolean checks=false;
					String[] split=read_access.split("-");
					for(int i=0;i<split.length;i++)
					{
						int check=Integer.parseInt(split[i]);
						System.out.println("Integer Checkkkkkkkk valueee  "+check);
						if(check==rank)
						{
							checks=true;
							
						}
						
					}
					System.out.println("Boolean Checksss valueee  "+checks);
						if(checks)
						{
					
							String download_fpath = request.getRealPath("")+"/CLOUD_PROJECT/"+fname;
							
							System.out.println("download_fpath :"+download_fpath);
							result=Utility.downloadFile(Utility.getPro("server"),"blrstore103","blrstore103",download_fpath,fname);
					
					
					
					if(result)
					{
						
						String decrypt_fpath = request.getRealPath("")+"/CLOUD_PROJECT/Dec_"+fname;
						
						System.out.println("Download Successfully!!");
						int file_rank=CommonDAO.getFileRank(chk[0]);
						System.out.println("File rank iss  "+file_rank);
						ObjectInputStream objectIn = null;
						byte[] pubkey=CommonDAO.getPubKey(file_rank);
						objectIn = new ObjectInputStream(new ByteArrayInputStream(pubkey));
					    System.out.println("objectIn");
					    Object deSerializedObject = objectIn.readObject();
					    PublicKey publickey=(PublicKey) deSerializedObject;
						
						boolean encrypt= RSA_File_EncryptionDecryption.decryptFile(download_fpath, decrypt_fpath, publickey);
						if(encrypt)
						{
							response.sendRedirect(request.getContextPath()+"/Pass?fileNames="+decrypt_fpath+"&download=true");
							
						}
						
						
						
					}
					if(result==false)
					{
						//System.out.println("IN ELSE1111");
						rd = request.getRequestDispatcher("/Files/JSP/User/download.jsp?no=5");
						rd.forward(request,response);
				
					}
					
					
						}
						
						
							else
							{
								System.out.println("IN ELSE22222");
								rd = request.getRequestDispatcher("/Files/JSP/User/download.jsp?no=9");
								rd.forward(request, response);
							}
						
					
				}
			}
		}
		catch(Exception e)
		{
			System.out.println("Opps's Error is in User DownloadFile Servlet......"+e);
		}
	}
}
