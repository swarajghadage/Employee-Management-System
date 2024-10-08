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

public class AddReview  extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		int id= Integer.parseInt(req.getParameter("id"));
		String name=req.getParameter("name");
		String review=req.getParameter("review");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root","swaraj");
			
			PreparedStatement ps =con.prepareStatement("insert into review values(?,?,?)");
			
			ps.setInt(1, id);
			ps.setString(2, name);
			ps.setString(3, review);
			
			
			 int result =ps.executeUpdate();
			
			 if ( result ==1 ) {
				 
					req.setAttribute("message","Review  Submited sucessfully");
					
				}else {
					req.setAttribute("errormessage","Department  not added ");
					RequestDispatcher rd = req.getRequestDispatcher("addreport.jsp");
					rd.forward(req, res);

				}
				RequestDispatcher rd = req.getRequestDispatcher("addreport.jsp");
				rd.forward(req, res);
				con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
	}
}
