package com.csye6225.fall2019.courseservice.initialData;

import java.util.HashMap;
import java.util.Map;

import com.csye6225.fall2019.courseservice.model.Course;
import com.csye6225.fall2019.courseservice.model.Announcement;
import com.csye6225.fall2019.courseservice.model.Professor;
import com.csye6225.fall2019.courseservice.model.Student;

public class InMemoryDatabase {
//	private static Map<Integer, Program> programs = new HashMap<>();
	private static Map<Integer, Course> courses = new HashMap<>();
	private static Map<Integer, Student> students = new HashMap<>();
	private static Map<Integer, Professor> professors = new HashMap<>();
	private static Map<Integer, Announcement> lectures = new HashMap<>();
	
	
//	public static Map<Integer, Program> getPrograms() {
//		return programs;
//	}
	
	public static Map<Integer, Course> getCourses() {
		return courses;
	}
	
	public static Map<Integer, Student> getStudents() {
		return students;
	}
	 
	public static Map<Integer, Professor> getProfessors() {
		return professors;
	}
	 
	public static Map<Integer, Announcement> getLectures() {
		return lectures;
	}
	
//	static {
//		Program program1 = new Program(1, "IS");
//		Program program2 = new Program(2, "CSYE");
//		
//		Course course1 = new Course(1, "Program Structure&Algorithms", "roster1", "board1", program1.getProgramName());
//		Course course2 = new Course(2, "Cloud Computing", "roster2", "board2", program2.getProgramName());
//		
//		Student student1 = new Student(1, "Micheal", "Jordan", "image1", program1.getProgramName());
//		Student student2 = new Student(2, "Donald", "Trump", "image2", program2.getProgramName());
//		
//		Professor professor1 = new Professor(1, "Tom", "Pual", program1.getProgramName());
//		Professor professor2 = new Professor(2, "Jimmy", "James", program2.getProgramName());
//				
//		Lecture lecture1 = new Lecture(1, "note1", "material1");
//		Lecture lecture2 = new Lecture(2, "note2", "material2");
//		
//		course1.getLectures().put(lecture1.getLectureId(), lecture1);
//		course2.getLectures().put(lecture2.getLectureId(), lecture2);
//		course1.getStudents().put(student1.getStudentId(), student1);
//		course2.getStudents().put(student2.getStudentId(), student2);
//		
//		student1.getCourses().put(course1.getCourseId(), course1);
//		student2.getCourses().put(course2.getCourseId(), course2);
//		
//		program1.getCourses().put(course1.getCourseId(), course1);
//		program2.getCourses().put(course2.getCourseId(), course2);
//		
//		lectures.put(lecture1.getLectureId(), lecture1);
//		lectures.put(lecture2.getLectureId(), lecture2);
//		
//		students.put(student1.getStudentId(), student1);
//		students.put(student2.getStudentId(), student2);
//		
//		courses.put(course1.getCourseId(), course1);
//		courses.put(course2.getCourseId(), course2);
//		
//		programs.put(program1.getProgramId(), program1);
//		programs.put(program2.getProgramId(), program2);
//		
//		professors.put(professor1.getProfessorId(), professor1);
//		professors.put(professor2.getProfessorId(), professor2);
//	}
	
	
}
