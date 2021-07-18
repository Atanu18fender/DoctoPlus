package com.mvc.dao1;
 
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;



import com.mvc.bean1.SaveChangesBean1;
import com.mvc.util1.*;

public class SaveChangesDao1 { 
    public String updateUserInfo(SaveChangesBean1 saveChangesBean)
    {
    	
		String ID = saveChangesBean.getID();
        String FirstName = saveChangesBean.getFirstName();
        String LastName = saveChangesBean.getLastName();
        String Email = saveChangesBean.getEmail();
        String Phone = saveChangesBean.getPhone();
        
        String SPsql1="";
        Connection con = null;
//        PreparedStatement preparedStatement = null;         
        try
        {                        
        	String SPsql = "EXEC SP_DM_UpdateUserByID ?,?,?,?,?";   // for stored proc taking 3 parameters
        	con = DBConnection1.createConnection();   // java.sql.Connection
        	PreparedStatement ps = con.prepareStatement(SPsql);
        	ps.setEscapeProcessing(true);
        	ps.setQueryTimeout(2000);
        	ps.setString(1, ID);
        	ps.setString(2, FirstName);
        	ps.setString(3, LastName);
        	ps.setString(4, Email);
        	ps.setString(5, Phone);

        	int i= ps.executeUpdate();       	
            
            if (i!=0)  //Just to ensure data has been inserted into the database
          		return "SUCCESS"; 
          	  
        }
        catch(SQLException e)
        {
           e.printStackTrace();
        }       
        return "Oops.. Something went wrong there..!";  // On failure, send a message from here.
    }
}