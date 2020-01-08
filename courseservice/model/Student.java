package com.csye6225.fall2019.courseservice.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBAttribute;
import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBAutoGeneratedKey;
import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBHashKey;
import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBIgnore;
import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBIndexHashKey;
import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBTable;

@DynamoDBTable(tableName = "Student")
public class Student {
	@DynamoDBAutoGeneratedKey   
	private String id;
	@DynamoDBHashKey(attributeName = "studentId")
	private String studentId;
	private String name;
	private String joiningDate;
	private String programId;
	private List<String> registeredCourses = new ArrayList<>();
	
	public Student() {
		
	}
	
	public Student(String studentId, String name, String joiningDate, String programId,
			List<String> registeredCourses) {
		this.studentId = studentId;
		this.name = name;
		this.joiningDate = joiningDate;
		this.programId = programId;
		this.registeredCourses = registeredCourses;
	}

	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	
	public String getStudentId() {
		return studentId;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}

	@DynamoDBAttribute(attributeName = "name")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@DynamoDBAttribute(attributeName = "joiningDate")
	public String getJoiningDate() {
		return joiningDate;
	}

	public void setJoiningDate(String joiningDate) {
		this.joiningDate = joiningDate;
	}

	@DynamoDBAttribute(attributeName = "programId")
	public String getProgramId() {
		return programId;
	}

	public void setProgramId(String programId) {
		this.programId = programId;
	}

	@DynamoDBAttribute(attributeName = "registeredCourses")
	public List<String> getRegisteredCourses() {
		return registeredCourses;
	}

	public void setRegisteredCourses(List<String> registeredCourses) {
		this.registeredCourses = registeredCourses;
	}

	@Override
	public String toString() {
		return "Student [id=" + id + ", studentId=" + studentId + ", name=" + name + ", joiningDate=" + joiningDate
				+ ", programId=" + programId + ", registeredCourses=" + registeredCourses + "]";
	}

}