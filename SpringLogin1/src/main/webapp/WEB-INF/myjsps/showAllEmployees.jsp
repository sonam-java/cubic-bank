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
  <h2>All employees Data=============================</h2>
          
  <table class="table">
    <thead>
      <tr>
        <th>EID</th>
        <th>ENAME</th>
        <th>EMAIL</th>
        <th>PASS</th>
         <th>SAL</th>
          <th>ACTION</th>
      </tr>
    </thead>
    <tbody>
     <c:forEach items="${listOfDTO}" var="employee">
      
      <tr>
        <td>${employee.employeeId}</td>
        <td>${employee.employeeName}</td>
        <td>${employee.emailId}</td>
         <td>${employee.password}</td>
        <td>${employee.salary}</td>
         <td>
           <a href="showEditForm?employeeId=${employee.employeeId}">
            <button type="button" class="btn btn-primary">Edit</button>
            </a>
               <a href="deleteEmployee?employeeId=${employee.employeeId}">
           <button type="button" class="btn btn-danger">Delete</button>
            </a>
         
         
         
         </td>
      </tr>
      </c:forEach>
     
    </tbody>
  </table>
</div>

</body>
</html>
