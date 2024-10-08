<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
  
<title>Employee Management System</title>
<style>
    body {
         background-image: url("employee2.jpg"); 
        background-size: cover;
        position:fixed;
      
    }
    #head {
        color:white;
        margin-left: 50px;
        font-size: 100px;
        background-color: #0c0b0b63;
        animation: blink 0.5s infinite; 
        margin-top: 0px;
        margin-bottom:500px;
        width: 100%;
        text-align: center;
        
        
    } 
    .carousel-item img{
  height: 750px;
  width: 100%;
}

    @keyframes blink {
        0%, 49%, 100% {
            opacity: 1;
        }
        50% {
            opacity: 0;
        }
    }

    #btn {
         background-color: #b2bcd3;
        color: black;
        width: 250px;
        height: 45px;
         border-radius: 10px;
       
        margin-left: 650px;
        
    } 
    #btn:hover{
	   border: 2px solid orange;
	}
	#btn a:hover{
	  border: 2px solid red;
	   color: green;
	}
    #btn a {
        
        width: 100%;
        height: 100%;
        text-decoration: none;
        color: black;
        border: 2px solid white;
    }
</style>
</head>
<body>

     <h1 id="head">Employee management system</h1>
      <a href="home2.jsp">
         <button id="btn">Click Here to Continue</button>
        </a>
        </div>
</body>
</html>
