package com.mvc.dao1;
 
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.mvc.bean1.BookingBean1;
import com.mvc.util1.*;

public class BookingDao1 { 
    public String bookDoc(BookingBean1 bookingBean)
    {
    	String DoctorID=bookingBean.getDoctorID();
   	    String PatientID=bookingBean.getPatientID();
        String FullName =bookingBean.getFullName() ;
        String Sex =bookingBean.getSex() ;
        int Age =Integer.parseInt(bookingBean.getAge());
        String Email =bookingBean.getEmail();
        String Phone =bookingBean.getPhone() ;
        String Description =bookingBean.getDescription();
        String Date=bookingBean.getDate();
        String Time=bookingBean.getTime();
        
        Connection con = null;
//        PreparedStatement preparedStatement = null;         
        try
        {                        
        	String SPsql = "EXEC SP_DM_Booking ?,?,?,?,?,?,?,?,?,?";   // for stored proc taking 3 parameters
        	con = DBConnection1.createConnection();   // java.sql.Connection
        	PreparedStatement ps = con.prepareStatement(SPsql);
        	ps.setEscapeProcessing(true);
        	ps.setQueryTimeout(2000);
        	ps.setString(1, DoctorID);
        	ps.setString(2, PatientID);
        	ps.setString(3, FullName);
        	ps.setString(4, Sex);
        	ps.setInt(5, Age);
        	ps.setString(6, Email);
        	ps.setString(7, Phone);
        	ps.setString(8, Description);
        	ps.setString(9, Date);
        	ps.setString(10, Time);
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