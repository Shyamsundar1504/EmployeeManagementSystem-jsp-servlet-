package com.employeeManagementSystem.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.employeeManagementSystem.DaoImpl.EmployeeDaoImpl;
@WebServlet("/delete")
public class DeleteEmployee extends HttpServlet{

	private static final long serialVersionUID = 1L;
  @Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	  int id=Integer.parseInt(req.getParameter("id"));
		EmployeeDaoImpl edi=new EmployeeDaoImpl();
		boolean f= edi.deleteEmployee(id);
		 HttpSession session=req.getSession();
		   if(f) {
			   session.setAttribute("success", "Employee delete successfully");
			   resp.sendRedirect("employee-list.jsp");
		   }else {
			   session.setAttribute("failed", "Somethig went wrong on server");
			   resp.sendRedirect("employee-list.jsp");
		   }

}
}
