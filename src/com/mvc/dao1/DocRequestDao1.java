package com.mvc.dao1;
 
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.mvc.bean1.DocRequestBean1;
import com.mvc.util1.*;

public class DocRequestDao1 { 
    public String grantRequest(DocRequestBean1 docRequestBean)
    {
	    String ID=docRequestBean.getID();
	    String UserName = docRequestBean.getUserName();
		String FirstName= docRequestBean.getFirstName();
		String LastName = docRequestBean.getLastName();
		String Registration=docRequestBean.getRegistration();
		String RegDate=docRequestBean.getRegDate();
		String UPRN=docRequestBean.getUPRN();
		String StateCouncil=docRequestBean.getStateCouncil();
        
        Connection con = null;
//        PreparedStatement preparedStatement = null;         
        try
        {                        
        	String SPsql = "EXEC SP_DM_reqDoc ?,?,?,?,?,?,?,?";   // for stored proc taking 3 parameters
        	con = DBConnection1.createConnection();   // java.sql.Connection
        	PreparedStatement ps = con.prepareStatement(SPsql);
        	ps.setEscapeProcessing(true);
        	ps.setQueryTimeout(2000);
        	ps.setString(1, ID);
        	ps.setString(2, UserName);
        	ps.setString(3, FirstName);
        	ps.setString(4, LastName);
        	ps.setString(5, Registration);
        	ps.setString(6, RegDate);
        	ps.setString(7, UPRN);
        	ps.setString(8, StateCouncil);
        	int i= ps.executeUpdate();       	
	  	    if(i!=0) {
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