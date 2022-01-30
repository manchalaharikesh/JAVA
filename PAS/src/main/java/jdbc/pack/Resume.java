package jdbc.pack;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.sql.Statement;
import java.util.Base64;
import java.sql.Blob;

public class Resume {
	
	public String firstname="", lastname="",  phone="";
	public int year;
	public String branch="", mail="";
	public InputStream avatar=null;
	public String school="";
	public float tenth;
	public String college="";
	public float twelfth;
	public String institute="";
	public float btech;
	public String project1="", project2="", project3="",  achievement1="", achievement2="", achievement3="", workexp="";
	public String ai, cpp, react, ml, java, angular, hacking, python, flutter;
	public String interests="";
	public String hk="", cc="";
	public String linkedin="", github="";
	public Blob blobAvatar=null;
	public byte[] byteAvatar=null;
	public String base64Image=null;
	
	public static Connection getConnection() {
		
        Connection con=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pasdb", "root", "harikesh");
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		
        return con;
        
	}
	
	public boolean findUser(String username, int n) {
		
		Connection con = null;
		
		con = getConnection();
		
		String find_user;
		boolean status=false;
		
		if(n==1)
			find_user = "select username from profile";
		
		else if(n==2)
			find_user = "select username from academics";
		
		else if(n==3)
			find_user = "select username from pawi";
		
		else if(n==4)
			find_user = "select username from tech";
		
		else
			find_user = "select username from socialplatforms";
			
		try {
			
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(find_user);
			
			while(rs.next()) {
            	
            	if(rs.getString(1).equals(username)) {
            		
            		status=true;
            		break;
            		
            	}
            	
            }
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			if(con!=null) {
				
				try {
					con.close();
				} catch (SQLException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
			
			}
			e.printStackTrace();
		}
        
		return status;
	
	}

	//inserting data section	
	
	public boolean insertData(String username) {
		
		boolean status1 = insertProfileData(username);
		boolean status2 = insertAcademicsData(username);
		boolean status3 = insertPawiData(username);
		boolean status4 = insertTechData(username);
		boolean status5 = insertSocialPlatformsData(username);
		
		if(status1 && status2 && status3 && status4 && status5)
			return true;
		
		else
			return false;
		
	
	}
	
	public boolean insertProfileData(String username) {
		
		Connection con=null;
		
		try {
			
			con = getConnection();
            
            boolean status = findUser(username, 1);
            
			if(status) {
				
				if(avatar.available()>0) {
					
					String insert_into_profile = "update PROFILE set firstname=?, lastname=?, phone=?, year=?, branch=?, mail=?, photo=? where username=?";
		
					PreparedStatement prstmt = con.prepareStatement(insert_into_profile);
		
					prstmt.setString(8, username);
					prstmt.setString(1, firstname);
					prstmt.setString(2, lastname);
					prstmt.setString(3, phone);
					prstmt.setInt(4, year);
					prstmt.setString(5, branch);
					prstmt.setString(6, mail);
					prstmt.setBlob(7, avatar);
					
					prstmt.executeUpdate();
				
				}
				
				else {
					
					String insert_into_profile = "update PROFILE set firstname=?, lastname=?, phone=?, year=?, branch=?, mail=? where username=?";
					
					PreparedStatement prstmt = con.prepareStatement(insert_into_profile);
		
					prstmt.setString(7, username);
					prstmt.setString(1, firstname);
					prstmt.setString(2, lastname);
					prstmt.setString(3, phone);
					prstmt.setInt(4, year);
					prstmt.setString(5, branch);
					prstmt.setString(6, mail);
					
					prstmt.executeUpdate();
					
				}
				
				con.close();
				
				return true;
			
			}
			
			else{
				
				String insert_into_profile2 = "insert into PROFILE values(?, ?, ?, ?, ?, ?, ?, ?)";
				PreparedStatement prstmt2 = con.prepareStatement(insert_into_profile2);

				prstmt2.setString(1, username);
				prstmt2.setString(2, firstname);
				prstmt2.setString(3, lastname);
				prstmt2.setString(4, phone);
				prstmt2.setInt(5, year);
				prstmt2.setString(6, branch);
				prstmt2.setString(7, mail);
				prstmt2.setBlob(8, avatar);
				
				prstmt2.executeUpdate();
				
				con.close();
				
				return true;
				
			}	
			
		} catch(Exception e) {
			e.printStackTrace();
			return false;
		}
		finally {
			
			if (con!=null) {
				
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
			
		}
		
	}
	
	public boolean insertAcademicsData(String username) {
		
		Connection con=null;
		
		try {
			
			con = getConnection();
            
            boolean status = findUser(username, 2);
            
			if(status) {
				
				String insert_into_academics = "update academics set school=?, tenth=?, college=?, twelfth=?, institute=?, btech=? where username=?";

				PreparedStatement prstmt = con.prepareStatement(insert_into_academics);

				prstmt.setString(7, username);
				prstmt.setString(1, school);
				prstmt.setFloat(2, tenth);
				prstmt.setString(3, college);
				prstmt.setFloat(4, twelfth);
				prstmt.setString(5, institute);
				prstmt.setFloat(6, btech);

				prstmt.executeUpdate();

				con.close();

				return true;

			}
			
			else{
				
				String insert_into_academics2 = "insert into academics values(?, ?, ?, ?, ?, ?, ?)";
				PreparedStatement prstmt2 = con.prepareStatement(insert_into_academics2);

				prstmt2.setString(1, username);
				prstmt2.setString(2, school);
				prstmt2.setFloat(3, tenth);
				prstmt2.setString(4, college);
				prstmt2.setFloat(5, twelfth);
				prstmt2.setString(6, institute);
				prstmt2.setFloat(7, btech);
				
				prstmt2.executeUpdate();
				
				con.close();
				
				return true;
				
			}	
			
		} catch(Exception e) {
			e.printStackTrace();
			return false;
		}
		finally {
			
			if (con!=null) {
				
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
			
		}
		
	}
	
	public boolean insertPawiData(String username) {
			
		Connection con=null;
		
		try {
			
			con = getConnection();
            
            boolean status = findUser(username, 3);
            
			if(status) {
				
				String insert_into_pawi = "update pawi set project1=?, project2=?, project3=?, achievement1=?, achievement2=?, achievement3=?, workexp=? where username=?";

				PreparedStatement prstmt = con.prepareStatement(insert_into_pawi);

				prstmt.setString(8, username);
				prstmt.setString(1, project1);
				prstmt.setString(2, project2);
				prstmt.setString(3, project3);
				prstmt.setString(4, achievement1);
				prstmt.setString(5, achievement2);
				prstmt.setString(6, achievement3);
				prstmt.setString(7, workexp);

				prstmt.executeUpdate();

				con.close();

				return true;

			}
			
			else{
				
				String insert_into_pawi2 = "insert into pawi values(?, ?, ?, ?, ?, ?, ?, ?)";
				PreparedStatement prstmt2 = con.prepareStatement(insert_into_pawi2);

				prstmt2.setString(1, username);
				prstmt2.setString(2, project1);
				prstmt2.setString(3, project2);
				prstmt2.setString(4, project3);
				prstmt2.setString(5, achievement1);
				prstmt2.setString(6, achievement2);
				prstmt2.setString(7, achievement3);
				prstmt2.setString(8, workexp);
				
				prstmt2.executeUpdate();
				
				con.close();
				
				return true;
				
			}	
			
		} catch(Exception e) {
			e.printStackTrace();
			return false;
		}
		finally {
			
			if (con!=null) {
				
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
			
		}
		
	}
	
	public boolean insertTechData(String username) {
		
		Connection con=null;
		
		try {
			
			con = getConnection();
            
            boolean status = findUser(username, 4);
            
			if(status) {
				
				String insert_into_tech = "update tech set ai=?, cpp=?, react=?, ml=?, java=?, angular=?, hacking=?, python=?, flutter=?, interests=? where username=?";

				PreparedStatement prstmt = con.prepareStatement(insert_into_tech);

				prstmt.setString(11, username);
				prstmt.setString(1, ai);
				prstmt.setString(2, cpp);
				prstmt.setString(3, react);
				prstmt.setString(4, ml);
				prstmt.setString(5, java);
				prstmt.setString(6, angular);
				prstmt.setString(7, hacking);
				prstmt.setString(8, python);
				prstmt.setString(9, flutter);
				prstmt.setString(10, interests);

				prstmt.executeUpdate();

				con.close();

				return true;

			}
			
			else{
				
				String insert_into_tech2 = "insert into tech values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
				PreparedStatement prstmt2 = con.prepareStatement(insert_into_tech2);

				prstmt2.setString(1, username);
				prstmt2.setString(2, ai);
				prstmt2.setString(3, cpp);
				prstmt2.setString(4, react);
				prstmt2.setString(5, ml);
				prstmt2.setString(6, java);
				prstmt2.setString(7, angular);
				prstmt2.setString(8, hacking);
				prstmt2.setString(9, python);
				prstmt2.setString(10, flutter);
				prstmt2.setString(11, interests);
				
				prstmt2.executeUpdate();
				
				con.close();
				
				return true;
				
			}	
			
		} catch(Exception e) {
			e.printStackTrace();
			return false;
		}
		finally {
			
			if (con!=null) {
				
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
			
		}
		
	}
	
	public boolean insertSocialPlatformsData(String username) {
		
		Connection con=null;
		
		try {
			
			con = getConnection();
            
            boolean status = findUser(username, 5);
            
			if(status) {
				
				String insert_into_sp = "update socialplatforms set hackerrank=?, codechef=?, linkedin=?, github=? where username=?";

				PreparedStatement prstmt = con.prepareStatement(insert_into_sp);

				prstmt.setString(5, username);
				prstmt.setString(1, hk);
				prstmt.setString(2, cc);
				prstmt.setString(3, linkedin);
				prstmt.setString(4, github);

				prstmt.executeUpdate();

				con.close();

				return true;

			}
			
			else{
				
				String insert_into_sp2 = "insert into socialplatforms values(?, ?, ?, ?, ?)";
				PreparedStatement prstmt2 = con.prepareStatement(insert_into_sp2);

				prstmt2.setString(1, username);
				prstmt2.setString(2, hk);
				prstmt2.setString(3, cc);
				prstmt2.setString(4, linkedin);
				prstmt2.setString(5, github);
				
				prstmt2.executeUpdate();
				
				con.close();
				
				return true;
				
			}	
			
		} catch(Exception e) {
			e.printStackTrace();
			return false;
		}
		finally {
			
			if (con!=null) {
				
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
			
		}
		
	}
	
	//getting data section	
	
	public Resume getData(String username) {
		
		Resume resumeObj=new Resume();
		
		getProfileData(username, resumeObj);
		getAcademicsData(username, resumeObj);
		getPawiData(username, resumeObj);
		getTechData(username, resumeObj);
		getSocialPlatformsData(username, resumeObj);
		
		return resumeObj;
	
	}
	
	public void getProfileData(String username, Resume resumeObj) {
		
		Connection con=null;
		try {
			
			con = getConnection();
			String fetch_user_data = "select firstname, lastname, phone, year, branch, mail, photo from PROFILE where username= ?";
			
			PreparedStatement prstmt = con.prepareStatement(fetch_user_data);
			prstmt.setString(1, username);
			
			ResultSet rs = prstmt.executeQuery();
			
			while(rs.next()) {
				
				resumeObj.firstname = rs.getString("firstname");
				resumeObj.lastname = rs.getString("lastname");
				resumeObj.phone = rs.getString("phone");
				resumeObj.year = rs.getInt("year");
				resumeObj.branch = rs.getString("branch");
				resumeObj.mail = rs.getString("mail");
				resumeObj.blobAvatar = rs.getBlob("photo");
				
				InputStream is = resumeObj.blobAvatar.getBinaryStream();
				ByteArrayOutputStream os = new ByteArrayOutputStream();
				
				byte[] buffer = new byte[4096];
				int bytesRead = -1;
				
				while((bytesRead = is.read(buffer))!=-1) {
					
					os.write(buffer, 0, bytesRead);
					
				}
				
				resumeObj.byteAvatar = os.toByteArray();
				resumeObj.base64Image = Base64.getEncoder().encodeToString(resumeObj.byteAvatar);
				
				is.close();
				os.close();
				
			}
			
			con.close();
		
		} catch (SQLException e) {
			e.printStackTrace();
		}catch(Exception e) {
			e.printStackTrace();
		}
		finally {
			
			if (con!=null) {
				
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
			
		}
		
	}
	
	public void getAcademicsData(String username, Resume resumeObj) {
		
		Connection con=null;
		try {
			
			con = getConnection();
			String fetch_user_data = "select school, tenth, college, twelfth, institute, btech from academics where username= ?";
			
			PreparedStatement prstmt = con.prepareStatement(fetch_user_data);
			prstmt.setString(1, username);
			
			ResultSet rs = prstmt.executeQuery();
			
			while(rs.next()) {
				
				resumeObj.school = rs.getString("school");
				resumeObj.tenth = rs.getFloat("tenth");
				resumeObj.college = rs.getString("college");
				resumeObj.twelfth = rs.getFloat("twelfth");
				resumeObj.institute = rs.getString("institute");
				resumeObj.btech = rs.getFloat("btech");
				
			}
			
			con.close();
		
		} catch (SQLException e) {
			e.printStackTrace();
		}catch(Exception e) {
			e.printStackTrace();
		}
		finally {
			
			if (con!=null) {
				
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
			
		}
		
	}
	
	public void getPawiData(String username, Resume resumeObj) {
		
		Connection con=null;
		try {
			
			con = getConnection();
			String fetch_user_data = "select project1, project2, project3, achievement1, achievement2, achievement3, workexp from pawi where username= ?";
			
			PreparedStatement prstmt = con.prepareStatement(fetch_user_data);
			prstmt.setString(1, username);
			
			ResultSet rs = prstmt.executeQuery();
			
			while(rs.next()) {
				
				resumeObj.project1 = rs.getString("project1");
				resumeObj.project2 = rs.getString("project2");
				resumeObj.project3 = rs.getString("project3");
				resumeObj.achievement1 = rs.getString("achievement1");
				resumeObj.achievement2 = rs.getString("achievement2");
				resumeObj.achievement3 = rs.getString("achievement3");
				resumeObj.workexp = rs.getString("workexp");
				
			}
			
			con.close();
		
		} catch (SQLException e) {
			e.printStackTrace();
		}catch(Exception e) {
			e.printStackTrace();
		}
		finally {
			
			if (con!=null) {
				
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
			
		}
		
	}
	
	public void getTechData(String username, Resume resumeObj) {
		
		Connection con=null;
		try {
			
			con = getConnection();
			String fetch_user_data = "select ai, cpp, react, ml, java, angular, hacking, python, flutter, interests from tech where username= ?";
			
			PreparedStatement prstmt = con.prepareStatement(fetch_user_data);
			prstmt.setString(1, username);
			
			ResultSet rs = prstmt.executeQuery();
			
			while(rs.next()) {
				
				resumeObj.ai = rs.getString("ai");
				resumeObj.cpp = rs.getString("cpp");
				resumeObj.react = rs.getString("react");
				resumeObj.ml = rs.getString("ml");
				resumeObj.java = rs.getString("java");
				resumeObj.angular = rs.getString("angular");
				resumeObj.hacking = rs.getString("hacking");
				resumeObj.python = rs.getString("python");
				resumeObj.flutter = rs.getString("flutter");
				resumeObj.interests = rs.getString("interests");
				
			}
			
			con.close();
		
		} catch (SQLException e) {
			e.printStackTrace();
		}catch(Exception e) {
			e.printStackTrace();
		}
		finally {
			
			if (con!=null) {
				
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
			
		}
		
	}
	
	public void getSocialPlatformsData(String username, Resume resumeObj) {
		
		Connection con=null;
		try {
			
			con = getConnection();
			String fetch_user_data = "select hackerrank, codechef, linkedin, github from socialplatforms where username= ?";
			
			PreparedStatement prstmt = con.prepareStatement(fetch_user_data);
			prstmt.setString(1, username);
			
			ResultSet rs = prstmt.executeQuery();
			
			while(rs.next()) {
				
				resumeObj.hk = rs.getString("hackerrank");
				resumeObj.cc = rs.getString("codechef");
				resumeObj.linkedin = rs.getString("linkedin");
				resumeObj.github = rs.getString("github");
				
			}
			
			con.close();
		
		} catch (SQLException e) {
			e.printStackTrace();
		}catch(Exception e) {
			e.printStackTrace();
		}
		finally {
			
			if (con!=null) {
				
				try {
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
			
		}
		
	}

}