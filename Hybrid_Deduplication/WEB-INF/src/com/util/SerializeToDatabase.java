package com.util;


import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;

import com.DAOFactory.DAO;
import com.database.Database;
import com.*;


 
public class SerializeToDatabase
{
  
  public static Connection connection = null;
  static Database database=Database.getInstance();
  
  private static final String SQL_SERIALIZE_OBJECT = "insert into digkey values(?,?,?)";
  private static final String SQL_DESERIALIZE_OBJECT = "SELECT pubkey FROM digkey";
  private static final String SQL_DESERIALIZE_OBJECT1 = "SELECT pvtkey FROM digkey";
  private static final String SQL_DESERIALIZE_OBJECT2 = "SELECT des_secrete_key FROM digkey";
  
 
  public static boolean serializeJavaObjectToDB(int Rank,Object pubkey,Object pvtkey) throws SQLException 
  {
     
	connection = database.connector();
    
	PreparedStatement pstmt = connection.prepareStatement(SQL_SERIALIZE_OBJECT);
 
    // just setting the class name
   
	pstmt.setObject(1,Rank);
    pstmt.setObject(2,pubkey);
    pstmt.setObject(3,pvtkey);
    pstmt.executeUpdate();
    
  
  
    pstmt.close();
   
	return true;
    
  }
 
  /**
   * To de-serialize a java object from database
   *
   * @throws SQLException
   * @throws IOException
   * @throws ClassNotFoundException
   */
  public static Object getPublicKey(String rank) throws SQLException, IOException,ClassNotFoundException 
  {
	  Database database=Database.getInstance();
	connection = database.connector();
	Statement pstmt = connection.createStatement();
    ResultSet rs = pstmt.executeQuery("SELECT pubkey FROM digkey where Rank = '"+rank+"'");
    rs.next();
 
    // Object object = rs.getObject(1);
 
    byte[] buf = rs.getBytes(1);
    ObjectInputStream objectIn = null;
    if (buf != null)
      objectIn = new ObjectInputStream(new ByteArrayInputStream(buf));
    Object deSerializedObject = objectIn.readObject();
    rs.close();
    pstmt.close();
    System.out.println("\n\n ***** De-Serialization Information *****\n");
    System.out.println("Java object de-serialized from database. Object: "+ deSerializedObject + " Classname: "+ deSerializedObject.getClass().getName()+"\n\n");
    return deSerializedObject;
  }
  
  public static Object getPrivateKey(String rank) throws SQLException, IOException,ClassNotFoundException 
  {
    
	connection = database.connector();
	Statement pstmt = connection.createStatement();
    ResultSet rs = pstmt.executeQuery("SELECT pvtkey FROM digkey where Rank = '"+rank+"'");
    rs.next();
 
    // Object object = rs.getObject(1);
 
    byte[] buf = rs.getBytes(1);
    ObjectInputStream objectIn = null;
    if (buf != null)
      objectIn = new ObjectInputStream(new ByteArrayInputStream(buf));
 
    Object deSerializedObject = objectIn.readObject();
 
    rs.close();
    pstmt.close();
    //System.out.println("\n\n ***** De-Serialization Information *****\n");
    //System.out.println("Java object de-serialized from database. Object: "+ deSerializedObject + " Classname: "+ deSerializedObject.getClass().getName()+"\n\n");
    return deSerializedObject;
  }
  
  /* Getting DES Secrete Key From DB */
  

 
  /**
   * Serialization and de-serialization of java object from mysql
   *
   * @throws ClassNotFoundException
   * @throws SQLException
   * @throws IOException
 * @throws NoSuchAlgorithmException 
   */
  /* Testing The Algorithm */
  public static void main(String args[]) throws ClassNotFoundException,SQLException, IOException, NoSuchAlgorithmException 
  {
        
		String userName = "Rajat";
 
	    // a sample java object to serialize
	   
	    SecretKey key = KeyGenerator.getInstance("RSA").generateKey();
	    // serializing java object to mysql database
	  //  serializeJavaObjectToDB(userName, key);
	 
	    // de-serializing java object from mysql database
	    // Key objFromDatabase = (Key) (deSerializeJavaObjectFromDB(connection,userName));
	   // SecretKey objFromDatabase = (SecretKey)(getPublicKey());
	    connection.close();
   }
  
  
      
}
