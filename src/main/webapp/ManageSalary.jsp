<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
    <title>Employee Salary Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            background-image:url("print.jpg");
            margin: 0;
            padding: 0;
        }
        
         #box5{
            background-color: white;
            border: 2px solid black;
            width: 20%;
            height: auto;
            box-shadow: 9px 6px 15px 9px #342a2a;
           
        }
         .btn-custom {
            background-color: #48f2e2;
            color: black;
            width: 80%;
            height: 45px;
            margin: 20px;
            border-radius: 10px;
            display: inline-block;
            overflow: hidden;
        }

            .btn-custom :hover{
              background-position: right center; 
            color: #fff;
            text-decoration: none;
            }
         
         .btn-custom {
           background-image: linear-gradient(to right, #00d2ff 0%, #3a7bd5  51%, #00d2ff  100%);
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
        
        .container {
            max-width: 500px;
           
            background-color: #fff;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        label {
            font-weight: bold;
        }
        input[type="text"],
        input[type="number"] {
            width: calc(100% - 22px);
            padding: 10px;
            margin: 5px 0;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            box-sizing: border-box;
            border: none;
            border-radius: 5px;
            background-color: #4CAF50;
            color: white;
            font-size: 16px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        
           .all{
               display: flex;
        }
         .navbar-nav a{
          color: white;
        
        }
    </style>
</head>
<body>
  <nav class="navbar navbar-expand-lg bg-black">
    <div class="container-fluid">
        <a class="navbar-brand" href="#" style="color: orange; font-size: 20px;">
            <img src="second.jpg" alt="Logo" height="30" class="d-inline-block align-text-top">
            Employee Data
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
                aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <a class="nav-link" href="#">Employee Management System</a>
            </div>
        </div>
    </div>
</nav>
<div class="all">
<div id="box5">

    <div class="btn-custom"><a href="employeemanage.jsp"><i class="fa fa-home"></i>&nbsp;Home</a></div>
    <div class="btn-custom"><a href="ViewSal"><i class="fa fa-user"></i>&nbsp;Viewall </a></div>
    <div class="btn-custom"><a href="updatesal"><i class="fa fa-user"></i>&nbsp;Update </a></div>
      
     <button class="btn-custom" onclick="printTable()">Print</button>
      <div class="btn-custom"><a href="employeemanage.jsp"><i class="fa fa-arrow-circle-left"></i>&nbsp;Back</a></div>
</div>

    <div class="container">
        <h2>Employee Salary Details Form</h2>
         <center>
            <h1 style="color: green">${message}</h1>
            <h1 style="color: red">${errormessage}</h1>
        </center>
        <form action="salary" method="post">
            <label for="employeeId">Employee ID:</label>
            <input type="text" id="employeeId" name="id" required><br>
            
            <label for="employeeName">Employee Name:</label>
            <input type="text" id="employeeName" name="name" required><br>
            
            <label for="departmentName">Department Name:</label>
            <input type="text" id="departmentName" name="dept" required><br>
            
            <label for="medicalAllowance">Medical Allowance:</label>
            <input type="number" id="medicalAllowance" name="medical" value="0"><br>
            
            <label for="professionTax">Profession Tax:</label>
            <input type="number" id="professionTax" name="ptax" value="0"><br>
            
            <label for="bonus">Bonus:</label>
            <input type="number" id="bonus" name="bonus" value="0"><br>
            
            <label for="providentFund">Provident Fund:</label>
            <input type="number" id="providentFund" name="providentFund" value="0"><br>
            
            <label for="netSalary">Net Salary:</label>
            <input type="number" id="netSalary" name="netSalary" ><br>
            
            <input type="submit" value="Calculate Salary">
        </form>
    </div>
    </div>
</body>
</html>
