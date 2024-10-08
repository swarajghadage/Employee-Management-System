<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Employee Management System</title>
    <style>
        body {
            background-image: url("employee3.jpg");
            background-size: cover;
            position: fixed;
            width: 100%;
            height: 100vh;
            color: wh
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
            color: #e00c5e;
            width: 200px;
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
            <div class="navbar-nav" >
                <a class="nav-link" href="#">Employee Management System</a>
                
            </div>
        </div>
    </div>
</nav> 

<div id="box">
    <div class="btn-custom"><a href="home.jsp"><i class="fa fa-home"></i>&nbsp;Home</a></div>
    <div class="btn-custom"><a href="viewallceo"><i class="fa fa-user"></i>&nbsp;CEO</a></div>
    <div class="btn-custom"><a href="Viewallhr"><i class="fa fa-user"></i>&nbsp;HR </a></div>
    
    <div class="btn-custom"><a href="viewEmp"><i class="fa fa-user"></i>&nbsp;Employee  </a></div>
    <div class="btn-custom"><a href="viewpeon"><i class="fa fa-user"></i>&nbsp;Peon</a></div>
       <div class="btn-custom"><a href="login.jsp"><i class="fa fa-arrow-circle-left"></i>&nbsp;Back</a></div>
</div>

</body>
</html>
