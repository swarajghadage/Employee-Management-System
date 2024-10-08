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

public class ViewAllServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		try {
			

			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee", "root", "swaraj");

			PreparedStatement ps = con.prepareStatement("Select * from emplo");

			ResultSet rs = ps.executeQuery();

			List<Employee> list = new ArrayList<Employee>();

			while (rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String dob =rs.getString("dob");
				int sal = rs.getInt("sal");
				String address =rs.getString("address");
				Long phone=rs.getLong("phone");
				String email=rs.getString("email");
				String education=rs.getString("education");
				String designation=rs.getString("designation");
				Long aadhar=rs.getLong("aadhar");
				
				
				
				Employee e = new Employee(id, name, dob, sal, address, phone, email, education, designation, aadhar);
				list.add(e);

			}req.setAttribute("emplist", list);
			RequestDispatcher rd = req.getRequestDispatcher("Viewall.jsp");
			rd.forward(req, res);
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		
		}
	}
}
