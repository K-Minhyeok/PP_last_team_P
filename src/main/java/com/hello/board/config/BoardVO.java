package com.hello.board.config;

import lombok.Getter;
import lombok.Setter;

import java.util.Date;

@Getter
@Setter
public class BoardVO {
	private int seq;
	private String title;
	private String writer;
	private String content;
	private int price;
	private String contact;
	private Date regdate;
	private String category;
	private String location;
	private int cnt;
}
