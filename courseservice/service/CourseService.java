package com.csye6225.fall2019.courseservice.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBMapper;
import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBScanExpression;
import com.csye6225.fall2019.courseservice.model.Course;
import com.csye6225.fall2019.courseservice.model.DynamoDbConnector;


public class CourseService {
	
	static DynamoDbConnector dynamoDb;
    DynamoDBMapper mapper;
    
    public CourseService() {
    	dynamoDb = new DynamoDbConnector();
        dynamoDb.init();
        mapper = new DynamoDBMapper(dynamoDb.getClient());
    }
    
	public List<Course> getAllCourses() {
		return mapper.scan(Course.class, new DynamoDBScanExpression());
	}
	
	public Course getCourse(String courseId) {
		return mapper.load(Course.class, courseId);
	}
	
	public Course addCourse(Course course) {
		mapper.save(course);
		return course;
	}
	
	public Course updateCourse(Course course) {
		removeCourse(course.getCourseId());
		mapper.save(course);
		return course;	
	}
	
	public Course removeCourse(String courseId) {
		Course c = getCourse(courseId);
		mapper.delete(c);
		return c;
	}
	
}
