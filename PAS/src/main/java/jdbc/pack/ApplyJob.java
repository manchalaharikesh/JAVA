package jdbc.pack;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class ApplyJob {

	@SuppressWarnings("rawtypes")
	public ArrayList getAvailableJobs(String uname) throws Exception {
		ArrayList<String> companies = new ArrayList<String>();
		Class.forName("com.mysql.cj.jdbc.Driver");
		try {
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pasdb", "root", "rama123na");
			Statement stmt = con.createStatement();
			String sql1 = "select btech from academics where username = '" + uname + "'";
			float userCGPA = 0;
			ResultSet rs1 = stmt.executeQuery(sql1);
			if (rs1.next()) {
				userCGPA = rs1.getFloat("btech");
			}
			String sql = "select company from eligibility where " + " cgpa <= " + userCGPA;
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				companies.add(rs.getString(1));
			}

		} catch (Exception e) {
			System.out.println(e);
		}

		return companies;
	}
}
