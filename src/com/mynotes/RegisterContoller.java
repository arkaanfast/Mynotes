package com.mynotes;

import java.io.IOException;

import com.mynotes.dao.Studentdao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/registercontroller")
public class RegisterContoller extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public RegisterContoller() {
        super();
    }
    

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//to check if the retyped password is correct or not 
		String firstname = request.getParameter("first");
		String lastname = request.getParameter("last");
		String usn = request.getParameter("usn");
		String pass = request.getParameter("pass");
		String repass = request.getParameter("repass");
		String email = request.getParameter("email");
		
		if(!pass.equals(repass)) {
			
			HttpSession s = request.getSession(true);
			s.setAttribute("error", "error");
			response.sendRedirect("register.jsp");
			
		}
		else {
		
			Studentdao dao = new Studentdao();
			dao.insert(usn, firstname, lastname, pass, email);
			HttpSession session = request.getSession(true);
			session.setAttribute("success", "success");
			response.sendRedirect("register.jsp");
			
		}
		
	}

}
