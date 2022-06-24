package com.team.domain;

import java.sql.Timestamp;

public class BoardDTO {
	private int b_num;
	private String id; // name => id 수정
	private String pass; // 추가
	private String subject;
	private String content;
	private int readcount;
	private Timestamp date; // 추가
	
	public int getNum() {
		return b_num;
	}
	public void setNum(int b_num) {
		this.b_num = b_num;
	}
	public String getName() {
		return id;
	}
	public void setName(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getReadcount() {
		return readcount;
	}
	public void setReadcount(int readcount) {
		this.readcount = readcount;
	}
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
	
}
