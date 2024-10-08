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

public class AddPeon  extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		int id= Integer.parseInt(req.getParameter("id"));
		String name=req.getParameter("name");
		int salary= Integer.parseInt(req.getParameter("salary"));
		
		long phone = Long.parseLong(req.getParameter("phone"));
		String address=req.getParameter("address");
		String education=req.getParameter("education");
		long addhar= Long.parseLong(req.getParameter("aadhar"));
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root","swaraj");
			
			PreparedStatement ps =con.prepareStatement("insert into Peon values(?,?,?,?,?,?,?)");
			
			ps.setInt(1, id);
			ps.setString(2, name);
				ps.setInt(3, salary);
			ps.setLong(4, phone);
			ps.setString(5, address);
			
				ps.setString(6, education);
				ps.setLong(7, addhar);
			
			 int result =ps.executeUpdate();
			
			 if ( result ==1 ) {
				 
					req.setAttribute("message","Peon added sucessfully");
					
				}else {
					RequestDispatcher rd = req.getRequestDispatcher("AddPeon.jsp");
					rd.forward(req, res);

				}
				RequestDispatcher rd = req.getRequestDispatcher("AddPeon.jsp");
				rd.forward(req, res);
				
				con.close();
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		
		
		
		
		
	}
}
