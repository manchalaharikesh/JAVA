package jdbc.pack;

import java.sql.DriverManager;
import java.sql.Connection;

public class JdbcConnector {
 
    public Connection establishConnection(){

        try{

            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pasdb", "root", "harikesh");
            return con;

        }

        catch(Exception e){

            e.printStackTrace();
            return null;

        }

    }
    
}