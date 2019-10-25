package com.nail.rin.dao;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nail.rin.dto.Board;


@Repository
public class BoardRepository {

	@Autowired
	SqlSession session;

	
	
	public int insert(Board board) {
		System.out.println("board repo=>" + board);
		BoardMapper mapper = session.getMapper(BoardMapper.class);
		
		int result = mapper.insert(board);
		return result;
	}
	public int delete(int boardseq) {
		BoardMapper mapper = session.getMapper(BoardMapper.class);
		
		int result = mapper.delete(boardseq);
		return result;
	}
	
	public int update(Board board) {
		BoardMapper mapper = session.getMapper(BoardMapper.class);
		
		System.out.println(board);
		int result = mapper.update(board);
		System.out.println("수정결과 : " + result);
		return result;
	}
	
	public List<Board> selectAll(Board board, int startRecord, int countPerPage) {
		List<Board> list;
		
		RowBounds rb = new RowBounds(startRecord, countPerPage);
		BoardMapper mapper = session.getMapper(BoardMapper.class);
		
		list = mapper.selectAll(board, rb);
		
		return list;
	}
	
	public Board selectOne(int boardseq) {
		BoardMapper mapper = session.getMapper(BoardMapper.class); 
		Board board = mapper.selectOne(boardseq);
		
		return board;
	}
	public int getBoardCount() {
		BoardMapper mapper = session.getMapper(BoardMapper.class);
		
		int total = mapper.getBoardCount();
		
		return total;
	}

}

