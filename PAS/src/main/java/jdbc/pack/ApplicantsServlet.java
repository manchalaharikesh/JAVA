package jdbc.pack;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ApplicantsServlet")
public class ApplicantsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public String username;

    public ApplicantsServlet() {
        super();
        
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
		String action = request.getServletPath();
		
		switch(action) {
		
			case "/ApplicantsPage":
				getApplicantsPage(request, response);
				break;
	
			case "/ShortlistApplicant":
				shortlistApplicant(request, response);
				break;
				
			case "/RejectApplicant":
				rejectApplicant(request, response);
				break;
				
			case "/ScheduleInterview":
				getScheduleInterviewPage(request, response);
				break;
				
		}
    	
	}

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	
    }
    
    public void getApplicantsPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	Applicants applicants = new Applicants();
    	applicants.company=(String) request.getSession().getAttribute("company");
    	
    	boolean status = applicants.getApplicantsData();
    	
    	if(applicants.applicantsUsernames.size()>0 && status) {
    		
	    	request.setAttribute("applicantsUsernames", applicants.applicantsUsernames);
	    	request.setAttribute("applicantsStatus", applicants.applicantsStatus);
	    	request.setAttribute("status", true);
	    	RequestDispatcher rd = request.getRequestDispatcher("/Applicants.jsp");
	    	rd.forward(request, response);
	    	
    	}
    	
    	else {
    		
    		request.setAttribute("status", false);
    		RequestDispatcher rd = request.getRequestDispatcher("/Applicants.jsp");
	    	rd.forward(request, response);
    		
    	}
    	
    }
    
    public void shortlistApplicant(HttpServletRequest request, HttpServletResponse response) throws IOException{
    	
    	username=request.getParameter("username");
    	
    	Applicants applicant = new Applicants();
    	
    	boolean status = applicant.shortlist(username);
    	
    	if(status) {
    		
    		try {
			
    			request.setAttribute("shortlist_status", true);
    			getApplicantsPage(request, response);
			
    		} catch (ServletException | IOException e) {
				
				e.printStackTrace();
			}
    		
    	}
    	
    	else {
    		
    		try {
    			
    			request.setAttribute("shortlist_status", false);
    			getApplicantsPage(request, response);
			
    		} catch (ServletException | IOException e) {
				
				e.printStackTrace();
			}
    		
    	}
    	
    }
    
    public void rejectApplicant(HttpServletRequest request, HttpServletResponse response) throws IOException{
    	
    	username=request.getParameter("username");
    	
    	Applicants applicant = new Applicants();
    	
    	boolean status = applicant.reject(username);
    	
    	if(status) {
    		
    		try {
			
    			request.setAttribute("rejection_status", true);
    			getApplicantsPage(request, response);
			
    		} catch (ServletException | IOException e) {
				
				e.printStackTrace();
			}
    		
    	}
    	
    	else {
    		
    		try {
    			
    			request.setAttribute("rejection_status", false);
    			getApplicantsPage(request, response);
			
    		} catch (ServletException | IOException e) {
				
				e.printStackTrace();
			}
    		
    	}
    	
    }
    
    public void getScheduleInterviewPage(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
    	
    	Applicants applicants = new Applicants();
    	applicants.company=(String) request.getSession().getAttribute("company");
    	
    	boolean status = applicants.shortlistApplicants();
    	
    	if(applicants.applicantsUsernames.size()>0 && status) {
    		
	    	request.setAttribute("applicantsUsernames", applicants.applicantsUsernames);
	    	request.setAttribute("applicantsStatus", applicants.applicantsStatus);
	    	request.setAttribute("status", true);
	    	RequestDispatcher rd = request.getRequestDispatcher("/schedule_interview.jsp");
	    	rd.forward(request, response);
	    	
    	}
    	
    	else {
    		
    		request.setAttribute("status", false);
    		RequestDispatcher rd = request.getRequestDispatcher("/Applicants.jsp");
	    	rd.forward(request, response);
    		
    	}
    	
    	
    }

}
