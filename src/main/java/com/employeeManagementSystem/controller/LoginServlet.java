package com.employeeManagementSystem.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/login")
public class LoginServlet extends HttpServlet{


	private static final long serialVersionUID = 1L;
     
	//MySQL properties
	static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
	static final String DB_URL = "jdbc:mysql://localhost:3306/employee_management_System";
	static final String USER = "root";
	static final String PASS = "root";
	
	//query for retrieve admin details
	static final String GETADMININFO="select * from admin where email=? and password=?";
	
	
	//connecting to database
	public Connection getcon() {
		Connection con=null;
		try {
			Class.forName(JDBC_DRIVER);
			con=DriverManager.getConnection(DB_URL, USER, PASS);
			
		}catch(SQLException | ClassNotFoundException e) {
			e.printStackTrace();
		}
		return con;
	}
	
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session=req.getSession();
		String email=req.getParameter("email");
		String password= req.getParameter("password");
		
		try(Connection con=getcon();
				PreparedStatement ps=con.prepareStatement(GETADMININFO)) {
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs=ps.executeQuery();
			RequestDispatcher rd=null;
			if(rs.next()) {
				session.setAttribute("name", rs.getString(3));
				
				 resp.sendRedirect("home.jsp");
			}else {
				req.setAttribute("status", "invalid");
				rd=req.getRequestDispatcher("login.jsp");
			}
			
			rd.forward(req, resp);
			
		    // Set cache control headers to prevent caching
            resp.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
            resp.setHeader("Pragma", "no-cache"); // HTTP 1.0
            resp.setDateHeader("Expires", 0); // Proxies
            
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
