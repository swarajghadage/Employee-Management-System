<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
    <title>Employee Management</title>
    <style type="text/css">
        body {
            background-color: black;
            background-image: url("print.jpg");
            size: cover;
        }
        
        #box {
           margin-top:20px;
            height: auto;
            width: 50%;
            margin-left: 200px;
            border: 2px solid black; 
            box-shadow: 9px 6px 15px 9px #342a2a; 
           
            background-color: white;
        }
        .all{
         display: flex;
        }
        #head {
            text-align: center; 
        }
        
        #box1 {
           
            padding: 20px;
            margin-bottom: 20px;
            margin-left: 40px;
        }
        
        #box1 input {
            
            height: 30px;
            padding: 10px;
        }
        
        #box1 label {
           margin-left: 20px;
            font-weight: 900;
        }
        
        #dob {
            width: 150px;
        }
        
        #select {
            width: 150px;
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

        #box5{
            background-color: white;
            border: 2px solid black;
            width: 20%;
            height: auto;
            box-shadow: 9px 6px 15px 9px #342a2a;
           
        }
        
        #btn {
         height: 40px;
         width: 120px;
    
         background-color: #4CAF50;
         color: white;
          border: none;
          border-radius: 5px;
          cursor: pointer;
}

        
        #btn1 {
            margin-left: 100px;
        }
        
        #btn a {
            text-decoration: none;
            color: white;
        }
        
        #btn2 {
            background-color: red;
            color: white;
            height: 40px;
            width: 120px;
            border-radius: 5px;
        }
        
        #btn2 {
            margin-left: 100px;
        }
        
        #btn2 a {
            text-decoration: none;
            color: white;
        }
         #btn3 {
            background-color: black;
            color: white;
           height: 40px;
         width: 120px;
             margin-left: 50px;
             border-radius: 5px;
        }
        #btn3 a {
            text-decoration: none;
            color: white;
        }
        
    </style>

   <script>
    function validateForm() {
        var id = document.forms["employeeForm"]["id"].value;
        var name = document.forms["employeeForm"]["name"].value;
        var dob = document.forms["employeeForm"]["dob"].value;
        var sal = document.forms["employeeForm"]["sal"].value;
        var address = document.forms["employeeForm"]["address"].value;
        var phone = document.forms["employeeForm"]["phone"].value;
        var email = document.forms["employeeForm"]["email"].value;
        var education = document.forms["employeeForm"]["education"].value;
        var designation = document.forms["employeeForm"]["designation"].value;
        var aadhar = document.forms["employeeForm"]["aadhar"].value;

        if (id === "" || name === "" || dob === "" || sal === "" || address === "" || phone === "" || email === "" || education === "" || designation === "" || aadhar === "") {
            alert("Please fill in all required fields");
            return false;
        } else {
            return true;
        }
    }
</script>

</head>
<body>

<nav class="navbar navbar-expand-lg bg-light">
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
    <div class="btn-custom"><a href="Viewall"><i class="fa fa-user"></i>&nbsp;Viewall </a></div>
    <div class="btn-custom"><a href="update"><i class="fa fa-user"></i>&nbsp;Update </a></div>
   
    <div class="btn-custom"><a href="remove"><i class="fa fa-user"></i>&nbsp;Remove </a></div>
    <div class="btn-custom"><a href="viewbyid.jsp"><i class="fa fa-user"></i>&nbsp;ViewById </a></div>
     <button class="btn-custom" onclick="printTable()">Print</button>
      <div class="btn-custom"><a href="employeemanage.jsp"><i class="fa fa-arrow-circle-left"></i>&nbsp;Back</a></div>
</div>

    <div id="box">
        <h1 id="head"><u>New Employee Details</u></h1>
        <center>
            <h1 style="color: green">${message}</h1>
            <h1 style="color: red">${errormessage}</h1>
        </center>
        <form action="add" method="post" name="employeeForm" onsubmit="return validateForm()">
            <div id="box1">
                <label>Employee ID:</label>
                <input type="text" name="id" placeholder="enter id here">           
                <label>Emp  Name:</label>
                <input type="text" name="name" placeholder="enter name here">
                <br><br><br>
                <label>Employee DOB:</label>
                <input type="Date" name="dob" id="dob" >
                <label>Employee Salary:</label>
                <input type="text" name="sal" placeholder="enter salary here">
                <br><br><br>
                <label>Emp Addr:</label>
                <input type="text" name="address" placeholder="enter address here">           
                <label>Emp phone:</label>
                <input type="text" name="phone" placeholder="enter phone no">
                <br><br><br>
                <label> Email Addr:</label>
                <input type="text" name="email" placeholder="enter email here">           
                <label>Highest Education :</label>
                <select name="education">
                    <option value="" disabled="disabled"  selected="selected" id="select">Select Education here</option>
                    <option value="BSC">BSC</option>
                    <option value="ECS">ECS</option>
                    <option value="BCA">BCA</option>
                    <option value="B-TECH">B-TECH</option>
                    <option value="BE">BE</option>
                    <option value="MSC">MSC</option>
                    <option value="MCA">MCA</option>
                     <option value="B-pharm">B-pharm</option>
                </select>
                <br><br><br>
                <label>Designation :</label>
                <input type="text" name="designation" placeholder="enter here Designation" >           
                <label>Addhar no:</label>
                <input type="text" name="aadhar"  placeholder=" enter addhar no">
                <br><br><br>
                 
                <span id="btn1">
                   <button type="submit" id="btn">Submit</button>

                </span>
                <button id="btn2"><a href="#" >cancel</a> </button>
               
            </div>
        </form>
    </div>
    </div>
    <script>
    function printTable() {
      window.print();
    }
  
  </script>
</body>
</html>
