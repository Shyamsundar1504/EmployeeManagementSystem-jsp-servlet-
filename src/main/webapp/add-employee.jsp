<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <% if(session.getAttribute("name")==null){
    	response.sendRedirect("login.jsp");
    }%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin: Add Books</title>
<%@include file="assets/all_css.jsp" %>
</head>
<body style="background-color: #f0f1f2 ; font-family: sans-serif;">
<%@include file="assets/navbar.jsp" %>



<div class="container p-5">
		<div class="row">
			<div class="col-md-5 offset-md-4">
				<div class="card">
					<div class="card-body">
					
					
					<h3 class="text-center" style="color:#9966ff">Add Employee</h3>
					
					<c:if test="${ not empty success  }">
					 <p class="text-center text-success">${success}</p>
					 <c:remove var="success" scope="session"/>
					</c:if>
					<c:if test="${ not empty failed  }">
					 <p class="text-center text-danger">${failed}</p>
					 <c:remove var="failed" scope="session"/>
					</c:if>
					
					
						<form action="insert" method="post" >
						<div class="form-group">
								<label for="name">Name</label>
								 <input type="text" id="name" class="form-control " name="name"  required>  
							</div>
							
							<div class="form-group">
								<label for="author">Department</label>
								 <input type="text" id="author" class="form-control " name="department"  required>  
							</div>
							<div class="form-group">
								<label for="salary">Salary</label>
								 <input type="number" id="salary" class="form-control " name="salary"  required>  
							</div>
						<div class="form-group">
								<label for="city">City</label>
								 <input type="text" id="city" class="form-control " name="city"  required>  
							</div>
							<div class="form-group">
								<label for="email">Email</label>
								 <input type="email" id="email" class="form-control " name="email"  required>  
							</div>
							<div class="form-group">
								<label for="Contact">Contact</label>
								 <input type="text" id="Contact" class="form-control " name="contact"  required>  
							</div>
							
							<div class="text-center" >
							<button type="submit" class="btn btn-primary">Submit</button>
							</div>
							
							
						</form>
					</div>
				</div>
			</div>
		</div>

	</div>
	<div class="footer">
 <%@include file="assets/footer.jsp" %>
</div>
</body>
</html>