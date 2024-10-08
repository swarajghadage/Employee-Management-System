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

import com.nt.entity.UpadteDept;

public class DeleteDept extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
try {
			

			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee", "root", "swaraj");

			PreparedStatement ps = con.prepareStatement("Select * from Dept");

			ResultSet rs = ps.executeQuery();

			List<UpadteDept> list = new ArrayList<UpadteDept>();

			while (rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("name");
				
				
				UpadteDept u =new UpadteDept(id ,name);
				
				list.add(u);

			}req.setAttribute("emplist", list);
			RequestDispatcher rd = req.getRequestDispatcher("deletedept.jsp");
			rd.forward(req, res);
			
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		
		}
	}
}
