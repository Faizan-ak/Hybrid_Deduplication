/**
 * 
 */
package com.action.user;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.PrintWriter;
import java.security.PrivateKey;
import java.sql.ResultSet;
import java.util.Iterator;
import java.util.List;


import javax.mail.Session;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;


import com.DAOFactory.CommonDAO;
import com.DAOFactory.User;
import com.util.Utility;


public class UploadToCloud extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException
		    {
	
		    PrintWriter out = response.getWriter();
		    try
		    {
			
			String fileName = "", root = "", md = "", dir = "cloud_project";
			 
			
			File uploadedFile = null;
			File encryptedFile = null;
			ResultSet rs = null;
			boolean flag = false;
			RequestDispatcher rd = null;
		
		
			String name=(String)request.getSession(false).getAttribute("name");
			
			int rank=CommonDAO.getRank(name);
			
			
				FileItemFactory factory = new DiskFileItemFactory();
				ServletFileUpload upload = new ServletFileUpload(factory);
				
				try
				{
					List items = upload.parseRequest(request);
					FileItem file = (FileItem) items.get(0);
					String path= file.getName();
					
					System.out.println("File Intem cvcbcv:" + path);
					
		
							fileName = file.getName();
							
							root = getServletContext().getRealPath("/CLOUD_PROJECT");
						
							uploadedFile = new File(root + "/"+fileName);
							
							file.write(uploadedFile);
						
				
					int id = CommonDAO.getUserID(name);
					md = Utility.MD(uploadedFile);
					//byte ds[] = Utility.DS(md.getBytes(),CommonDAO.getPvtKey(rank));
					boolean chkmd=false;
					chkmd=User.CHKMD(md);
					System.out.println("CHKMD Status "+chkmd);
					if(!chkmd)
					{
						ObjectInputStream objectIn = null;
						
						byte[] privtekey=CommonDAO.getPvtKey(rank);
						
						objectIn = new ObjectInputStream(new ByteArrayInputStream(privtekey));
						
					    System.out.println("objectIn");
					    
					    Object deSerializedObject = objectIn.readObject();
					    
					    PrivateKey privkey=(PrivateKey) deSerializedObject;
					    
					    String desFile = request.getRealPath("")+"/CLOUD_PROJECT/Enc_"+fileName;
					    
					    encryptedFile = new File(desFile);
					    
					    boolean encrypt=CommonDAO.encryptFile(uploadedFile, encryptedFile, privkey);
					    
					    System.out.println("Encrypt Boolean value is   "+encrypt);
						
					    flag=Utility.uploadFile(Utility.getPro("server"), Utility.getPro("user"), Utility.getPro("pass"),CommonDAO.getTransID()+1+fileName,encryptedFile, dir);

					
					if(flag)
					{
						CommonDAO.makeTrans(id,fileName, "Upload",md,rank);
						flag = Utility.writeOnFile(name + ".txt","User has uploaded file (" + fileName
								+ ") on date "+ Utility.getDate()+ " and time "+ Utility.getTime() + "",
										getServletContext().getRealPath("/"));
						rd = request.getRequestDispatcher("/Files/JSP/User/fileaccess.jsp?name="+ name);
						rd.forward(request, response);
					
					}
					
					if(!flag)
					{
						rd = request.getRequestDispatcher("/Files/JSP/User/files.jsp?no=5");
						rd.forward(request, response);
					}
					
					}
					
					else
					{
						int file_code=CommonDAO.getFile_Code(md);
						
						System.out.println("In else partt"+file_code);
						rd = request.getRequestDispatcher("/Files/JSP/User/files.jsp?no=6&file="+fileName+"&name1="+name+"&file_code="+file_code+"");
						rd.forward(request, response);
						
						
						
					}
					//boolean b = uploadedFile.delete();
				}
				catch (Exception e1)
				{
					
					System.out.println("Opps's Error is in User UploadToCloud isMultipart Servlet......"+ e1);
					
					out.println("Opps's Error is in User UploadToCloud Servlet isMultipart......"+ e1);
				}
			 
		  }
		
		catch (Exception e)
		{
			System.out.println("Opps's Error is in User UploadToCloud Servlet......"+ e);
			
			out.println("Opps's Error is in User UploadToCloud Servlet......"+ e);
		}
	}
}
