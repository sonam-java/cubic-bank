<!DOCTYPE html>
<html lang="en">
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>



<div class="container">
<nav class="navbar navbar-expand-sm bg-light">
 		<ul class="navbar-nav">

 <li class="nav-item">
 
      <a class=" mr-5 btn btn-primary" href="showEmployees">Show Employees </a>
    </li>
    	
    	<li class="nav-item"><a class="btn btn-primary" href="register">Employee Registration</a></li>
    
    </ul>
		</nav>
    
  <h2 style="color:red;">=====Employee Data====</h2>
          
  <table class="table">
    <thead>
      <tr>
        <th>EMPID</th>
        <th>EMPNAME</th>
        <th>EMAIL</th>
        <th>PASS</th>
         <th>SALARY</th>
        
      </tr>
    </thead>
    <tbody>
   
      
      <tr>
        <td>${employeeDTO.employeeId}</td>
        <td>${employeeDTO.employeeName}</td>
        <td>${employeeDTO.emailId}</td>
         <td>${employeeDTO.password}</td>
        <td>${employeeDTO.salary}</td>    
         
         
      
      </tr>
    
     
    </tbody>
  </table>
</div>

</body>
</html>
