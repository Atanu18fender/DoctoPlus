package com.mvc.util1;
 
import java.sql.Connection;
import java.sql.DriverManager;
 
public class DBConnection1 {
 public static Connection createConnection()
 {
     Connection con = null;
     String url = "jdbc:sqlserver://127.0.0.1;databaseName=DoctorManagementDB"; //MySQL URL followed by the database name
     String username = "sa"; //MySQL username
     String password = "Sysadm123"; //MySQL password
     System.out.println("In DBConnection.java class ");
      
     try
     {
         try
         {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); //loading MySQL drivers. This differs for database servers 
         } 
         catch (ClassNotFoundException e)
         {
            e.printStackTrace();
         }       
         con = DriverManager.getConnection(url, username, password); //attempting to connect to MySQL database
         System.out.println("Printing connection object "+con);
     } 
     catch (Exception e) 
     {
        e.printStackTrace();
     }   
     return con; 
 }
}