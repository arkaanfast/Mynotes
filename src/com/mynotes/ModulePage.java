package com.mynotes;
import com.mynotes.dao.FacultyDao;

import java.io.IOException;
import java.io.InputStream;


import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@WebServlet("/modulePage")
@MultipartConfig
public class ModulePage extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ModulePage() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, NullPointerException {
		
		HttpSession s = request.getSession(true);
		
		for(int i = 1; i <= 5; i++) {
			
			String filename = "file" + i;
			System.out.println(request.getPart(filename));
			if(request.getPart(filename) != null) {
				System.out.println(filename);	
				Part file = request.getPart(filename);
				InputStream fileContent = file.getInputStream();
				FacultyDao dao = new FacultyDao();
				dao.upload(fileContent, s.getAttribute("Subject_id"), i);
				s.setAttribute("module" + i, "yes");
				response.sendRedirect("facultymain.jsp");
				
			}
				
			
		}
		
	}

}
