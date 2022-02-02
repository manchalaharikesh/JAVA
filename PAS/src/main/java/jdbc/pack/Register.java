package jdbc.pack;

import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;

public class Register{

    public String first_name;
    public String last_name;
    public int age;
    public String roll;
    public String email;
    public String username;
    public String password;

    public boolean ensureRegistration(){

        Connection con = null;
        boolean status=false;

        try{

            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pasdb", "root", "rama123na");
            Statement stmt = con.createStatement();

            String create_registration_table = (
                                "create table if not exists REGISTRATION(firstname varchar(30)," + 
                                "lastname varchar(30),"
                                +"roll varchar(10),"
                                +"age tinyint,"
                                +"email varchar(30),"
                                +"username varchar(20),"
                                +"password varchar(20)"
                                +")");

            stmt.executeUpdate(create_registration_table);
            String insert_registration_data = ("insert into REGISTRATION values(?, ?, ?, ?, ?, ?, ?)");
            PreparedStatement prestmt = con.prepareStatement(insert_registration_data);

            prestmt.setString(1, first_name);
            prestmt.setString(2, last_name);
            prestmt.setString(3, roll);
            prestmt.setInt(4, age);
            prestmt.setString(5, email);
            prestmt.setString(6, username);
            prestmt.setString(7, password);

            prestmt.executeUpdate();
            status=true;

            return status;
      
        }
        catch(Exception e){

            e.printStackTrace();
            return status;

        }

        finally{

            try{

                if(con!=null)
                    con.close();

            }

            catch(Exception e){

                e.printStackTrace();

            }

        }

    }

}