<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit form</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">

</div>
	<div class="container">
		
		<div class="panel panel-primary">
		  <div class="panel panel-heading">
		  		<div class="row">
		  			<h3>Welcome to Edit..u r not suppose to edit id</h3>
		  		</div>
				
		  </div>
		  <div class="panel panel-body">
		  <form action="update" method="post">
		  <div class="row">
				<div class="col-md-3">Id</div><div class="col-md-9"><input type="text" name="employeeId" value="${employeeDTO.employeeId}" readonly/></div>
			</div>
			<div class="row">
				<div class="col-md-3">EmpName</div><div class="col-md-9"><input type="text" name="employeeName" value="${employeeDTO.employeeName}"/></div>
			</div>
			<div class="row">
				<div class="col-md-3">EmailId</div><div class="col-md-9"><input type="text" name="emailId" value="${employeeDTO.emailId}"/></div>
			</div>
			<div class="row">
				<div class="col-md-3">Password</div><div class="col-md-9"><input type="text" name="password" value="${employeeDTO.password}"/></div>
			</div>
			<div class="row">
				<div class="col-md-3">Salary</div><div class="col-md-9"><input type="text" name="salary" value="${employeeDTO.salary}"/></div>
			</div>
			
			<button type="submit">UPDATE</button>
			</form>
			</div>
		  
		</div>
	</div>
</body>
</html>