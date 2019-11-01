package com.mynotes;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mynotes.dao.FacultyDao;
import com.mynotes.data.Faculty;

@WebServlet("/facultypage")
public class FacultyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public FacultyController() {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String fid = (String) request.getParameter("Fid");
		FacultyDao dao = new FacultyDao();
		Faculty f = dao.getdetails(fid);
		HttpSession s = request.getSession(true);
		s.setAttribute("F_name", f.getName());
		s.setAttribute("Department", f.getDepartment());
		s.setAttribute("Subject", f.getSubject());
		s.setAttribute("Subject_id", f.getSubject_id());
		response.sendRedirect("facultymain.jsp");
		
	}

}
