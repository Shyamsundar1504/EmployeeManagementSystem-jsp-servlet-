<%@page import="java.util.List"%>
<%@page import="com.emplyoyeeManagementSystem.model.Employee"%>
<%@page import="com.employeeManagementSystem.DaoImpl.EmployeeDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    if (session.getAttribute("name") == null) {
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee-List</title>
<%@include file="assets/all_css.jsp"%>
<style type="text/css">
.button {
    border: 1px solid gold;
    border-radius: 0;
    border-left: none;
    background-color: gold;
    height: 3rem;
    width: 3rem
}

.actions {
    visibility: hidden;
}

tr:hover .actions {
    visibility: visible;
}

#search-box {
    
    margin-bottom: 10px;
}

input:hover {
    background-color: #f0f1f2;
}

input {
    padding-left: 1rem;
}

.actions a {
    color: #757575;
    border-radius: 100%;
}

.actions a:hover {
    background-color: #f0f1f2;
    border-radius: 100%;
}
.table-heade{
background-color: #ffe6e6;
}

</style>
</head>
<body>
    <%@include file="assets/navbar.jsp"%>

    <c:if test="${ not empty success  }">
        <p class="text-center text-success">${success}</p>
        <c:remove var="success" scope="session" />
    </c:if>
    <c:if test="${ not empty failed  }">
        <p class="text-center text-danger">${failed}</p>
        <c:remove var="failed" scope="session" />
    </c:if>


    <div class="container-fluid p-3">


        <div class="d-flex justify-content-between">
            <div >
                <h3 style="padding-top: 7px;">Employee list </h3>
            </div>
            <div id="search-box">
                <input type="search" id="search" placeholder="Search employee..."
                    onkeyup="filterTable()"
                    style="border: 1px solid #9966ff; outline: none; height: 3rem; width: 20rem; border-radius: 5px;" />

            </div>
        </div>
        <table class="table ">
            <thead class="table-heade">
                <tr>
                    <td>Id</td>
                    <td>Name</td>
                    <td>Department</td>
                    <td>Salary</td>
                    <td>City</td>
                    <td>Email</td>
                    <td>Contact</td>
                    <td></td>
                </tr>
            </thead>
            <tbody id="employeeTable">
                <%
                    EmployeeDaoImpl empDao = new EmployeeDaoImpl();
                    List<Employee> list = empDao.employeeList();
                    if (list.isEmpty()) {
                %>
                    <tr>
                        <td colspan="8" class="text-center text-danger " style="font-size: 30px; font-weight: 900px">No employees exist</td>
                    </tr>
                <%
                    } else {
                        for (Employee e : list) {
                %>
                <tr>
                    <td><%=e.getId()%></td>
                    <td><%=e.getName()%></td>
                    <td><%=e.getDepartment()%></td>
                    <td><%=e.getSalary()%></td>
                    <td><%=e.getCity()%></td>
                    <td><%=e.getEmail()%></td>
                    <td><%=e.getPhoneNumber()%></td>
                    <td class="actions"><a
                        href="edit-employee.jsp?id=<%=e.getId()%>"   class="btn btn-sm"><i
                            class="fa-regular fa-pen-to-square"></i> </a> 
                            
                            <a href="#"
                        class="btn  btn-sm ml-2" onclick="confirmDelete(<%= e.getId() %>); return false;"><i class="fa-solid fa-trash-can"></i>
                    </a></td>
                </tr>
                <%
                        }
                    }
                %>
            </tbody>
        </table>
    </div>

    <script>
    function confirmDelete(employeeId) {
        if (confirm("Do you really want to delete this employee?")) {
            window.location.href = "delete?id=" + employeeId;
        }
    }
        <%@include file="assets/js/search.js" %>
        
        
    </script>
</body>
</html>
