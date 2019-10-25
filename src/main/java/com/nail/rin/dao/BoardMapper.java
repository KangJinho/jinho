package com.nail.rin.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;

import com.nail.rin.dto.Board;

public interface BoardMapper {
	public int insert(Board board);
	public int delete(int boardseq);
	public int update(Board board);
	public List<Board> selectAll1(Map<String, String> map, RowBounds rb);
	public List<Board> selectAll(Board board, RowBounds rb);
	public Board selectOne(int boardseq);
	public int getBoardCount();
}
