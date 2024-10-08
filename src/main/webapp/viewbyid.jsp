<!DOCTYPE html>
<html lang="en">
<head>
  <title>Employee Management System</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 
  <style type="text/css">
    body {
       background-color: black;
            background-image: url("print.jpg");
            size: cover;
         color: rebeccapurple;
      position: fixed;
    }
     
        
    .all{
     display: flex;
    }
     .btn-custom :hover{
              background-position: right center; 
            color: #fff;
            text-decoration: none;
            }
         
         .btn-custom {
          background-image: linear-gradient(to right, #00d2ff 0%, #3a7bd5  51%, #00d2ff  100%);
                }
    
    .custom-fieldset {
      color: red;
      width: 100%;
      text-align: center;
      background-color: pink;
     
     
      padding: 10px;
    }
    
    .legend-style {
      background-color: black;
      font-size: 30px;
      color: white;
    }
    
    input[type="text"]:hover {
      border: 4px solid orangered;
    }
    
    #form {
      margin-left: 100px;
    }

    #btn2, #btnPrint, #btnCancel {
      background-color: black;
      color: white;
      height: 42px;
      width: 100px;
      margin-left: 10px;
    }.btn-custom {
            background-color: #48f2e2;
            color: black;
            width: 80%;
            height: 45px;
            margin: 20px;
            border-radius: 10px;
            display: inline-block;
            overflow: hidden;
        }

        .btn-custom:hover {
            border: 2px solid orange;
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

        #box {
            background-color: white;
            border: 2px solid black;
            width: 20%;
            height: 750px;
            box-shadow: 9px 6px 15px 9px #342a2a;
           
        }

    #btn2 a {
      text-decoration: none;
      color: white;
    }
  </style>
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
<div id="box">
    <div class="btn-custom"><a href="employeemanage.jsp"><i class="fa fa-home"></i>&nbsp;Home</a></div>
    <div class="btn-custom"><a href="add.jsp"><i class="fa fa-user"></i>&nbsp;Add </a></div>
    <div class="btn-custom"><a href="update"><i class="fa fa-user"></i>&nbsp;Update </a></div>
   
    <div class="btn-custom"><a href="remove"><i class="fa fa-user"></i>&nbsp;Remove </a></div>
    <div class="btn-custom"><a href="Viewall"><i class="fa fa-user"></i>&nbsp;Viewall </a></div>
     <button class="btn-custom" onclick="printTable()"><i class="fa fa-print"></i>&nbsp;Print</button>
      <div class="btn-custom"><a href="employeemanage.jsp"><i class="fa fa-arrow-circle-left"></i>&nbsp;Back</a></div>
</div>


 

  <div class="container mt-3">     
  <fieldset class="custom-fieldset">
    <legend class="legend-style">SelectByID</legend>
    <form action="SelectId" id="form" method="post">
    
        <center>
            <h1 style="color: green">${message}</h1>
            <h1 style="color: red">${errormessage}</h1>
        </center>
      
      <input type="text" name="id" placeholder="Enter ID here">
      <input type="submit" value="SelectByID" style="background-color: green;">
      
    </form>   
    </fieldset> 
    <table class="table table-dark">
      <thead>
        <tr>
          <th>ID</th>
          <th>Name</th>
          <th>DOB</th>
          <th>Salary</th>
          <th>Address</th>
          <th>Phone</th>
          <th>Email Addr</th>
          <th>Education</th>
          <th>Designation</th>
          <th>Addhar no</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>${emp.id}</td>
          <td>${emp.name}</td>
          <td>${emp.dob}</td>
          <td>${emp.sal}</td>
          <td>${emp.address}</td>
          <td>${emp.phone}</td>
          <td>${emp.email}</td>
          <td>${emp.education}</td>
          <td>${emp.designation}</td>
          <td>${emp.aadhar}</td>
        </tr>
      </tbody>
    </table>
  </div>
</div>
  <script>
    function printTable() {
      window.print();
    }
  </script>

</body>
</html>
