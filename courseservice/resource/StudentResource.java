package com.csye6225.fall2019.courseservice.resource;

import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.csye6225.fall2019.courseservice.model.Student;
import com.csye6225.fall2019.courseservice.service.StudentService;

@Path("/students")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
public class StudentResource {
	StudentService studentService = new StudentService();
	
	@GET
    public List<Student> getStudents(){
        return studentService.getAllStudent();
    }
	
	@GET
    @Path("/{studentId}")
    public Student getStudent(@PathParam("studentId") String studentId){
        return studentService.getStudent(studentId);
//		return "done";
    }
	
//	@GET
//    @Path("/{studentId}/courses")
//    public List<Course> getCourses(@PathParam("studentId") String studentId){
//        return studentService.getCourses(studentId);
//    }
	
	@POST
    public Student addStudent(Student student){
        return studentService.addStudent(student);
    }
	
//	@POST
//    @Path("/{studentId}/courses/{courseId}")
//    public List<Course> addCourse(@PathParam("studentId") int studentId, @PathParam("courseId") int courseId){
//        return studentService.addCourse(studentId,courseId);
//    }
	
//	@GET
//    @Path("/{studentId}/courses/{courseId}")
//    public Course getCourse(@PathParam("studentId") int studentId, @PathParam("courseId") int courseId){
//        return studentService.getCourse(studentId, courseId);
//    }
	
	//PUT-update 待定
	@PUT
	@Path("/{studentId}")
	public Student updateStudent(@PathParam("studentId") String studentId, Student student) {
		student.setStudentId(studentId);
		return studentService.updateStudent(student);
	}
	
//    @DELETE
//    @Path("/{studentId}/courses/{courseId}")
//    public void removeCourse(@PathParam("studentId") int studentId, @PathParam("courseId") int courseId){
//        studentService.removeCourse(studentId, courseId);
//    }
    
    @DELETE
    @Path("/{studentId}")
    public Student deleteStudent(@PathParam("studentId") String studentId){
        return studentService.removeStudent(studentId);
    }
}
