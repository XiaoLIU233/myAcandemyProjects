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

import com.csye6225.fall2019.courseservice.model.Course;
import com.csye6225.fall2019.courseservice.model.Student;
import com.csye6225.fall2019.courseservice.service.CourseService;

@Path("/courses")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
public class CourseResource {
	CourseService courseService = new CourseService();
	
	@GET
	public List<Course> getCourse() {
		return courseService.getAllCourses();
	}
	
	@GET
	@Path("/{courseId}")
	public Course getCourse(@PathParam("courseId") String courseId) {
		return courseService.getCourse(courseId);
	}
	
//	@GET
//	@Path("/{courseId}/students")
//	public List<Student> getStudent(@PathParam("courseId") String studentid){
//        return courseService.getStudents(studentid);
//    }
	
//	@GET
//    @Path("/{courseId}/students/{studentId}")
//    public Student getStudent(@PathParam("courseId") int courseId, @PathParam("studentId") String studentId){
//        return courseService.getStudent(courseId, studentId);
//    }
	
	@PUT
	@Path("/{courseId}")
	public Course updateCourse(@PathParam("courseId") String courseId, Course course) {
		course.setCourseId(courseId);
		return courseService.updateCourse(course);
	}
		
	@POST
	public Course addCourse(Course course) {
		return courseService.addCourse(course);
	}
	
	@DELETE
	@Path("/{courseId}")
	public void deleteProgram(@PathParam("courseId") String courseId) {
		courseService.removeCourse(courseId);
	}
	
}
