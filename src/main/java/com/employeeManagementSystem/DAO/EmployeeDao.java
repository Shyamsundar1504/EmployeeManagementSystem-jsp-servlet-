package com.employeeManagementSystem.DAO;

import java.util.List;

import com.emplyoyeeManagementSystem.model.Employee;

public interface EmployeeDao {
  public List<Employee> employeeList();
  public Boolean addEmployee(Employee employee);
  public Employee getEmloyeeById(int id);
  public Boolean updateEmployee(Employee employee);
  public Boolean deleteEmployee(int id);
  
}
