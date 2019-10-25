package com.nail.rin.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.nail.rin.dao.BoardRepository;
import com.nail.rin.dto.Board;
import com.nail.rin.util.PageNavigator;



@Controller
public class BoardListController {
	@Autowired
	BoardRepository repo;


	@RequestMapping(value="/board", method=RequestMethod.GET)
	public String boardlist(Board board,Model model,
			@RequestParam(value="currentPage", defaultValue="1") int currentPage){
		
		int totalRecordCount = repo.getBoardCount();
		PageNavigator navi = new PageNavigator(currentPage,totalRecordCount);
		
		System.out.println(navi.getStartRecord());
		
		List<Board> list=repo.selectAll(board, navi.getStartRecord(), navi.getCountPerPage());
		
		model.addAttribute("list",list);
		model.addAttribute("navi", navi);
		
		return "board/boardList";
	}
}

