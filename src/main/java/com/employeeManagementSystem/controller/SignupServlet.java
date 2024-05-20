package com.employeeManagementSystem.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/signup")
public class SignupServlet extends HttpServlet{
	
	private static final long serialVersionUID = 1L;
	
		// MySQL database properties
		static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
		static final String DB_URL = "jdbc:mysql://localhost:3306/employee_management_System";
		static final String USER = "root";
		static final String PASS = "root";
		
		//query for insert the data
		static final String INSERTINFO="insert into admin(full_name,profile_name,email,password) values(?,?,?,?)";
		
		// connecting to database
		public Connection getConn() {
			Connection con = null;
			try {
				Class.forName(JDBC_DRIVER);
				con = DriverManager.getConnection(DB_URL, USER, PASS);

			} catch (Exception e) {
				e.printStackTrace();
			}
			return con;
		}
		
		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			String fullName=req.getParameter("fullName");
			String profileName=req.getParameter("profileName");
			String email=req.getParameter("email");
			String password=req.getParameter("password");
			String confirmPassword=req.getParameter("confirmPassword");
			
			//validation for confirm password
			 if(password != null && confirmPassword != null) {
		            if(!password.equals(confirmPassword)) {
		            	 req.setAttribute("status", "invalid");
		            	 req.getRequestDispatcher("signup.jsp").forward(req, resp);
		            }else {
		            	try (Connection con=getConn();
								PreparedStatement ps=con.prepareStatement(INSERTINFO)){
							ps.setString(1, fullName);
							ps.setString(2, profileName);
							ps.setString(3, email);
							ps.setString(4, password);
						int result=	ps.executeUpdate();
						if(result==1) {
							System.out.println("signup successfully...");
						}else {
							System.out.println("something went wrong");
						}
							
							req.getRequestDispatcher("login.jsp").forward(req, resp);
							
						} catch (Exception e) {
							e.printStackTrace();
						}
		            }
		            
		        	
					
		        }
		
			
			
		}
}
