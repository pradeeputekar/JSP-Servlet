package mypack;

import java.sql.*;

public class InsertCustomer {
    public static boolean saveCustomer(Customer customer)
    {
    	int n = 0;
    	String custName = customer.getCustName();
    	String username = customer.getUsername();
    	String password = customer.getPassword();
    	int age = customer.getAge();
    	String email = customer.getEmail();
    	try
    	{
    		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");  				
    	    String dbURL = "jdbc:sqlserver://localhost:1433;databaseName=myDatabase;encrypt=false;trustServerCertificate=true";
            String user = "test";
            String pass = "test@123";
            Connection con = DriverManager.getConnection(dbURL, user, pass);
            PreparedStatement st = con.prepareStatement("insert into Customer values ('"+custName+"','"+username+"','"+password+"','"+age+"','"+email+"')");
		    n = st.executeUpdate();
    	}catch(Exception e)
    	{
    		System.out.println(e);
    	}
    	if(n == 1)
    		return true;
    	else
    		return false;
    				
    }
}
