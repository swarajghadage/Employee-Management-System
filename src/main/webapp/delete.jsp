<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Employee</title>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <style>
    
      body {
            background-color: black;
            background-image: url("print.jpg");
            size: cover;
        }
        .btn-custom :hover{
              background-position: right center; 
            color: #fff;
            text-decoration: none;
            }
         
         .btn-custom {
           background-image: linear-gradient(to right, #00d2ff 0%, #3a7bd5  51%, #00d2ff  100%);
             }
  .btn-custom {
            background-color: #48f2e2;
            color: black;
            width: 80%;
            height: 45px;
            margin: 20px;
            border-radius: 10px;
            display: inline-block;
          
        }

       

        .btn-custom a {
            display: block;
            width: 100%;
            height: 100%;
            text-decoration: none;
           color: black;
            font-size: 20px;
            text-align:center;
            border-radius: 10px;
            padding: 10px;
        }
        
        .box {
            margin: auto;
            width: 50%;
             box-shadow: 9px 6px 15px 9px #342a2a; 
         
        }
        
        .center {
            text-align: center;
        }
        
        table {
            border-collapse: collapse;
            width: 100%;
        }
        
        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
        }
        
        th {
            background-color: #f2f2f2;
        }
        
        .btn {
            background-color: #f44336;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        
        .btn:hover {
            background-color: #d32f2f;
        }
        
        .table {
            background-color: white;
            color: black;
            text-align: center;
             background-image: url("add_employee.jpg");
       
        }
        #msg{
          background-color: white;
          width:100%;
          text-align: center;
          align-items: center;
         
        }
        .center{
          background: white;
        }
    </style>
</head>
<body>
     <div class="box">
        <h1 class="center">Delete Employee </h1>
        <div id="msg">
    <center>
        <h1 style="color: green; " >${message}</h1>
        <h1 style="color: red">${errormessage}</h1>
    </center>
     <table  class="table">
        <tr>
            <th>Field</th>
            <th>Value</th>
        </tr>
        <tr>
            <td>ID</td>
            <td><%= request.getParameter("id") %></td>
        </tr>
        <tr>
            <td>Name</td>
            <td><%= request.getParameter("name") %></td>
        </tr>
        <tr>
            <td>DOB</td>
            <td><%= request.getParameter("dob") %></td>
        </tr>
        <tr>
            <td>Salary</td>
            <td><%= request.getParameter("sal") %></td>
        </tr>
        <tr>
            <td>Address</td>
            <td><%= request.getParameter("address") %></td>
        </tr>
        <tr>
            <td>Phone</td>
            <td><%= request.getParameter("phone") %></td>
        </tr>
        <tr>
            <td>Email</td>
            <td><%= request.getParameter("email") %></td>
        </tr>
        <tr>
            <td>Education</td>
            <td><%= request.getParameter("education") %></td>
        </tr>
        <tr>
            <td>Designation</td>
            <td><%= request.getParameter("designation") %></td>
        </tr>
        <tr>
            <td>Aadhar No</td>
            <td><%= request.getParameter("aadhar") %></td>
        </tr>
    </table>
    </div>
    <form action="remove1" method="post" class="center"> 
        <input type="hidden" name="id" style="height: 30px;" value="<%= request.getParameter("id") %>">
        <input type="submit" value="Delete Employee" class="btn">
        <div class="btn-custom"><a href="employeemanage.jsp"><i class="fa fa-arrow-circle-left"></i>&nbsp;Back</a></div>
        
    </form>
    </div>
</body>
</html>
