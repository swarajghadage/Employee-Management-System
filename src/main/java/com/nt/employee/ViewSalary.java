package com.nt.employee;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nt.entity.Employee;
import com.nt.entity.Salary;

public class ViewSalary extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		try {
			

			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee", "root", "swaraj");

			PreparedStatement ps = con.prepareStatement("Select * from Salary");

			ResultSet rs = ps.executeQuery();

			List<Salary> list = new ArrayList<Salary>();

			while (rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String  dept =rs.getString("dept");
				long medical =rs.getLong("medical");
				long ptax =rs.getLong("ptax");
				long bonus =rs.getLong("bonus");
				long providentFund =rs.getLong("providentFund");
				long netSalary =rs.getLong("netSalary");
				
				
				
				
				Salary  s =new Salary(id, name, dept, medical, ptax, bonus, providentFund, netSalary);
				list.add(s);

			}req.setAttribute("emplist", list);
			RequestDispatcher rd = req.getRequestDispatcher("viewsalry.jsp");
			rd.forward(req, res);
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		
		}
	}
}
