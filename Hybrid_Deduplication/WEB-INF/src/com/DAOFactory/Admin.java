/**
 * 
 */
package com.DAOFactory;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

import com.database.Database;




public class Admin extends DAO 
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
			resultSet = statement.executeQuery("select * from adminlogin where adminid='"+name+"' and password='"+pass+"'");
			while(resultSet.next())
			{
				flag=true;
			}
			System.out.println("Admin Login Status : "+flag);
		}
		catch(Exception e)
		{
			System.out.println("Opp's Error is in AdminDAO.loginCHK()....."+e);
		}
		return flag;
	}
	public boolean register(String id, String pass, String name, String gender,	String add, String city, String email, String phone,String rank) 
	{
		boolean flag=false;
		try
		{
			Database database=Database.getInstance();
			connection=database.connector();
			statement = connection.createStatement();
			String sql="insert into deduplication.userlogin (userid,password,username,gender,address,city,email,phone,rank) values('"+id+"','"+pass+"','"+name+"','"+gender+"','"+add+"','"+city+"','"+email+"','"+phone+"','"+rank+"')";
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
			System.out.println("Opp's Error is in AdminDAO-register()....."+e);
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
			System.out.println("Opp's Error is in AdminDAO-CHK()....."+e);
		}
		return flag;
	}
	public ResultSet getProfile(String name)
	{
		try
		{
			Database database=Database.getInstance();
			connection=database.connector();
			statement = connection.createStatement();
			resultSet = statement.executeQuery("select * from adminlogin where adminid='"+name+"'");
		}
		catch(Exception e)
		{
			System.out.println("Opp's Error is in AdminDAO-getProfile()....."+e);
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
			String sql="update adminlogin set name='"+s[1]+"',address='"+s[2]+"',phone='"+s[3]+"',email='"+s[4]+"' where id='"+s[0]+"'";
			System.out.println(sql);
			int i=statement.executeUpdate(sql);
			if(i!=0)
			{
				flag=true;
			}
			System.out.println("Admin Edit Profile Status : "+flag);
		}
		catch(Exception e)
		{
			System.out.println("Opp's Error is in AdminDAO-editProfile()....."+e);
		}
		return flag;
	}
	
	public boolean CHKCloud(String id) 
	{
		boolean flag=false;
		try
		{
			Database database=Database.getInstance();
			connection=database.connector();
			statement = connection.createStatement();
			resultSet = statement.executeQuery("select * from m_cloud where userid='"+id+"'");
			while(resultSet.next())
			{
				flag=true;
			}
			System.out.println("Cloud Status : "+flag);
		}
		catch(Exception e)
		{
			System.out.println("Opp's Error is in AdminDAO-CHKClouds()....."+e);
		}
		return flag;
	}
	public ResultSet getClouds()
	{
		try
		{
			Database database=Database.getInstance();
			connection=database.connector();
			statement = connection.createStatement();
			resultSet = statement.executeQuery("select * from m_cloud");
		}
		catch(Exception e)
		{
			System.out.println("Opp's Error is in AdminDAO-getCloud()....."+e);
		}
		return resultSet;
	}
	public boolean editCloud (String [] s) 
	{
		boolean flag=false;
		try
		{
			Database database=Database.getInstance();
			connection=database.connector();
			statement = connection.createStatement();
			int i=statement.executeUpdate("update m_cloud set c_url='"+s[1]+"',c_username='"+s[2]+"',c_password='"+s[3]+"',c_status='"+s[4]+"',c_remarks='"+s[5]+"' where id='"+s[0]+"'");
			if(i!=0)
			{
				flag=true;
			}
			System.out.println("Admin Edit Cloud Status : "+flag);
		}
		catch(Exception e)
		{
			System.out.println("Opp's Error is in AdminDAO-editCloud()....."+e);
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
			int i=statement.executeUpdate("update adminlogin set password='"+cpass+"' where id='"+id+"'");
			if(i!=0)
			{
				flag=true;
			}
			System.out.println("Admin Change Pass Status : "+flag);
		}
		catch(Exception e)
		{
			System.out.println("Opp's Error is in AdminDAO-chnagePass()....."+e);
		}
		return flag;
	}
	public ResultSet getUsers() 
	{
		try
		{
			Database database=Database.getInstance();
			connection=database.connector();
			statement = connection.createStatement();
			resultSet = statement.executeQuery("select * from userlogin");
		}
		catch(Exception e)
		{
			System.out.println("Opp's Error is in AdminDAO-getUsers()....."+e);
		}
		return resultSet;
	}
	public boolean deleteUser(String id) 
	{
		boolean flag=false;
		try
		{
			Database database=Database.getInstance();
			connection=database.connector();
			statement = connection.createStatement();
			int i=statement.executeUpdate("delete from userlogin where id='"+id+"'");
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
	public boolean deleteCloud(String id) 
	{
		boolean flag=false;
		try
		{
			Database database=Database.getInstance();
			connection=database.connector();
			statement = connection.createStatement();
			int i=statement.executeUpdate("delete from m_cloud where id='"+id+"'");
			if(i!=0)
			{
				flag=true;
			}
			System.out.println("Admin delete cloud Status : "+flag);
		}
		catch(Exception e)
		{
			System.out.println("Opp's Error is in AdminDAO-deleteCloud()....."+e);
		}
		return flag;
	}
	
	
	public ResultSet getUsers(String id)
	{
		try
		{
			Database database=Database.getInstance();
			connection=database.connector();
			statement = connection.createStatement();
			resultSet = statement.executeQuery("select * from userlogin where id='"+id+"'");
		}
		catch(Exception e)
		{
			System.out.println("Opp's Error is in AdminDAO-getUsers()....."+e);
		}
		return resultSet;
	}
	
	public ResultSet getClouds(String id)
	{
		try
		{
			Database database=Database.getInstance();
			connection=database.connector();
			statement = connection.createStatement();
			resultSet = statement.executeQuery("select * from m_cloud where c_id='"+id+"'");
		}
		catch(Exception e)
		{
			System.out.println("Opp's Error is in AdminDAO-getClouds(String id)....."+e);
		}
		return resultSet;
	}
	
	public boolean editUser(String[] s) 
	{
		boolean flag=false;
		try
		{
			Database database=Database.getInstance();
			connection=database.connector();
			statement = connection.createStatement();
			int i=statement.executeUpdate("update userlogin set username='"+s[1]+"',address='"+s[2]+"',city='"+s[3]+"',email='"+s[4]+"',phone='"+s[5]+"' where id='"+s[0]+"'");
			if(i!=0)
			{
				flag=true;
			}
			System.out.println("Admin User Edit Profile Status : "+flag);
		}
		catch(Exception e)
		{
			System.out.println("Opp's Error is in AdminDAO-editUser()....."+e);
		}
		return flag;
	}

	


	
	public static boolean deleteKeys() 
	{
		boolean flag=false;
		try
		{
			Database database=Database.getInstance();
			connection=database.connector();
			statement = connection.createStatement();
			int i=statement.executeUpdate("truncate digkey");
			if(i!=0)
			{
				flag=true;
			}
			System.out.println("Admin delete key Status : "+flag);
		}
		catch(Exception e)
		{
			System.out.println("Opp's Error is in AdminDAO-deleteKeys()....."+e);
		}
		return flag;
	}
	
	
		
		
	
		
		
	
	public static int checkno(String s) 
	{
		int i=0;
		Boolean flag=false;
		try
		{
			Database database=Database.getInstance();
			connection=database.connector();
			statement = connection.createStatement();
			String sql="select no from cloud.group where grp_id='"+s+"'";
			System.out.println(sql);
			ResultSet rs=statement.executeQuery(sql);
			while(rs.next())
			{
				i=rs.getInt(1);
				
			}
			System.out.println("Admin Group Selcttttt number   Status : "+flag);
			flag=true;
		}
		catch(Exception e)
		{
			System.out.println("Opp's Error is in AdminDAO-select-no()....."+e);
		}
		System.out.println("value of iiiiiiiiii in admin class is"+i);
		return i;
		
	}
	
}
