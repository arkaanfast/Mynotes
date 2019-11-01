package com.mynotes;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.Blob;

/**
 * Servlet implementation class Downloadcontroller
 */
@WebServlet("/downloadcontroller")
public class Downloadcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private static final int BUFFER_SIZE = 4096;  
	 
	 String url = "jdbc:mysql://localhost/mynotes?useSSL=false";
	 String user = "user";
	 String password = "user";
	
	 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		 //int column_no = 0;
		 String subject = request.getParameter("subject");
		 for(int i = 1; i <= 5; i++) {
			 String module = "module" + i;
			 System.out.println(module);
			 if(request.getParameter(module) != null) {
			 String filename = request.getParameter(module);
			 System.out.println(filename);
			 char no = filename.charAt(6);
			 int module_no =Character.getNumericValue(no);
		     System.out.println(module_no);
//		 switch (module_no) {
//		 	case 1:column_no = 3;
//		 	break;
//		 	case 2:column_no = 4;
// 			break;
//		 	case 3:column_no = 5;
// 			break;
//		 	case 4:column_no = 6;
// 			break;
//		 	case 5:column_no = 7;
// 			break;
//		}
		 System.out.println(module_no);
		 
		 
		 try {
    		
    		Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, password);
			String sql = "Select module_? from module where Subject=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, module_no);
			ps.setString(2, subject);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				Blob blob = rs.getBlob(module_no);
				InputStream inputStream = blob.getBinaryStream();
				int fileLength = inputStream.available();
				ServletContext context = getServletContext();
	                String mimeType = context.getMimeType(filename);
	                if (mimeType == null) {        
	                    mimeType = "application/octet-stream";
	                }
	                response.setContentType(mimeType);
	                response.setContentLength(fileLength);
	                String headerKey = "Content-Disposition";
	                String headerValue = String.format("attachment; filename=\"%s\"", filename);
	                response.setHeader(headerKey, headerValue);
	                OutputStream outStream = response.getOutputStream();
	                 
	                byte[] buffer = new byte[BUFFER_SIZE];
	                int bytesRead = -1;
	                 
	                while ((bytesRead = inputStream.read(buffer)) != -1) {
	                    outStream.write(buffer, 0, bytesRead);
	                }
	                 
	                inputStream.close();
	                outStream.close();             
	            } else {
	                // no file found
	                response.getWriter().print("File not found for the id: ");  
	            }
			 }
			 
		catch(Exception e) {
    		
    		System.out.println(e);
    	
    		}
}
}
	 }
}
