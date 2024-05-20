<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	  <% if(session.getAttribute("name")==null){
    	response.sendRedirect("login.jsp");
    }%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin: Home</title>
<%@ include file="assets/all_css.jsp"%>

</head>
<body style="background-color: #f0f1f2">

	<%@ include file="assets/navbar.jsp"%>

	


	<div class="container p-5 mt-5" >
		<div class="row">
			<div class="col-md-4 " >
				<a href="add-employee.jsp" class="text-decoration-none text-dark">
					<div class="card text-light" style="background-color: #3385ff;">
						<div class="card-body text-center">
							<div>
								<i class="fa-solid fa-square-plus fa-3x text-light"></i>
							</div>
							<h4>Add Employee</h4>
							<p>--------------</p>
						</div>
					</div>
				</a>
			</div>
			<div class="col-md-4">
				<a href="employee-list.jsp" class="text-decoration-none text-dark">
					<div class="card text-light" style="background-color:#00b38f;">
						<div class="card-body text-center">
							<div>
								<i class="fa-solid fa-users fa-3x text-light"></i>
							</div>
							<h4>All Employee</h4>
							<p>--------------</p>
						</div>
					</div>
				</a>
			</div>
			
			<div class="col-md-4">
				<a class="text-decoration-none text-dark" data-toggle="modal"
					data-target="#exampleModal">
					<div class="card text-light" style=" cursor: pointer; background-color:  #d24dff;">
						<div class="card-body text-center">
							<div class="text-light">
								<i class="fa-solid fa-right-from-bracket fa-3x "></i>
							</div>
							<h4>Logout</h4>
							<p>-----------</p>
						</div>
					</div>
				</a>
			</div>
		</div>

		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div >
						
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					
					<div class="modal-body">
						<div class="text-center">
							<h4>Do you want to logout ?</h4>
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
							<a href="logout" class="btn btn-danger text-white">Logout</a>
						</div>
					</div>

				</div>
			</div>
		</div>

	</div>
	<div style="margin-top:16.5rem">
<%@include file="assets/footer.jsp" %>
</div>
</body>
</html>