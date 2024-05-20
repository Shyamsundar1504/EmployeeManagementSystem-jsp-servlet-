package com.emplyoyeeManagementSystem.model;

public class Employee {
   
	private int id;
	private  String name;
	private String department;
	private String salary;
	private String city;
	private String email;
	private String phoneNumber;
	
	public Employee() {
		
	}
	
	
	public Employee(String name, String department, String salary, String city, String email, String phoneNumber) {

		this.name = name;
		this.department = department;
		this.salary = salary;
		this.city = city;
		this.email = email;
		this.phoneNumber = phoneNumber;
	}

	public Employee(int id,String name, String department, String salary, String city, String email, String phoneNumber) {
		
		this.id=id;
		this.name = name;
		this.department = department;
		this.salary = salary;
		this.city = city;
		this.email = email;
		this.phoneNumber = phoneNumber;
	}
	


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	
	
}
