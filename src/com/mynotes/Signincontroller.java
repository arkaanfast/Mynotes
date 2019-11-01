package com.mynotes;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mynotes.dao.Studentdao;
import com.mynotes.data.Student;

@WebServlet("/signincontroller")
public class Signincontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession s = request.getSession(true);
		String usn = request.getParameter("usn");
		String password = request.getParameter("password");
		Studentdao dao = new Studentdao();
		Student stud = new Student();
		if(dao.validate(password)) {
			stud = dao.signin(usn, password);
			s.setAttribute("firstname",stud.getFirstname());
			s.setAttribute("lastname", stud.getLastname());
			s.setAttribute("usn", stud.getUsn());
			response.sendRedirect("studentpage.jsp");
		}
		else {
			PrintWriter pw = response.getWriter();
			pw.println("Register first");
		}
		
	}

}
