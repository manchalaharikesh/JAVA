package jdbc.pack;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.RequestDispatcher;

public class RegisterServlet extends HttpServlet{
        
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

        response.setContentType("text/html");   
                
        String firstname=request.getParameter("firstname");
        String lastname=request.getParameter("lastname");
        int age= Integer.parseInt(request.getParameter("age"));
        String roll= request.getParameter("roll");
        String email=request.getParameter("email");
        String username=request.getParameter("username");  
        String password=request.getParameter("password");  
        String confirm_password = request.getParameter("confirmpassword"); 
         
        Register registerObj = new Register();
        registerObj.first_name = firstname;
        registerObj.last_name = lastname;
        registerObj.age = age;
        registerObj.roll = roll; 
        registerObj.email = email;
        registerObj.username = username;
        registerObj.password = password;

        if(confirm_password.equals(password)){

            boolean registration_status = registerObj.ensureRegistration();

            if(registration_status){

                RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
                rd.forward(request, response);               

            }

            else{

                request.setAttribute("errorMessage", "#invalid data entry");
                RequestDispatcher rd = request.getRequestDispatcher("/register.jsp");
                rd.include(request, response);

            }

        }

        else{

            request.setAttribute("errorMessage", "* password didn't match");
            RequestDispatcher rd = request.getRequestDispatcher("/register.jsp");
            rd.include(request, response);

        }

    }

}