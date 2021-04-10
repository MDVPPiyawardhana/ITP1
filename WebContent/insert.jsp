<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import ="benefits_default.Allowance" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>

body {
  background-image: url('Images/employee.jpg');
  background-size:     cover;                     
  background-repeat:   no-repeat;
  background-position: center center;
}

.content {
  max-width: 800px;
  margin: auto;
  padding: 30px;
  opacity: 0.9;
}

section {
  display: -webkit-flex;
  display: flex;
}

/* Style the navigation menu */
nav {
  -webkit-flex: 1;
  -ms-flex: 1;
  flex: 1;
  background: #A9A9A9;
  padding-top: 200px;
  padding-left: 30px;
  padding-right: 30px;
}

/* Style the list inside the menu */
nav ul {
  list-style-type: none;
  padding: 0;
}

/* Style the content */
div {
  -webkit-flex: 3;
  -ms-flex: 3;
  flex: 3;
  background-color: #f1f1f1;
  padding: 0px;
}

@media (max-width: 600px) {
  section {
    -webkit-flex-direction: column;
    flex-direction: column;
  }
}

.block {
  display: block;
  width: 100%;
  border: none;
  background-color: #000000;
  color: white;
  padding: 30px 28px;
  font-size: 16px;
  cursor: pointer;
  text-align: center;
}

.block:hover {
  background-color: #ddd;
  color: black;
}

input[type=submit]{
  background-color: #000000;
  border: none;
  color: white;
  padding: 16px 32px;
  text-decoration: none;
  margin: 4px 2px;
  cursor: pointer;
}

input[type=text], select {
  width: 50%;
  padding: 8px 10px;
  margin: 0 0;
  display: inline-block;
  border: 2px solid #000000;
  border-radius: 4px;
  box-sizing: border-box;
}

</style>

</head>
<body>

<section>

  <nav style="opacity: 0.9;">
    <ul>
      <li><a href="success.jsp"><button class="block">View</button></a></li>
      <li style="padding-top:10px;"><button class="block">Delete</button></li>
    </ul>
  </nav>

<div class="content">
<form method="POST" action="insertDetails">

 
<div style="opacity: 0.9;">

	<h1 style="text-align: center;font-size:50px">Input Allowance Details</h1>
     
	<h2>Employee ID:</h2><input type="text" name="empId" required><br>
	<!-- <h2>Allowance Type:</h2><input type="text" name="type"><br> -->
	<h2>Allowance Type:</h2>
        <select id="type" name="type">
          <option value="Food">Food</option>
          <option value="Fuel">Fuel</option>
          <option value="Travel Expenses">Travel Expenses</option>
        </select>
	<h2>Unit Price:</h2><input type="text" name="unitPrice" required><br>
	<h2>Quantity:</h2><input type="text" name="qty" required><br><br>
	<!-- <h2>Total:</h2><input type="text" name="total"><br><br> -->
	
	<input type="submit" name="btnsubmit" id="submit"><br><br>
	
</div>


<%

 String key = (String)request.getAttribute("val");

%>
<% 

if(key == "ok"){
Allowance obj = (Allowance)request.getAttribute("value"); 

%>
<table>
	<tr>
		<td>AllowanceId</td>
		<td>EmployeeId</td>
		<td>AllowanceType</td>
		<td>UnitPrice</td>
		<td>Quantity</td>
		<td>Total</td>
	</tr>
	<tr>
	<td><h3><%=obj.getAllowanceId()%></h3></td>

	<td><h3><%=obj.getEmpId()%></h3></td>

	<td><h3><%=obj.getType()%></h3></td>

	<td><h3><%=obj.getUnitPrice()%></h3></td>
	
	<td><h3><%=obj.getQty()%></h3></td>
	
	<td><h3><%=obj.getTotal()%></h3></td>
	</tr>
</table>

<% } %>

</form>
</div>

</section>

</body>
</html>