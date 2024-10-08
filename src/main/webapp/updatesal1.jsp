<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Management System</title>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <style>
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
        
        .box {
            margin: auto;
            width: 50%;
             box-shadow: 9px 6px 15px 9px #342a2a; 
             
         
        }
        
        .center {
            text-align: center;
        }
        
        table {
            border-collapse: collapse;
            width: 100%;
        }
        
        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
        }
        
        th {
            background-color: #f2f2f2;
        }
        
        .btn {
            background-color: green;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        
        .btn:hover {
            background-color: #d32f2f;
        }
        
        .table {
            background-color: white;
            color: black;
            text-align: center;
             background-image: url("add_employee.jpg");
           
        }
        #msg{
          background-color: white;
          width:100%;
          text-align: center;
          align-items: center;
         
        }
        .center{
          background: white;
        }
    </style>
</head>
<body>
     
    <div class="box">
        <h1 class="center">Edit Employee</h1>
        <div id="msg">
    <center>
        <h1 style="color: green; " >${message}</h1>
        <h1 style="color: red">${errormessage}</h1>
    </center>
    </div>
        <form action="updatesalary" method="post" class="center">
            <table class="table">
                <tr>
                    <th>Field</th>
                    <th>Value</th>
                </tr>
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="id" value="<%= request.getParameter("id") %>" readonly></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="name" value="<%= request.getParameter("name") %>"></td>
                </tr>
                <tr>
                    <td>dept</td>
                    <td><input type="text" name="dept" value="<%= request.getParameter("dept") %>"></td>
                </tr>
                <tr>
                    <td>medical</td>
                    <td><input type="text" name="medical" value="<%= request.getParameter("medical") %>"></td>
                </tr>
                <tr>
                    <td>ptax</td>
                    <td><input type="text" name="ptax" value="<%= request.getParameter("ptax") %>"></td>
                </tr>
                <tr>
                    <td>bonus</td>
                    <td><input type="text" name="bonus" value="<%= request.getParameter("bonus") %>"></td>
                </tr>
                <tr>
                    <td>providentFund</td>
                    <td><input type="text" name="providentFund" value="<%= request.getParameter("providentFund") %>"></td>
                </tr>
                <tr>
                    <td>netSalary</td>
                    <td><input type="text" name="netSalary" value="<%= request.getParameter("netSalary") %>"></td>
                </tr>
                
            </table>
            <input type="submit" value="Update Salary " class="btn">
             <div class="btn-custom"><a href="ManageSalary.jsp"><i class="fa fa-arrow-circle-left"></i>&nbsp;Back</a></div>
            
        </form>
    </div>
</body>
</html>
