package jdbc.pack;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Applicants {

	public String username;
	public String company;
	public int status;
	ArrayList<String> applicantsUsernames = new ArrayList<String>(); 
	ArrayList<Integer> applicantsStatus = new ArrayList<Integer>(); 
	
	public Connection getConnection() {
		
		Connection con=null;
		
		try {
		
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pasdb", "root", "harikesh");

		} catch (Exception e) {

			e.printStackTrace();
		}
		
		return con;
		
	}
	
	public boolean getApplicantsData() {
		
		Connection con = getConnection();
		
		String fetch_applicants = "select * from applicants where company=? and status=?";
		
		try {
		
			PreparedStatement pdstmt = con.prepareStatement(fetch_applicants);
			pdstmt.setString(1, this.company);
			pdstmt.setInt(2, 1);
			
			ResultSet rs = pdstmt.executeQuery();
			
			while(rs.next()) {
				
				this.applicantsUsernames.add(rs.getString(1));
				this.applicantsStatus.add(rs.getInt(3));
				
			}
			
			return true;
		
		} catch (SQLException e) {
			
			e.printStackTrace();
			return false;
		
		}
		
	}
	
	public boolean reject(String username) {
		
		Connection con = getConnection();
		String update_status = "update applicants set status=? where username=?";
		
		try {
			
			PreparedStatement pdstmt = con.prepareStatement(update_status);
			
			pdstmt.setInt(1, -1);
			pdstmt.setString(2, username);
			
			pdstmt.executeUpdate();
			
			con.close();
			
			return true;
		
		} catch (SQLException e) {
		
			e.printStackTrace();
			return false;
			
		}	
			
	}
	
	public boolean shortlist(String username) {
		
		Connection con = getConnection();
		String update_status = "update applicants set status=? where username=?";
		
		try {
			
			PreparedStatement pdstmt = con.prepareStatement(update_status);
			
			pdstmt.setInt(1, 2);
			pdstmt.setString(2, username);
			
			pdstmt.executeUpdate();
			
			con.close();
			
			return true;
		
		} catch (SQLException e) {
		
			e.printStackTrace();
			return false;
			
		}	
		
	}
	
	public boolean shortlistApplicants() {
		
		Connection con = getConnection();
		String fetch_applicants = "select * from applicants where company=? and status=?";
		
		try {
		
			PreparedStatement pdstmt = con.prepareStatement(fetch_applicants);
			pdstmt.setString(1, this.company);
			pdstmt.setInt(2, 2);
			
			ResultSet rs = pdstmt.executeQuery();
			
			while(rs.next()) {
				
				this.applicantsUsernames.add(rs.getString(1));
				this.applicantsStatus.add(rs.getInt(3));
				
			}
			
			return true;
		
		} catch (SQLException e) {
			
			e.printStackTrace();
			return false;
		
		}
		
		
		
	}
	
}