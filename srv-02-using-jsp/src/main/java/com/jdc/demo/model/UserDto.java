package com.jdc.demo.model;

public class UserDto {
	
	private int id;
	private String name;
	private String phone;
	private String email;
	
	public UserDto(int id, UserForm form) {
		this.id = id;
		this.name = form.getName();
		this.phone = form.getPhone();
		this.email = form.getEmail();
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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
}
