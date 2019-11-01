package com.mynotes.dao;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


import com.mynotes.data.Faculty;

public class FacultyDao {
	
	String url = "jdbc:mysql://localhost/mynotes?useSSL=false";
    String user = "user";
    String password = "user";

	public Faculty getdetails(String fid) {
		
		String sql = "Select * from faculty where Fid = ?";
		Faculty f = new Faculty();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, password);
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, fid);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				f.setName(rs.getString("F_name"));
				f.setDepartment(rs.getString("Department"));
				f.setSubject(rs.getString("Subject"));
				f.setSubject_id(rs.getInt("Subject_id"));
			}
			
		} catch (Exception e) {
			
			System.out.println("error");
		}
		return f;
	}
	
	public void upload(InputStream fileContent,Object subject_id, int i) {
		
		String sql = "Update module set module_? = ? where Subject_id = '"+subject_id+"'";
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, password);
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, i);
			//ps.setInt(2, (int) subject_id);
			//ps.setString(3, (String) subject);
			ps.setBlob(2, fileContent);
			int rs = ps.executeUpdate();
			if(rs > 0) {
				System.out.println("updated to database");
			}
		}
		catch (Exception e) {
		
			System.out.println(e);
		}
		
	}
}


