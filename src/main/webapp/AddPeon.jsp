<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
<title>Peon Information Form</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 0;
    }
    .container {
        max-width: 500px;
        margin: 50px auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    h2 {
        text-align: center;
        color: #333;
    }
    label {
        display: block;
        margin-bottom: 5px;
        color: #666;
    }
    input[type="text"],
    input[type="submit"],
    select,
    textarea {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }
    input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        border: none;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
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
                 <a class="nav-link" href="employeemanage.jsp">Back</a>
          
            </div>
        </div>
    </div>
</nav>
    <div class="container">
        <h2>Peon Information Form</h2>
         
        <center>
            <h1 style="color: green">${message}</h1>
            <h1 style="color: red">${errormessage}</h1>
        </center>
        <form action="addepeon" method="post">
            <label for="id">ID:</label>
            <input type="text" id="id" name="id" required>
            
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>
            
            <label for="salary">Salary:</label>
            <input type="text" id="salary" name="salary" required>
            
            <label for="phone">Phone Number:</label>
            <input type="text" id="phone" name="phone" required>
            
            <label for="address">Address:</label>
            <textarea id="address" name="address" rows="4" required></textarea>
            
            <label for="education">Education:</label>
            <select id="education" name="education" required>
                <option value="">Select Education Level</option>
                <option value="10th">10th</option>
                <option value="12th">12th</option>
                <option value="Graduate">Graduate</option>
                <option value="Postgraduate">Postgraduate</option>
            </select>
            
            <label for="aadhar">Aadhar Number:</label>
            <input type="text" id="aadhar" name="aadhar" required>
            
            <input type="submit" value="Submit">
        </form>
    </div>
</body>
</html>
