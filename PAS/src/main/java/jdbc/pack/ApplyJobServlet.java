package jdbc.pack;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ApplyJobServlet")
@MultipartConfig
public class ApplyJobServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	ApplyJob jobObj;
	String username;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		username = (String) (request).getSession().getAttribute("currentuser");
		String action = request.getServletPath();
		if (action == "/ApplyJob") {
			getApplyJobPage(request, response);
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	@SuppressWarnings("unchecked")
	protected void getApplyJobPage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		jobObj = new ApplyJob();
		ArrayList<String> companies = new ArrayList<String>();
		try {
			companies = jobObj.getAvailableJobs(username);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("companies", companies);
		request.getRequestDispatcher("/applyJob.jsp").forward(request, response);

	}
}
