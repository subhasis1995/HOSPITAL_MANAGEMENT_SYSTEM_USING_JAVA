package Project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;

public class ConnectionProvider {
    public static Connection getCon() {
    	try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital_2", "root", "12369874");
            
            return con;
        } catch (Exception e) {
            System.out.print(e);
            return null;
        }
    	
    }
}
