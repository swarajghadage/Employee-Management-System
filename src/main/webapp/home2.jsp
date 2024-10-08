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
       
        width: 100%;
        text-align: center;
        
        
    } 
    
     .btn-custom :hover{
              background-position: right center; 
            color: #fff;
            text-decoration: none;
            }
         
         .btn-custom {
             background-image: linear-gradient(to right, #1CD8D2 0%, #93EDC7  51%, #1CD8D2  100%);
            }
             .all{
              display: flex;
             }      
        
        .btn-custom {
            background-color: #48f2e2;
            color: #e00c5e;
            width: 200px;
            height: 45px;
            margin: 10px;
            margin-top:10px;
            margin-bottom:10px;
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
    
    #box{
 
    width: 47%;
    height: 400px;
    margin-left: 450px;
     background-image:url("employee1.jpg");
    background-size:100%;
    color:white;
   
    background-color: white;
    box-shadow: 9px 6px 15px 9px #342a2a;
    border: 2px solid black;
    display: flex;
    flex-direction: row;
    justify-content: space-around; 
 }
 
  #box1{
   
  
   margin-top: 10px;
   
 }  
 
 #msg{
    background: white;
    height: auto;
    width: 47%;
    text-align: center;
    margin-left: 450px;
    margin-top: 100px;
 }
   #box2{
    width: 20%;
    height: 200px;
    background-color: white;
    position: absolute;
    margin-left: 400px;
    
     
   }
</style>
</head>
<body>


     <h1 id="head">Employee management system</h1>
     
     
    <form action="userlogin" method="post">
    <div id="msg">
     
	<h2 id="head2"> Welecome to  Login</h2>
	</div>
   <div id="box">
   
   <div id="box1">
       <div class="all">
 <div class="btn-custom"><a href="login.jsp"><i class="fa fa-arrow-circle-left"></i>&nbsp;HR LOGIN</a></div>
 <div class="btn-custom"><a href="login1.jsp"><i class="fa fa-arrow-circle-left"></i>&nbsp;Employee LOGIN</a></div>
 </div>
   </div>
    
   
 
    </div>
  </form>
     
 
</body>
</html>
