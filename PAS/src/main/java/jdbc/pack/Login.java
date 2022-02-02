package jdbc.pack;

import java.sql.DriverManager;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Base64;

public class Login {

    String username;
    String password;
    String company;
	public Blob blobLogo=null;
	public byte[] byteLogo=null;
	public String base64Image=null;
    
    public boolean loginValidation(){

    	Connection con = null;

        try{

            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pasdb", "root", "rama123na");
            Statement stmt = con.createStatement();
            String login_check = "select * from REGISTRATION";
            ResultSet rs = stmt.executeQuery(login_check);

            while(rs.next()){

                if(rs.getString(6).equals(username)){

                    if(rs.getString(7).equals(password)) {
                    	
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
    
    public boolean adminLoginValidation() {
    	
    	Connection con = null;

        try{

            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pasdb", "root", "harikesh");
            Statement stmt = con.createStatement();
            String login_check = "select * from ADMINREGISTRATION";
            ResultSet rs = stmt.executeQuery(login_check);

            while(rs.next()){

                if(rs.getString(2).equals(username)){

                    if(rs.getString(3).equals(password)) {
                    	
                    	this.company = rs.getString(1);
                    	this.blobLogo = rs.getBlob(4);
                    	
                    	InputStream is = this.blobLogo.getBinaryStream();
        				ByteArrayOutputStream os = new ByteArrayOutputStream();
        				
        				byte[] buffer = new byte[4096];
        				int bytesRead = -1;
        				
        				while((bytesRead = is.read(buffer))!=-1) {
        					
        					os.write(buffer, 0, bytesRead);
        					
        				}
        				
        				this.byteLogo = os.toByteArray();
        				this.base64Image = Base64.getEncoder().encodeToString(this.byteLogo);
        				
        				is.close();
        				os.close();
        				
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