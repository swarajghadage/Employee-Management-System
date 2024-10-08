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

public class UpdateSalary1  extends HttpServlet{

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
			
			PreparedStatement ps =con.prepareStatement("update Salary set name=?, dept=?,medical=? ,ptax=? ,bonus=?, providentFund=?,netSalary=? where id=?");
			
			
			ps.setString(1, name);
			ps.setString(2, dept);
			ps.setLong(3, medical);
			ps.setLong(4, ptax);
			ps.setLong(5, bonus);
			ps.setLong(6, providentFund);
			ps.setLong(7, netSalary);
			ps.setInt(8, id);
			
			 int result =ps.executeUpdate();
			
			 if ( result >=1 ) {
				 
					req.setAttribute("message","salary  updated  sucessfully");
					
				}else {
					RequestDispatcher rd = req.getRequestDispatcher("updatesal1.jsp");
					rd.forward(req, res);

				}
				RequestDispatcher rd = req.getRequestDispatcher("updatesal1.jsp");
				rd.forward(req, res);
				
				con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
	}
}
