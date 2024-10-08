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

public class Attendence  extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		int id= Integer.parseInt(req.getParameter("id"));
		String name=req.getParameter("name");
		String day=req.getParameter("day");
		String attendance=req.getParameter("attendance");
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root","swaraj");
			
			PreparedStatement ps =con.prepareStatement("insert into attendance values(?,?,?,?)");
			
			ps.setInt(1, id);
			ps.setString(2, name);
			ps.setString(3, day);
			ps.setString(4, attendance);
			
			
			 int result =ps.executeUpdate();
			
			 if ( result >=1 ) {
				 
					req.setAttribute("message"," Attendence added sucessfully");
					
				}else {
					RequestDispatcher rd = req.getRequestDispatcher("Attedence.jsp");
					rd.forward(req, res);

				}
				RequestDispatcher rd = req.getRequestDispatcher("Attedence.jsp");
				rd.forward(req, res);
				
				con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
	}
}
