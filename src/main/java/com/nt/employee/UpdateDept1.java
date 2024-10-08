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

public class UpdateDept1 extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		int id= Integer.parseInt(req.getParameter("id"));
		String name=req.getParameter("name");
				
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root","swaraj");
			
			PreparedStatement ps =con.prepareStatement("update Dept set name=? where id=?");
			
			
			ps.setString(1, name);
			
			ps.setInt(2, id);
			
			
			 int result =ps.executeUpdate();
			
			 if ( result>=1 ) {
				 
					req.setAttribute("message","Data updated  sucessfully");
					
				}else {
					RequestDispatcher rd = req.getRequestDispatcher("updatedept1.jsp");
					rd.forward(req, res);

				}
				RequestDispatcher rd = req.getRequestDispatcher("updatedept1.jsp");
				rd.forward(req, res);
				
				con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
	}
}

