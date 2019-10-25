package com.nail.rin.dto;

import lombok.Data;

@Data
public class Board {
	private int boardseq;
	private String userid;
	private String title;
	private String content;
	private String regdate;
	private int viewcount;
	private int favorite;

}
