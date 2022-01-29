package jdbc.pack;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class Login {

    String username;
    String password;

    public boolean loginValidation(){

        Connection con = null;

        try{

            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pasdb", "root", "harikesh");
            Statement stmt = con.createStatement();
            String login_check = "select * from REGISTRATION";
            ResultSet rs = stmt.executeQuery(login_check);

            while(rs.next()){

                if(rs.getString(6).equals(username)){

                    if(rs.getString(7).equals(password)) {
                    	
//                    	String insert_current_user = "insert into currentuser value('"+username+"')";
//                    	stmt.execute(insert_current_user);
                    	return true;
                    	
                    }
                       

                    else
                        return false;

                }

            }

            //username didn't match
            return false;

        }

        catch(Exception e){

            e.printStackTrace();
            return false;

        }

        finally{

            try {
                
                if(con!=null)
                    con.close();

            } catch (Exception e) {
                e.printStackTrace();
            }

        }

    }

}