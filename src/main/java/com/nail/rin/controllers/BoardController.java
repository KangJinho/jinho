package com.nail.rin.controllers;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.nail.rin.dao.BoardRepository;
import com.nail.rin.dto.Board;


@Controller
public class BoardController {
	@Autowired
	BoardRepository repo;
	
	
	@RequestMapping(value="/boardWrite", method=RequestMethod.GET)
	public String boardwrite(Model model){
		Date today = new Date();
		model.addAttribute("today",today);
		
		return "board/boardWrite";
	}

	@RequestMapping(value="/boardWrite", method=RequestMethod.POST)
	public String boardWriteProcess(Board board, HttpSession session, RedirectAttributes rttr) {
		System.out.println(board);
		
		String userid = (String) session.getAttribute("loginId");
		board.setUserid(userid);
		
		int result=repo.insert(board);
		System.out.println(result);
		return "redirect:/board";
	}
}
