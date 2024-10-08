package com.nt.employee;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UpdateServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		int id= Integer.parseInt(req.getParameter("id"));
		String name=req.getParameter("name");
		String dob=req.getParameter("dob");
		int salary= Integer.parseInt(req.getParameter("sal"));
		String address=req.getParameter("address");
		long phone = Long.parseLong(req.getParameter("phone"));
		String email=req.getParameter("email");
		String education=req.getParameter("education");
		String designation=req.getParameter("designation");
		long addhar= Long.parseLong(req.getParameter("aadhar"));
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root","swaraj");
			
			PreparedStatement ps =con.prepareStatement("update emplo set name=?, dob=?,sal=? ,address=? ,phone=?, email=?,education=?,designation=?,aadhar=? where id=?");
			
			
			ps.setString(1, name);
			ps.setString(2, dob);
			ps.setInt(3, salary);
			ps.setString(4, address);
			ps.setLong(5, phone);
			ps.setString(6, email);
			ps.setString(7, education);
			ps.setString(8, designation);
			ps.setLong(9, addhar);
			ps.setInt(10, id);
			
			
			 int result =ps.executeUpdate();
			
			 if ( result ==1 ) {
				 
					req.setAttribute("message","Data updated  sucessfully");
					
				}else {
					RequestDispatcher rd = req.getRequestDispatcher("update.jsp");
					rd.forward(req, res);

				}
				RequestDispatcher rd = req.getRequestDispatcher("update1.jsp");
				rd.forward(req, res);
				con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
	}
}

