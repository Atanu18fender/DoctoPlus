package com.mvc.dao1;
 
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.mvc.bean1.SignUpBean1;
import com.mvc.util1.*;

public class SignUpDao1 { 
    public String addUser(SignUpBean1 signUpBean)
    {
	
        String UserName = signUpBean.getUserName();
        String PassWord = signUpBean.getPassword();
        
        
        CryptoUtil cp=new CryptoUtil();
        byte[] salt = null;
		try {
			salt = cp.getSalt();
		} catch (NoSuchAlgorithmException | NoSuchProviderException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
        String DBSalt=new String(salt);
        String securePassword = cp.getSecurePassword(PassWord,salt);
        
        String role="user";
        String SPsql1="";
        Connection con = null;
//        PreparedStatement preparedStatement = null;         
        try
        {                        
        	String SPsql = "EXEC SP_DM_AddUser ?,?,?,?";   // for stored proc taking 3 parameters
        	con = DBConnection1.createConnection();   // java.sql.Connection
        	PreparedStatement ps = con.prepareStatement(SPsql);
        	ps.setEscapeProcessing(true);
        	ps.setQueryTimeout(2000);
        	ps.setString(1, UserName);
        	ps.setString(2, securePassword);
        	ps.setString(3, role);
        	ps.setString(4, DBSalt);
        	int i= ps.executeUpdate();       	
            
            if (i!=0)  //Just to ensure data has been inserted into the database
              SPsql1="EXEC SP_DM_Add_User_ID";
               // java.sql.Connection
        	  PreparedStatement ps1 = con.prepareStatement(SPsql1);
        	  ps1.setEscapeProcessing(true);
          	  ps1.setQueryTimeout(2000);
          	  int j= ps1.executeUpdate();
          	  if(j!=0) {
          		return "SUCCESS"; 
          	  }
        }
        catch(SQLException e)
        {
           e.printStackTrace();
        }       
        return "Oops.. Something went wrong there..!";  // On failure, send a message from here.
    }
}