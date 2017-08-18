package yjc.wdb.Highlighter.domain;

import java.util.Date;

public class QuestionVO {

	private String question_id;
	private String question_title;
	private String question_content;
	private String user_name;
	
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getquestion_id() {
		return question_id;
	}
	public void setquestion_id(String question_id) {
		this.question_id = question_id;
	}
	public String getquestion_title() {
		return question_title;
	}
	public void setquestion_title(String question_title) {
		this.question_title = question_title;
	}
	public String getquestion_content() {
		return question_content;
	}
	public void setquestion_content(String question_content) {
		this.question_content = question_content;
	}
}
