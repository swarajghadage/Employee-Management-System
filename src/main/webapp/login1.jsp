<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Management System</title>
<style type="text/css">
 body {
            background-color: black;
            background-image: url("print.jpg");
            size: cover;
        }
  
  #head {
        color:white;
       
        font-size: 100px;
        background-color: #0c0b0b63;
        animation: blink 0.5s infinite; 
        margin-top: 0px;
        width: 100%;
        text-align: center;
        
       
    } 

    @keyframes blink {
        0%, 49%, 100% {
            opacity: 1;
        }
        50% {
            opacity: 0;
        }
    }
 
 #box{
 
    width: 47%;
    height: auto;
    background-image:url("employee3.jpg");
    background-size:100%;
    margin-left: 450px;
    color:white;
   /*  margin-top:200px; */
    background-color: white;
    box-shadow: 9px 6px 15px 9px #342a2a;
    border: 2px solid black;
    display: flex;
    flex-direction: row;
    justify-content: space-around; 
 }
 
 #box1{
   width: 40%;
   height: 300px;
   position:  relative;
   margin-top: 20px;
   
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
   #img{
     width: 300px;
     height: 300px;
     position: absolute;
     
   }
   
   input {
	margin-left: -109px;
	padding: 10px;
	
}
label{
     margin-top:40px;
    margin-left: -109px;
}
#btn{
   background-color: green;
   color: white;
   width: 100px;
   height: 45px;
   
}
#head2{
margin:0px;
  text-align: center;
  font-size: 30px;
}

</style>

</head>
<body>


 <h1 id="head">Employee Management System</h1>
   
  <form action="userlogin" method="post">
    <div id="msg">
     <h1 style="color: green">${msg }</h1>
	<h1 style="color: red">${errormsg }</h1>
	<h2 id="head2"> Employee Login</h2>
	</div>
   <div id="box">
   
   <div id="box1">
    <label>Username:</label><br>
    <input type="text" name="username" placeholder="username">
    <br><br>
    <label>Password:</label><br>
    <input type="password" name="password" placeholder="password">
    <br><br>
    <a><input type="submit" value="login" id="btn"> </a>   
   </div>
    
   
  <!--  <div id="box2">
    <img alt="" src="second.jpg" id="img">
   </div> -->
    </div>
  </form>

</body>
</html>