package com.csye6225.fall2019.courseservice.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBDeleteExpression;
import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBMapper;
import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBMapperConfig;
import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBQueryExpression;
import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBScanExpression;
import com.amazonaws.services.dynamodbv2.model.AttributeValue;
import com.csye6225.fall2019.courseservice.initialData.InMemoryDatabase;
import com.csye6225.fall2019.courseservice.model.Course;
import com.csye6225.fall2019.courseservice.model.DynamoDbConnector;
import com.csye6225.fall2019.courseservice.model.Announcement;
import com.csye6225.fall2019.courseservice.model.Professor;
import com.csye6225.fall2019.courseservice.model.Student;

public class StudentService {
	static DynamoDbConnector dynamoDb;
	DynamoDBMapper mapper;
	
	public StudentService() {
		dynamoDb = new DynamoDbConnector();
		dynamoDb.init();
		mapper = new DynamoDBMapper(dynamoDb.getClient());
	}
	
	public List<Student> getAllStudent(){
        return mapper.scan(Student.class, new DynamoDBScanExpression());
    }
	
	public Student getStudent(String studentId){
        return mapper.load(Student.class, studentId);
//		HashMap<String, AttributeValue> eav = new HashMap<>();
//        eav.put(":v1",  new AttributeValue().withS(studentId));
//
//        DynamoDBQueryExpression<Student> queryExpression = new DynamoDBQueryExpression<Student>()
//                .withKeyConditionExpression("studentId = :v1")
//                .withConsistentRead(false)
//                .withExpressionAttributeValues(eav);
//
//        List<Student> list =  mapper.query(Student.class, queryExpression);
//        if (list.size() == 0) return null;
//        return list.get(0);
		
    }
	
	public Student addStudent(Student student){
		mapper.save(student);
		return student;
    }
	
	public Student updateStudent(Student student) {
		removeStudent(student.getStudentId());
		mapper.save(student);
		return student;
	}
	
	public Student removeStudent(String studentId){
		Student s = getStudent(studentId);
        mapper.delete(s);
        return s;
    }
	
	
//	public List<Student> getAllStudentByProgram(int programId){
//  if(programs.get(programId) == null)
//      return null;
//  return new ArrayList<>(programs.get(programId).getStudents().values());
//}
//
//public Student getStudentByProgram(int programId, int studentid){
//  if(programs.get(programId) == null)
//      return null;
//  return programs.get(programId).getStudents().get(studentid);
//}
	
	
//	public Student addStudent(int programId, String studentName){
//	if(programs.get(programId) != null) {
//		Student student = addStudent(studentName);
//        student.setProgram(programs.get(programId));	        
//        programs.get(programId).getStudents().put(student.getStudentId(), student);
//        return student;
//	}
//	return null;
//}
	
//	public Student removeStudent(int programId, int studentId){
//        if(removeStudent(studentId) == null)
//            return null;
//        return programs.get(programId).getStudents().remove(studentId);
//    }
//	
//	public List<Course> getCourses(int studentId){
//        if(students.get(studentId) == null)
//            return null;
//        return new ArrayList<>(students.get(studentId).getCourses().values());
//    }
//
//    public Course getCourse(int studentId, int courseId){
//        if(students.get(studentId) == null)
//            return null;
//        return students.get(studentId).getCourses().get(courseId);
//    }
//
//    public Student removeCourse(int studentId, int courseId){
//        if(students.get(studentId) == null)
//            return null;
//        Course c = students.get(studentId).getCourses().get(courseId);
//        if(c != null) {
//            c.getStudents().remove(studentId);
//            students.get(studentId).getCourses().remove(courseId);
//        }
//        return students.get(studentId);
//    }
//
//    public List<Course> addCourse(int studentId, int courseId){
//        Student s = students.get(studentId);
//        Course c = courses.get(courseId);
//        if(!s.getCourses().containsKey(courseId)){
//            s.getCourses().put(courseId,c);
//            c.getStudents().put(s.getStudentId(),s);
//        }
//        return getCourses(studentId);
//    }
}
