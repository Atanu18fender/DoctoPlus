package com.mvc.dao1;
 
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;



import com.mvc.bean1.UpdateDocDetailsBean1;
import com.mvc.util1.*;

public class UpdateDocDetailsDao1 { 
    public String updateDoctorInfo(UpdateDocDetailsBean1 saveChangesBean)
    {
    	
		String DocId = saveChangesBean.getDocID();
        String Specility = saveChangesBean.getSpeciality();
        String Address = saveChangesBean.getAddress();
        String Pincode = saveChangesBean.getPincode();
        int Fees = saveChangesBean.getFees();
        String Timing = saveChangesBean.getTiming();
        String Descripton = saveChangesBean.getDescription();
        String Days=saveChangesBean.getDays();
        
        
        String SPsql1="";
        Connection con = null;
//        PreparedStatement preparedStatement = null;         
        try
        {                        
        	String SPsql = "EXEC SP_DM_UpdateDocDetailsByID ?,?,?,?,?,?,?,?";   // for stored proc taking 3 parameters
        	con = DBConnection1.createConnection();   // java.sql.Connection
        	PreparedStatement ps = con.prepareStatement(SPsql);
        	ps.setEscapeProcessing(true);
        	ps.setQueryTimeout(2000);
        	ps.setString(1, DocId);
        	ps.setString(2, Specility);
        	ps.setString(3, Address);
        	ps.setString(4, Pincode);
        	ps.setInt(5, Fees);
        	ps.setString(6, Timing);
        	ps.setString(7, Descripton);
        	ps.setString(8, Days);

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