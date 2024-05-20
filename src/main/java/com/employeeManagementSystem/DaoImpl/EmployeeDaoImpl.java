package com.employeeManagementSystem.DaoImpl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.employeeManagementSystem.DAO.EmployeeDao;
import com.emplyoyeeManagementSystem.model.Employee;

public class EmployeeDaoImpl implements EmployeeDao {
	// MySQL database properties
	static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
	static final String DB_URL = "jdbc:mysql://localhost:3306/employee_management_System";
	static final String USER = "root";
	static final String PASS = "root";

	// SQL queries for CRUD operation
	static final String GETALLEMPLOYEE = "Select * from employee";
	static final String CREATEEMPLOYEE = "insert into employee(name,department,salary,city,email,phone_number) values(?,?,?,?,?,?)";
	static final String GETEMPLOYEEBYID = "Select * from employee where id=?";
    static final String UPDATEEMPLOYEE = "update employee set name=?,department=?,salary=?,city=?,email=?,phone_number=? where id=?";
    static final String DELETEEMPLOYEE= "delete from employee where id=?";
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

	// implementation for retrieve all employee
	@Override
	public List<Employee> employeeList() {
		List<Employee> list = new ArrayList<Employee>();

		try (Connection con = getConn(); PreparedStatement ps = con.prepareStatement(GETALLEMPLOYEE)) {
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Employee e = new Employee(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4),
						rs.getString(5), rs.getString(6), rs.getString(7));
				list.add(e);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	// implementation for add employee
	@Override
	public Boolean addEmployee(Employee employee) {
		Boolean f = false;
		try (Connection con = getConn(); PreparedStatement ps = con.prepareStatement(CREATEEMPLOYEE)) {

			ps.setString(1, employee.getName());
			ps.setString(2, employee.getDepartment());
			ps.setString(3, employee.getSalary());
			ps.setString(4, employee.getCity());
			ps.setString(5, employee.getEmail());
			ps.setString(6, employee.getPhoneNumber());
			
			int result = ps.executeUpdate();
			if (result > 0) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	// implementation for retrieve  employee by id
	@Override
	public Employee getEmloyeeById(int id) {
		Employee e = null;
		try (Connection con = getConn(); PreparedStatement ps = con.prepareStatement(GETEMPLOYEEBYID)) {
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				e = new Employee(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7));

			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return e;
	}

	// implementation for update employee
	@Override
	public Boolean updateEmployee(Employee employee) {
		   Boolean f=false;
		   try (Connection con=getConn();
				   PreparedStatement ps=con.prepareStatement(UPDATEEMPLOYEE))
		   {
			   ps.setString(1, employee.getName());
				ps.setString(2, employee.getDepartment());
				ps.setString(3, employee.getSalary());
				ps.setString(4, employee.getCity());
				ps.setString(5, employee.getEmail());
				ps.setString(6, employee.getPhoneNumber());
				ps.setInt(7, employee.getId());
				int result = ps.executeUpdate();
				if (result > 0) {
					f = true;
				}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	// implementation for delete employee
	@Override
	public Boolean deleteEmployee(int id) {
		Boolean f=false;
		try(Connection con=getConn();
				PreparedStatement ps=con.prepareStatement(DELETEEMPLOYEE)) {
			ps.setInt(1, id);
			int result=ps.executeUpdate();
					if(result == 1) {
						f=true;
					}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

}
