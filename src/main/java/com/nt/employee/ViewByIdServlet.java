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

public class ViewByIdServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee", "root", "swaraj");

            PreparedStatement ps = con.prepareStatement("select * from emplo where id=?");
            ps.setInt(1, id);

            ResultSet rs = ps.executeQuery();

           

            if(rs.next()) {
                int i = rs.getInt("id");
                String name = rs.getString("name");
                String dob = rs.getString("dob");
                int sal = rs.getInt("sal");
                String address = rs.getString("address");
                Long phone = rs.getLong("phone");
                String email = rs.getString("email");
                String education = rs.getString("education");
                String designation = rs.getString("designation");
                Long aadhar = rs.getLong("aadhar");

                Employee e = new Employee(i, name, dob, sal, address, phone, email, education, designation, aadhar);

                req.setAttribute("emp", e);
                RequestDispatcher rd = req.getRequestDispatcher("viewbyid.jsp");
                rd.forward(req, res);
            }else {
            	
            	req.setAttribute("errormessage","No Record found");
            	 RequestDispatcher rd = req.getRequestDispatcher("viewbyid.jsp");
                 rd.forward(req, res);
            }

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }  
          
    }
}
