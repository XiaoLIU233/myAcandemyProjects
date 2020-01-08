package com.csye6225.fall2019.courseservice.resource;

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

import com.csye6225.fall2019.courseservice.model.Board;
import com.csye6225.fall2019.courseservice.model.Course;
import com.csye6225.fall2019.courseservice.service.BoardService;

@Path("/boards")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
public class BoardResource {
	BoardService boardService = new BoardService();
	
	@GET
	public List<Board> getBoard() {
		return boardService.getAllBoard();
	}
	
	@GET
	@Path("/{boardId}")
	public Board getBoard(@PathParam("boardId") String boardId) {
		return boardService.getBoard(boardId);
	}
	
	@PUT
	@Path("/{boardId}")
	public Board updateBoard(@PathParam("boardId") String boardId, Board board) {
		board.setBoardId(boardId);
		return boardService.updateBoard(board);
	}
		
	@POST
	public Board addBoard(Board board) {
		return boardService.addBoard(board);
	}
	
	@DELETE
	@Path("/{boardId}")
	public void deleteBoard(@PathParam("boardId") String boardId) {
		boardService.removeBoard(boardId);
	}
	
}
