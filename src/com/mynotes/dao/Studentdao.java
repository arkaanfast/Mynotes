package com.mynotes.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mynotes.data.Student;


public class Studentdao {
	
	String url = "jdbc:mysql://localhost/mynotes?useSSL=false";
    String user = "user";
    String password = "user";
    
    public int insert(String usn, String firstname, String lastname, String pass, String email) {
    	
    	String sql = "Insert into student values(?, ?, ?, ?, ?)";

    	try {
    		
    		Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, password);
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, usn);
			ps.setString(2, firstname);
			ps.setString(3, lastname);
			ps.setString(4, pass);
			ps.setString(5, email);
			int rs = ps.executeUpdate();
			if(rs > 0) {
				System.out.println("updated to database");
			}
			
    	}
    	catch(Exception e) {
    		
    		System.out.println(e);
    	
    	}
		return 0;
    	
    }
    
    public boolean validate(String pass) {
    	
    	String sql = "Select * from student where password=?";
    	int count = 0;
    	try {
    		
    			Class.forName("com.mysql.cj.jdbc.Driver");
    			Connection con = DriverManager.getConnection(url, user, password);
    			PreparedStatement ps = con.prepareStatement(sql);
    			ps.setString(1, pass);
    			ResultSet rs = ps.executeQuery();
    			if(rs.next()) {
    				count++; 
    			}
    		}
    	catch(Exception e) {
    		
    		System.out.println(e);
    		
    	}
    	
    	if(count > 0) {
    		return true;
    	}
    	else {
    		return false;
    	}
    }
	
    public Student signin(String usn, String pass) {
    	
    	String sql = "Select * from student where usn=?";
    	Student s = new Student();
    	
    	try {
    		
    		Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, password);
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, usn);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				
				s.setFirstname(rs.getString("first_name"));
				s.setLastname(rs.getString("last_name"));
				s.setUsn(rs.getString("usn"));
				
			}
			
    		}
    	catch(Exception e) {
    		
    		System.out.println(e);
    		
    	}
    	
    	return s;
    }
}
