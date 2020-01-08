package com.csye6225.fall2019.courseservice.service;

import java.util.ArrayList;
import java.util.List;

import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBMapper;
import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBScanExpression;
import com.csye6225.fall2019.courseservice.model.Board;
import com.csye6225.fall2019.courseservice.model.DynamoDbConnector;

public class BoardService {
	static DynamoDbConnector dynamoDb;
    DynamoDBMapper mapper;
    
    public BoardService() {
    	dynamoDb = new DynamoDbConnector();
    	dynamoDb.init();
    	mapper = new DynamoDBMapper(dynamoDb.getClient());  
    }
    
    public List<Board> getAllBoard(){
        return new ArrayList<>(mapper.scan(Board.class, new DynamoDBScanExpression()));
    }
    
    public Board getBoard(String boardId) {
    	return mapper.load(Board.class, boardId);
    }
    
    public Board addBoard(Board board) {
        mapper.save(board);
        return board;
    }
    
    public Board removeBoard(String boardId) {
    	Board b = getBoard(boardId);
    	mapper.delete(b);
    	return b;
    }
    
    public Board updateBoard(Board board) {
    	removeBoard(board.getBoardId());
        mapper.save(board);
        return board;
    }
    
}
