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
import com.nt.entity.Peon;

public class ViewPeon extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		try {
			

			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee", "root", "swaraj");

			PreparedStatement ps = con.prepareStatement("Select * from peon");

			ResultSet rs = ps.executeQuery();

			List<Peon> list = new ArrayList<Peon>();

			while (rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("name");
					int salary = rs.getInt("salary");
				Long phone=rs.getLong("phone");
				String address =rs.getString("address");
				
				String education=rs.getString("education");
					Long aadhar=rs.getLong("aadhar");
				
				
					Peon p =new Peon(id, name, salary, id, address, education, aadhar);
					list.add(p);

			}req.setAttribute("emplist", list);
			RequestDispatcher rd = req.getRequestDispatcher("ViewPeon.jsp");
			rd.forward(req, res);
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		
		}
	}
}
