<%@page import="com.emplyoyeeManagementSystem.model.Employee"%>
<%@page import="com.employeeManagementSystem.DaoImpl.EmployeeDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <% if(session.getAttribute("name")==null){
    	response.sendRedirect("login.jsp");
    }%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>update</title>
<%@include file="assets/all_css.jsp" %>
</head>
<body>
  <%@include file="assets/navbar.jsp" %>
  
  
  
<div class="container p-5">
		<div class="row">
			<div class="col-md-5 offset-md-4">
				<div class="card">
					<div class="card-body">
					
					
					<h3 class="text-center" style="color:#9966ff">Edit Employee</h3>
					
					
					<%
					int id = Integer.parseInt(request.getParameter("id"));
					EmployeeDaoImpl edi= new EmployeeDaoImpl();
					 Employee e=   edi.getEmloyeeById(id);
					   
					%>
					
						<form action="update" method="post" >
						<input type="hidden" name="id" value="<%=e.getId()%>">
						<div class="form-group">
								<label for="name">Name</label>
								 <input type="text" id="name" value="<%= e.getName() %>"   class="form-control " name="name"  required>  
							</div>
							
							<div class="form-group">
								<label for="Department">Department</label>
								 <input type="text" id="Department" value="<%= e.getDepartment() %>"  class="form-control " name="department"  required>  
							</div>
							<div class="form-group">
								<label for="salary">Salary</label>
								 <input type="text" id="salary" value="<%= e.getSalary() %>"  class="form-control " name="salary"  required>  
							</div>
						<div class="form-group">
								<label for="city">City</label>
								 <input type="text" id="city" value="<%= e.getCity() %>"  class="form-control " name="city"  required>  
							</div>
							<div class="form-group">
								<label for="email">Email</label>
								 <input type="email" id="email" value="<%= e.getEmail() %>"  class="form-control " name="email"  required>  
							</div>
							<div class="form-group">
								<label for="Contact">Contact</label>
								 <input type="text" id="Contact" value="<%= e.getPhoneNumber() %>"  class="form-control " name="contact"  required>  
							</div>
							
							<div class="text-center" >
							<button type="submit" class="btn btn-primary">Update</button>
							</div>
							
							
						</form>
					</div>
				</div>
			</div>
		</div>

	</div>
  
  
  
  
</body>
</html>