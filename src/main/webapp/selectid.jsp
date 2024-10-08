<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SelectByID</title>
<style>
	body{
		background-color: gray;
		color: rebeccapurple;
	}
	
	#fieldset{
		color: red;
		width: 70%;
		align-items: center;
		background-color:pink;
		margin-top: 100px;
		
		
	}
	#form{
		font-size: 50px;
		
	}
	legend{
		background-color: black;
		font-size: 30px;
	}
	
	input{
		font-size: 39px;
		border-radius: 20px;
	}
	input:hover{
		border: 4px solid orangered;
		
	}
	
	
</style>
</head>
<body>
	<center> 
	<fieldset id="fieldset"  ">
		<legend>SelectByID</legend>
	<form action="SelectId" id="form" method="post">
		<input type="text" name="id" placeholder="enter id here">
		<br>
		<input type="submit" value="SelectBYId " style="background-color: green;">
	</form>
	
	</fieldset>
	</center> 

</body>
</html>