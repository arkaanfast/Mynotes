package com.mynotes;

import java.awt.Desktop;
import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class Viewcontroller
 */
@WebServlet("/viewcontroller")
public class Viewcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		for(int i = 1; i <= 5; i++) {
			String filename = request.getParameter("module_" + i);
			System.out.println(filename);
			File file = new File("/home/arkaanfast/Downloads/" + filename);
			if(!Desktop.isDesktopSupported()){
	            System.out.println("Desktop is not supported");
	            return;
	        }
			Desktop desktop = Desktop.getDesktop();
			if(file.exists()) {
				desktop.open(file);
				response.sendRedirect("studentpage.jsp");
			}
			else if(!file.exists()) {
				System.out.println("not there");
			}
		}	
		
	}

}
