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
import javax.servlet.http.HttpSession;

public class SecondPage extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

        String username = req.getParameter("username");
        String password = req.getParameter("password");
        
        try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/employee","root","swaraj");
			
			PreparedStatement ps =con.prepareStatement("insert into login values(?,?)");
			
			ps.setString(1, username);
			ps.setString(2, password);
			
			ps.executeUpdate();
        	
			con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

        if ("swaraj".equals(username) && "swaraj11".equals(password)) {
        HttpSession session = req.getSession();
				session.setAttribute( "swaraj", username );
        	RequestDispatcher rd = req.getRequestDispatcher("employeemanage.jsp");
        	rd.forward(req, res);
        } else {
        	req.setAttribute("errormsg", "Wrong Username or Password ");
			RequestDispatcher rd = req.getRequestDispatcher("login.jsp");
			rd.forward(req, res);
        }
    }
}