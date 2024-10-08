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

public class AddSalary  extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		int id= Integer.parseInt(req.getParameter("id"));
		String name=req.getParameter("name");
		String dept=req.getParameter("dept");
		long medical = Long.parseLong(req.getParameter("medical"));
		long ptax = Long.parseLong(req.getParameter("ptax"));
		long bonus = Long.parseLong(req.getParameter("bonus"));
		long providentFund = Long.parseLong(req.getParameter("providentFund"));
		long netSalary = Long.parseLong(req.getParameter("netSalary"));
			
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root","swaraj");
			
			PreparedStatement ps =con.prepareStatement("insert into Salary values(?,?,?,?,?,?,?,?)");
			
			ps.setInt(1, id);
			ps.setString(2, name);
			ps.setString(3, dept);
			ps.setLong(4, medical);
			ps.setLong(5, ptax);
			ps.setLong(6, bonus);
			ps.setLong(7, providentFund);
			ps.setLong(8, netSalary);
			
			 int result =ps.executeUpdate();
			
			 if ( result ==1 ) {
				 
					req.setAttribute("message","salary  added sucessfully");
					
				}else {
					RequestDispatcher rd = req.getRequestDispatcher("ManageSalary.jsp");
					rd.forward(req, res);

				}
				RequestDispatcher rd = req.getRequestDispatcher("ManageSalary.jsp");
				rd.forward(req, res);
				
				con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
	}
}
