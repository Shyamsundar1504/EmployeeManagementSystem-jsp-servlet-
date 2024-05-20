package com.employeeManagementSystem.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.employeeManagementSystem.DaoImpl.EmployeeDaoImpl;
import com.emplyoyeeManagementSystem.model.Employee;
@WebServlet("/insert")
public class EmployeeServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	EmployeeDaoImpl edi=new EmployeeDaoImpl();
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("name");
		String department=req.getParameter("department");
		String salary=req.getParameter("salary");
		String city=req.getParameter("city");
		String email=req.getParameter("email");
		String phoneNumber=req.getParameter("contact");
		
		Employee e=new Employee(name,department,salary,city,email,phoneNumber);
	Boolean f=	edi.addEmployee(e);
	HttpSession session=req.getSession();
		if(f) {
			session.setAttribute("success", "Employee add successfully");
			resp.sendRedirect("add-employee.jsp");
		}else {
			  session.setAttribute("failed", "Somethig went wrong on server");
			   resp.sendRedirect("add-employee.jsp");
		}
	}
	
	
	
}
