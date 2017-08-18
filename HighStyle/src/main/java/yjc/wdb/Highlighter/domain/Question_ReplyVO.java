package yjc.wdb.Highlighter.domain;

public class Question_ReplyVO {
	
	private String question_id;
	private String reply_id;
	private String user_name;
	private String reply_content;
	
	public String getQuestion_id() {
		return question_id;
	}
	public void setQuestion_id(String question_id) {
		this.question_id = question_id;
	}
	public String getreply_id() {
		return reply_id;
	}
	public void setreply_id(String reply_id) {
		this.reply_id = reply_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getreply_content() {
		return reply_content;
	}
	public void setreply_content(String reply_content) {
		this.reply_content = reply_content;
	}
}
