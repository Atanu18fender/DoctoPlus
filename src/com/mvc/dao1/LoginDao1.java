package com.mvc.dao1;
 
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mvc.bean1.LoginBean1;
import com.mvc.util1.CryptoUtil;
import com.mvc.util1.DBConnection1;
 
public class LoginDao1 {
 
public String authenticateUser(LoginBean1 loginBean)
{
	CryptoUtil cp=new CryptoUtil();
	
    String UserName = loginBean.getUserName();
    String Password = loginBean.getPassword();
    //String Role=loginBean.getRole();
 
    Connection con = null; // to create connection with database
    Statement statement = null; // query is written as statement
    ResultSet resultSet = null; // what we get as result after exec. the query
 
    String userName= "";
    String password= "";
    String ID="";
    String roleDB= "";
 
    String salt="";
 
    try
    {
    	con = DBConnection1.createConnection();
        statement = con.createStatement();
        resultSet = statement.executeQuery("Exec SP_DM_Login");
 
        while(resultSet.next())
        {
        	userName = resultSet.getString("UserName");
        	password = resultSet.getString("Password");
        	ID=resultSet.getString("ID");
            roleDB = resultSet.getString("Role");
            salt= resultSet.getString("Salt");
            if(UserName.equals(userName)) {
	            byte[] saltArrray =salt.getBytes();
	            String res=cp.getSecurePassword(Password, saltArrray);
	            if(res.equals(password)) {
	            	return ID.concat(" ").concat(roleDB);
	            }
            }
//		    else if(UserName.equals(userNameDB) && Password.equals(passwordDB) &&
//		    roleDB.equals("Student")) return "Student";
          /*else
		 * if(userName.equals(userNameDB) && password.equals(passwordDB) &&
		 * roleDB.equals("User")) return "User_Role";
		 */
        }
    }
    catch(SQLException e)
    {
        e.printStackTrace();
    }
    return "User credentials Invalid";
}
}