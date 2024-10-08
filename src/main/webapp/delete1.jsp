<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{
  background-image: url("employee3.jpg");
            background-size: cover;
            width: 100%;
            height: 600px;
}
#box {
           margin-top:100px;
            height: auto;
            width: 50%;
            margin-left: 400px;
            border: 2px solid black; 
            box-shadow: 9px 6px 15px 9px #342a2a; 
            
            background-color: white;
           
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
            
            height: 20px;
            padding: 5px;
            
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
       


</style>
</head>
<body>
 <div id="box">
        <h1 id="head"><u> Employee Details</u></h1>
        <center>
            <h1 style="color: green">${message}</h1>
            <h1 style="color: red">${errormessage}</h1>
        </center>
        <form action="remove1" method="post" name="employeeForm" onsubmit="return validateForm()">
            <div id="box1">
                <label>Employee ID:</label>
               <input type="text" name="id" value="<%= request.getParameter("id") %>" readonly>
       
                <label>Emp  Name:</label>
               <input type="text"  value="<%= request.getParameter("name") %>">

                <br><br><br>
                <label>Employee DOB:</label>
                <input type="date" name="dob" style="width: 160px;" value="<%= request.getParameter("dob") %>">

                <label>Employee Salary:</label>
               <input type="number" name="sal" value="<%= request.getParameter("sal") %>">

                <br><br><br>
                <label>Emp Addr:</label>
                <input type="text" name="address" value="<%= request.getParameter("address") %>">
          
                <label>Emp phone:</label>
                <input type="text" name="phone" value="<%= request.getParameter("phone") %>">

                <br><br><br>
                <label> Email Addr:</label>
               <input type="email" name="email" value="<%= request.getParameter("email") %>">
                <label>Highest Education :</label>
               <select name="education" style="height: 30px;">
      <option value="" disabled="disabled" selected="selected">Select Education here</option>
    <option value="BSC" <% if ("BSC".equals(request.getParameter("education"))) { %> selected <% } %>>BSC</option>
    <option value="ECS" <% if ("ECS".equals(request.getParameter("education"))) { %> selected <% } %>>ECS</option>
    <option value="BCA" <% if ("BCA".equals(request.getParameter("education"))) { %> selected <% } %>>BCA</option>
    <option value="B-TECH" <% if ("B-TECH".equals(request.getParameter("education"))) { %> selected <% } %>>B-TECH</option>
    <option value="BE" <% if ("BE".equals(request.getParameter("education"))) { %> selected <% } %>>BE</option>
    <option value="MSC" <% if ("MSC".equals(request.getParameter("education"))) { %> selected <% } %>>MSC</option>
    <option value="MCA" <% if ("MCA".equals(request.getParameter("education"))) { %> selected <% } %>>MCA</option>
</select>

                <br><br><br>
                <label>Designation :</label>
                <input type="text" name="designation" value="<%= request.getParameter("designation") %>">
          
                <label>Addhar no:</label>
                <input type="text" name="aadhar" value="<%= request.getParameter("aadhar") %>">

                <br><br><br>
              <span id="btn">
              <input type="text" name="id" value="<%= request.getParameter("id") %>">
              <input type="submit" value="Delete Employee" style="color: white; background-color: red; height: 40px; width: 120px;">
                 </span>
            </div>
             
        </form>
    </div>

</body>
</html>