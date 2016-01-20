package com.example.day02_listview;

import java.util.Date;

public class Student {

	private String name;
	private String number;
	private Date date;
	
	@Override
	public String toString() {
		return "Student [name=" + name + ", number=" + number + ", date="
				+ date + "]";
	}

	public Student(String name, String number, Date date) {
		super();
		this.name = name;
		this.number = number;
		this.date = date;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

}
