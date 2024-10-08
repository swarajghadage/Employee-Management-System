package com.nt.employee;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class DeleteDept1 extends HttpServlet {
	
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));

        try {
           
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee", "root", "swaraj");

            
            PreparedStatement ps = con.prepareStatement("DELETE FROM Dept WHERE id=?");
            ps.setInt(1, id);

            
            int result = ps.executeUpdate();
            
            if ( result >=1 ) {
				 
				req.setAttribute("message","Dept Removed sucessfully");
				
			}else {
				
				RequestDispatcher rd = req.getRequestDispatcher("deletedept1.jsp");
				rd.forward(req, res);

			}
            
			RequestDispatcher rd = req.getRequestDispatcher("deletedept1.jsp");
			rd.forward(req, res);
            
			con.close();
           
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
