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
import com.csye6225.fall2019.courseservice.model.Professor;
import com.csye6225.fall2019.courseservice.model.Student;
import com.csye6225.fall2019.courseservice.service.ProfessorService;
import com.csye6225.fall2019.courseservice.service.StudentService;

@Path("/professors")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
public class ProfessorResource {
	ProfessorService professorService = new ProfessorService();
	
	@GET
    public List<Professor> getProfessors(){
        return professorService.getAllProfessor();
    }
	
	@GET
    @Path("/{professorId}")
    public Professor getProfessor(@PathParam("professorId") String professorId){
        return professorService.getProfessor(professorId);
    }
	
	@DELETE
    @Path("/{professorId}")
    public void removeProfessor(@PathParam("professorId") String professorId){
        professorService.removeProfessor(professorId);
    }
	
	@PUT
	@Path("/{professorId}")
	public Professor updateProfessor(@PathParam("professorId") String professorId, Professor professor) {
		professor.setProfessorId(professorId);
		return professorService.updateProfessor( professor);
	}
	
	@POST
    public Professor addProfessor(Professor professor){
        return professorService.addProfessor(professor);
    }
}
