package com.team.domain;

import java.sql.Timestamp;

public class QuestionDTO {
//	+-------------+--------------+------+-----+---------+----------------+
//	| Field       | Type         | Null | Key | Default | Extra          |
//	+-------------+--------------+------+-----+---------+----------------+
//	| q_num       | int          | NO   | PRI | NULL    | auto_increment |
//	| id          | varchar(20)  | YES  | MUL | NULL    |                |
//	| subject     | varchar(40)  | YES  |     | NULL    |                |
//	| content     | varchar(500) | YES  |     | NULL    |                |
//	| readcount   | int          | YES  |     | NULL    |                |
//	| q_date      | datetime     | YES  |     | NULL    |                |
//	| origin_num  | int          | YES  |     | NULL    |                |
//	| group_order | int          | YES  |     | NULL    |                |
//	| group_layer | int          | YES  |     | NULL    |                |
//	+-------------+--------------+------+-----+---------+----------------+
	
	private int q_num;
	private String id;
	private String subject;
	private String content;
	private int readcount;
	private Timestamp q_date;
	private int origin_num;
	private int group_order;
	private int group_layer;
	
	
	public int getQ_num() {
		return q_num;
	}
	public void setQ_num(int q_num) {
		this.q_num = q_num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	public Timestamp getQ_date() {
		return q_date;
	}
	public void setQ_date(Timestamp q_date) {
		this.q_date = q_date;
	}
	public int getGroup_order() {
		return group_order;
	}
	public void setGroup_order(int group_order) {
		this.group_order = group_order;
	}
	public int getGroup_layer() {
		return group_layer;
	}
	public void setGroup_layer(int group_layer) {
		this.group_layer = group_layer;
	}

	
	
	
}
