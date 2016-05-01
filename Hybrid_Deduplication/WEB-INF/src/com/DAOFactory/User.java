/**
 * 
 */
package com.DAOFactory;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

import com.database.Database;


public class User extends DAO
{
	private static Connection connection = null;
	private static Statement statement = null;
	private static ResultSet resultSet = null;
	public boolean loginCHK(String name, String pass) 
	{
		boolean flag=false;
		try
		{
			Database database=Database.getInstance();
			connection=database.connector();
			statement = connection.createStatement();
			System.out.println("select * from userlogin where userid='"+name+"' and password='"+pass+"'");
			resultSet = statement.executeQuery("select * from userlogin where userid='"+name+"' and password='"+pass+"'");
			while(resultSet.next())
			{
				flag=true;
			}
			System.out.println("User Login Status : "+flag);
		}
		catch(Exception e)
		{
			System.out.println("Opp's Error is in UserDAO-loginCHK()....."+e);
		}
		return flag;
	}
	public boolean register(String id, String pass, String name, String gender,String add, String city, String email, String phone,String groups) 
	{
		boolean flag=false;
		try
		{
			Database database=Database.getInstance();
			connection=database.connector();
			statement = connection.createStatement();
			String sql="insert into cloud.userlogin (userid,password,username,gender,address,city,email,phone,groups) values('"+id+"','"+pass+"','"+name+"','"+gender+"','"+add+"','"+city+"','"+email+"','"+phone+"','"+groups+"')";
			System.out.println(sql);
			int i=statement.executeUpdate(sql);
			
			if(i!=0)
			{
				flag=true;
			}
			System.out.println("User Registeration Status : "+flag);
		}
		catch(Exception e)
		{
			System.out.println("Opp's Error is in UserDAO-register()....."+e);
		}
		return flag;
	}
	public boolean CHK(String id) 
	{
		boolean flag=false;
		try
		{
			Database database=Database.getInstance();
			connection=database.connector();
			statement = connection.createStatement();
			resultSet = statement.executeQuery("select * from userlogin where userid='"+id+"'");
			while(resultSet.next())
			{
				flag=true;
			}
			System.out.println("User Login Status : "+flag);
		}
		catch(Exception e)
		{
			System.out.println("Opp's Error is in UserDAO-CHK()....."+e);
		}
		return flag;
	}
	public static boolean CHKMD(String md) 
	{
		boolean flag=false;
		try
		{
			Database database=Database.getInstance();
			connection=database.connector();
			statement = connection.createStatement();
			resultSet = statement.executeQuery("select * from m_trans where file_md='"+md+"'");
			while(resultSet.next())
			{
				flag=true;
			}
			System.out.println("MD Check Status : "+flag);
		}
		catch(Exception e)
		{
			System.out.println("Opp's Error is in UserDAO-CHKMD()....."+e);
		}
		return flag;
	}
	
	
	public static boolean CHKMDGlobal(String md) 
	{
		boolean flag=false;
		try
		{
			Database database=Database.getInstance();
			connection=database.connector();
			statement = connection.createStatement();
			resultSet = statement.executeQuery("select * from m_trans1 where file_md='"+md+"'");
			while(resultSet.next())
			{
				flag=true;
			}
			System.out.println("MD Check Status : "+flag);
		}
		catch(Exception e)
		{
			System.out.println("Opp's Error is in UserDAO-CHKMD()....."+e);
		}
		return flag;
	}
	public ResultSet getProfile(String id)
	{
		try
		{
			Database database=Database.getInstance();
			connection=database.connector();
			statement = connection.createStatement();
			resultSet = statement.executeQuery("select * from userlogin where userid='"+id+"'");
		}
		catch(Exception e)
		{
			System.out.println("Opp's Error is in UserDAO-getProfile()....."+e);
		}
		return resultSet;
	}
	public boolean editProfile(String [] s) 
	{
		boolean flag=false;
		try
		{
			Database database=Database.getInstance();
			connection=database.connector();
			statement = connection.createStatement();
			String sql="update userlogin set username='"+s[1]+"',address='"+s[3]+"',email='"+s[5]+"',phone='"+s[6]+"' where id='"+s[0]+"'";
			
			int i=statement.executeUpdate(sql);
			if(i!=0)
			{
				flag=true;
			}
			System.out.println("User Edit Profile Status : "+flag);
		}
		catch(Exception e)
		{
			System.out.println("Opp's Error is in UserDAO-editProfile()....."+e);
		}
		return flag;
	}
	
	public static boolean AccessSetting(int file_code,int id,int rank, String chk[] ) 
	{
		boolean flag=false;
		try
		{
			Database database=Database.getInstance();
			connection=database.connector();
			statement = connection.createStatement();
			//int length=chk.length;
			StringBuffer file_acess = new StringBuffer();
			StringBuffer dedup_acess = new StringBuffer();
			for(int i=0;i<chk.length;i++)
			{
			int check=Integer.parseInt(chk[i]);
				file_acess.append(chk[i]+"-");
				if(check<=rank)
				{
					dedup_acess.append(check+"-");
				}
				//to remove null value from DB
				}
				if(rank==1)
				{
					dedup_acess.append("1-");
				}
			String sql="insert into m_file_access  (file_code,u_code,u_rank,read_access,dedup_access) values ('"+file_code+"','"+id+"','"+rank+"','"+file_acess+"', '"+dedup_acess+"')";
			System.out.println("M-file-Access "+sql);
			int i=statement.executeUpdate(sql);
			if(i!=0)
			{
				flag=true;
			}
			System.out.println("User AccessSetting Status : "+flag);
		}
		catch(Exception e)
		{
			System.out.println("Opp's Error is in UserDAO-AccessSetting()....."+e);
		}
		return flag;
	}
	
	
	public boolean chnagePass(int id, String cpass)
	{
		boolean flag=false;
		try
		{
			Database database=Database.getInstance();
			connection=database.connector();
			statement = connection.createStatement();
			int i=statement.executeUpdate("update userlogin set password='"+cpass+"' where id='"+id+"'");
			if(i!=0)
			{
				flag=true;
			}
			System.out.println("User Change Pass Status : "+flag);
		}
		catch(Exception e)
		{
			System.out.println("Opp's Error is in UserDAO-chnagePass()....."+e);
		}
		return flag;
	}
	/* (non-Javadoc)
	 * @see com.rajat.DAOFactory.DAO#getUsers()
	 */
	@Override
	public ResultSet getUsers() {
		// TODO Auto-generated method stub
		return null;
	}
	/* (non-Javadoc)
	 * @see com.rajat.DAOFactory.DAO#deleteUser(java.lang.String)
	 */
	@Override
	public boolean deleteUser(String id) {
		// TODO Auto-generated method stub
		return false;
	}
	/* (non-Javadoc)
	 * @see com.rajat.DAOFactory.DAO#getUsers(java.lang.String)
	 */
	@Override
	public ResultSet getUsers(String id) {
		// TODO Auto-generated method stub
		return null;
	}
	/* (non-Javadoc)
	 * @see com.rajat.DAOFactory.DAO#editUser(java.lang.String[])
	 */
	@Override
	public boolean editUser(String[] s) {
		// TODO Auto-generated method stub
		return false;
	}
	/* (non-Javadoc)
	 * @see com.rajat.DAOFactory.DAO#getAuditors()
	 */
	@Override
	public boolean editCloud(String[] s) {
		// TODO Auto-generated method stub
		return false;
	}
	/* (non-Javadoc)
	 * @see com.rajat.DAOFactory.DAO#getAuditors()
	 */
	@Override
	public ResultSet getClouds() {
		// TODO Auto-generated method stub
		return null;
	}
	/* (non-Javadoc)
	 * @see com.rajat.DAOFactory.DAO#getAuditors()
	 */
	
	@Override
	public ResultSet getClouds(String id) {
		// TODO Auto-generated method stub
		return null;
	}
	/* (non-Javadoc)
	 * @see com.rajat.DAOFactory.DAO#getAuditors()
	 */
	
	@Override
	public boolean CHKCloud(String id) {
		// TODO Auto-generated method stub
		return false;
	}
	/* (non-Javadoc)
	 * @see com.rajat.DAOFactory.DAO#getAuditors()
	 */
	@Override
	public boolean deleteCloud(String id) {
		// TODO Auto-generated method stub
		return false;
	}
	/* (non-Javadoc)
	 * @see com.rajat.DAOFactory.DAO#getAuditors()
	 */
	
	public boolean deleteKeys(String id) 
	{
		boolean flag=false;
		try
		{
			Database database=Database.getInstance();
			connection=database.connector();
			statement = connection.createStatement();
			int i=statement.executeUpdate("delete from digkey where userid='"+id+"'");
			if(i!=0)
			{
				flag=true;
			}
			System.out.println("Admin delete user Status : "+flag);
		}
		catch(Exception e)
		{
			System.out.println("Opp's Error is in AdminDAO-deleteUser()....."+e);
		}
		return flag;
	}
	
	
}
