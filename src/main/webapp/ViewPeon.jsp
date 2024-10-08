<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
            overflow: hidden;
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
            height: 100vh;
            box-shadow: 9px 6px 15px 9px #342a2a;
           
        }

    #btn2 {
     height: 40px;
         width: 120px;
         background-color: #000;
         color: white;
          border: 2px solid white;
          border-radius: 5px;
          cursor: pointer;
      margin-left: 200px;
    }

    #btn2 a {
      text-decoration: none;
      
    }
    .all{
    display: flex;
    }

    #head {
      color: orange;
      background: black;
      text-align: center;
    }
    .search-input {
      width: 20%;
    }
    #thead th{
     background-color:purple;
     color: white;    
    
     }
    

  </style>

  <script>
    function searchEmployees() {
      var input, filter, table, tr, td, i, txtValue;
      input = document.getElementById("searchInput");
      filter = input.value.toUpperCase();
      table = document.querySelector(".table");
      tr = table.getElementsByTagName("tr");

      for (i = 0; i < tr.length; i++) {
        td = tr[i].getElementsByTagName("td")[0]; 
        if (td) {
          txtValue = td.textContent || td.innerText;
          if (txtValue.toUpperCase().indexOf(filter) > -1) {
            tr[i].style.display = "";
          } else {
            tr[i].style.display = "none";
            
          }
        }
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
<div id="box">
    <div class="btn-custom"><a href="employeemanage.jsp"><i class="fa fa-home"></i>&nbsp;Home</a></div>
    <button class="btn-custom" onclick="printTable()"><i class="fa fa-print"></i>&nbsp;Print</button>
      <div class="btn-custom"><a href="employeemanage.jsp"><i class="fa fa-arrow-circle-left"></i>&nbsp;Back</a></div>
</div>


<div class="container mt-3">  
  <h1 id="head"> Employee Data: </h1>

  
  <div class="input-group mb-3">
  
    <input type="text" class=" search-input"  placeholder="Search Employee by ID" id="searchInput">
    <button class="btn btn-outline-secondary" type="button" onclick="searchEmployees()" style="background: black;">Search</button>
   
    
  
  </div>

  <table class="table">
    <thead id="thead">
      <tr>
        <th> ID</th>
        <th> Name</th>
         <th> Salary</th>
          <th> phone</th>
          <th> Address</th>
      
         <th> Education</th>
          <th>Addhar no</th>
      
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${emplist}" var="e">
        <tr>
          <td>${e.id}</td>
          <td>${e.name}</td>
            <td>${e.salary}</td>
            <td>${e.phone}</td>
            <td>${e.address}</td>
        
           <td>${e.education}</td>
            <td>${e.aadhar}</td>
        
        </tr>
      </c:forEach>
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
