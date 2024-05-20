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
@WebServlet("/update")
public class UpdateEmployee extends HttpServlet{

	private static final long serialVersionUID = 1L;

	  @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		  
		  int id=Integer.parseInt(req.getParameter("id"));
		  String name=req.getParameter("name");
		  String department=req.getParameter("department");
		  String salary=req.getParameter("salary");
		  String city=req.getParameter("city");
		  String email=req.getParameter("email");
		  String contact=req.getParameter("contact");
		  Employee employee=new Employee(id,name,department,salary,city,email,contact);
		  EmployeeDaoImpl edi= new EmployeeDaoImpl();
		  boolean f= edi.updateEmployee(employee);
		  HttpSession session=req.getSession();
		   if(f) {
			   session.setAttribute("success", "Employee update successfully");
			   resp.sendRedirect("employee-list.jsp");
		   }else {
			   session.setAttribute("failed", "Somethig went wrong on server");
			   resp.sendRedirect("employee-list.jsp");
		   }
		  
	}
	
}
