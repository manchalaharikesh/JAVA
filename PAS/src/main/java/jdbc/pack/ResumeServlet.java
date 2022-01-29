package jdbc.pack;

import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.servlet.RequestDispatcher;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;

/**
 * Servlet implementation class ResumeServlet
 */
@WebServlet("/ResumeServlet")
@MultipartConfig
public class ResumeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	Resume resume;
	String username;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String action = request.getServletPath();
		username = (String) request.getSession().getAttribute("currentuser");		
		switch(action) {
		
			case "/ResumePage":
				getResumePage(request, response);
				break;
				
			case "/EditResumePage":
				getEditResumePage(request, response);
				break;
				
			case "/SaveEditResumePage":
				saveEditResumePage(request, response);
				break;
				
			case "/CancelEditResumePage":
				cancelEditResumePage(request, response);
				break;
		
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	public void getResumePage(HttpServletRequest request, HttpServletResponse response) {
		
		Resume resume = new Resume();
		Resume resumeObj = resume.getData(username);
		request.setAttribute("resumeObj", resumeObj);
		
		if(resumeObj!=null) {
			
			request.setAttribute("firstname", resumeObj.firstname);
			request.setAttribute("lastname", resumeObj.lastname);
			request.setAttribute("phone", resumeObj.phone);
			request.setAttribute("year", resumeObj.year);
			request.setAttribute("branch", resumeObj.branch);
			request.setAttribute("mail", resumeObj.mail);
			
			request.setAttribute("school", resumeObj.school);
			request.setAttribute("tenth", resumeObj.tenth);
			request.setAttribute("college", resumeObj.college);
			request.setAttribute("twelfth", resumeObj.twelfth);
			request.setAttribute("institute", resumeObj.institute);
			request.setAttribute("btech", resumeObj.btech);
			
			request.setAttribute("project1", resumeObj.project1);
			request.setAttribute("project2", resumeObj.project2);
			request.setAttribute("project3", resumeObj.project3);
			request.setAttribute("achievement1", resumeObj.achievement1);
			request.setAttribute("achievement2", resumeObj.achievement2);
			request.setAttribute("achievement3", resumeObj.achievement3);
			request.setAttribute("workexp", resumeObj.workexp);
			
			request.setAttribute("ai", resumeObj.ai);
			request.setAttribute("cpp", resumeObj.cpp);
			request.setAttribute("react", resumeObj.react);
			request.setAttribute("ml", resumeObj.ml);
			request.setAttribute("java", resumeObj.java);
			request.setAttribute("angular", resumeObj.angular);
			request.setAttribute("hacking", resumeObj.hacking);
			request.setAttribute("python", resumeObj.python);
			request.setAttribute("flutter", resumeObj.flutter);
			request.setAttribute("interests", resumeObj.interests);
			
			request.setAttribute("hk", resumeObj.hk);
			request.setAttribute("cc", resumeObj.cc);
			request.setAttribute("linkedin", resumeObj.linkedin);
			request.setAttribute("github", resumeObj.github);
			
			
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("/resume.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	public void getEditResumePage(HttpServletRequest request, HttpServletResponse response) {
		
		Resume resume = new Resume();
		Resume resumeObj = resume.getData(username);
		request.setAttribute("resumeObj", resumeObj);
		
		if(resumeObj!=null) {
			
			request.setAttribute("firstname", resumeObj.firstname);
			request.setAttribute("lastname", resumeObj.lastname);
			request.setAttribute("phone", resumeObj.phone);
			request.setAttribute("year", resumeObj.year);
			request.setAttribute("branch", resumeObj.branch);
			request.setAttribute("mail", resumeObj.mail);
			
			request.setAttribute("school", resumeObj.school);
			request.setAttribute("tenth", resumeObj.tenth);
			request.setAttribute("college", resumeObj.college);
			request.setAttribute("twelfth", resumeObj.twelfth);
			request.setAttribute("institute", resumeObj.institute);
			request.setAttribute("btech", resumeObj.btech);
			
			request.setAttribute("project1", resumeObj.project1);
			request.setAttribute("project2", resumeObj.project2);
			request.setAttribute("project3", resumeObj.project3);
			request.setAttribute("achievement1", resumeObj.achievement1);
			request.setAttribute("achievement2", resumeObj.achievement2);
			request.setAttribute("achievement3", resumeObj.achievement3);
			request.setAttribute("workexp", resumeObj.workexp);
			
			request.setAttribute("ai", resumeObj.ai);
			request.setAttribute("cpp", resumeObj.cpp);
			request.setAttribute("react", resumeObj.react);
			request.setAttribute("ml", resumeObj.ml);
			request.setAttribute("java", resumeObj.java);
			request.setAttribute("angular", resumeObj.angular);
			request.setAttribute("hacking", resumeObj.hacking);
			request.setAttribute("python", resumeObj.python);
			request.setAttribute("flutter", resumeObj.flutter);
			request.setAttribute("interests", resumeObj.interests);
			
			request.setAttribute("hk", resumeObj.hk);
			request.setAttribute("cc", resumeObj.cc);
			request.setAttribute("linkedin", resumeObj.linkedin);
			request.setAttribute("github", resumeObj.github);
			
			
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("/editResume.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	public void cancelEditResumePage(HttpServletRequest request, HttpServletResponse response) {
		
		getResumePage(request, response);
		
	}
	
	public void saveEditResumePage(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		Resume resumeObj = new Resume();
		resumeObj.firstname = request.getParameter("firstname");
		resumeObj.lastname = request.getParameter("lastname");
		resumeObj.phone = request.getParameter("phone");
		resumeObj.mail = request.getParameter("mail");
		resumeObj.branch = request.getParameter("branch");
		resumeObj.year = Integer.parseInt(request.getParameter("year"));
		
		resumeObj.school = request.getParameter("school");
		resumeObj.tenth = Float.parseFloat(request.getParameter("tenth"));
		resumeObj.college = request.getParameter("college");
		resumeObj.twelfth = Float.parseFloat(request.getParameter("twelfth"));
		resumeObj.institute = request.getParameter("institute");
		resumeObj.btech = Float.parseFloat(request.getParameter("btech"));
		
		resumeObj.project1 = request.getParameter("project1");
		resumeObj.project2 = request.getParameter("project2");
		resumeObj.project3 = request.getParameter("project3");
		resumeObj.achievement1 = request.getParameter("achievement1");
		resumeObj.achievement2 = request.getParameter("achievement2");
		resumeObj.achievement3 = request.getParameter("achievement3");
		resumeObj.workexp = request.getParameter("workexp");
		
		resumeObj.ai = request.getParameter("ai");
		resumeObj.cpp = request.getParameter("cpp");
		resumeObj.react = request.getParameter("react");
		resumeObj.ml = request.getParameter("ml");
		resumeObj.java = request.getParameter("java");
		resumeObj.angular = request.getParameter("angular");
		resumeObj.hacking = request.getParameter("hacking");
		resumeObj.python = request.getParameter("python");
		resumeObj.flutter = request.getParameter("flutter");
		resumeObj.interests = request.getParameter("interests");
		
		resumeObj.hk = request.getParameter("hk");
		resumeObj.cc = request.getParameter("cc");
		resumeObj.linkedin = request.getParameter("linkedin");
		resumeObj.github = request.getParameter("github");
		
		try {
			Part avatar = request.getPart("avatar");
			if(avatar!=null)
				resumeObj.avatar = avatar.getInputStream();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (ServletException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		boolean status = resumeObj.insertData(username);
		
		if(status) {
			
			request.getSession().setAttribute("update_status", "update successful!");
			getResumePage(request, response);
		
		}
			
		else {
			
			request.setAttribute("errorMessage", "update not successful!!!");
		
			RequestDispatcher rd = request.getRequestDispatcher("/editResume.jsp");
			
			try {
				rd.forward(request, response);
			} catch (ServletException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		}
		
		
	}

}
