package com.csye6225.fall2019.courseservice.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBMapper;
import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBScanExpression;
import com.csye6225.fall2019.courseservice.model.DynamoDbConnector;
import com.csye6225.fall2019.courseservice.model.Professor;

public class ProfessorService {
	static DynamoDbConnector dynamoDb;
	DynamoDBMapper mapper;
	
	public ProfessorService() {
		dynamoDb = new DynamoDbConnector();
		dynamoDb.init();
		mapper = new DynamoDBMapper(dynamoDb.getClient());
	}
	
	public List<Professor> getAllProfessor(){
        return mapper.scan(Professor.class, new DynamoDBScanExpression());
    }
	
	public Professor getProfessor(String professorId){
        return mapper.load(Professor.class, professorId);
    }
	
	public Professor addProfessor(Professor professor){
		mapper.save(professor);
        return mapper.load(Professor.class, professor.getProfessorId());
    }
	
	public Professor removeProfessor(String professorId){
		Professor p = getProfessor(professorId); 
        mapper.delete(p);
        return p;
    }
	
	public Professor updateProfessor(Professor professor) {
		removeProfessor(professor.getProfessorId());
		mapper.save(professor);
		return professor;
	}
}
