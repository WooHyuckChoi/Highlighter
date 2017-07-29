package yjc.wdb.Highlighter.domain;

public class test_resultVO {
	private String prob_id;
	private String user_id;
	private String date_gaze;
	private String stu_result;
	private String w_answ_note;
	private String w_answ_note_cont;
	private String test_id;
	private int correctCount;
	public int getCorrectCount() {
		return correctCount;
	}
	public void setCorrectCount(int correctCount) {
		this.correctCount = correctCount;
	}
	public String getTest_id() {
		return test_id;
	}
	public void setTest_id(String test_id) {
		this.test_id = test_id;
	}
	public String getProb_id() {
		return prob_id;
	}
	public void setProb_id(String prob_id) {
		this.prob_id = prob_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getDate_gaze() {
		return date_gaze;
	}
	public void setDate_gaze(String date_gaze) {
		this.date_gaze = date_gaze;
	}
	public String getStu_result() {
		return stu_result;
	}
	public void setStu_result(String stu_result) {
		this.stu_result = stu_result;
	}
	public String getW_answ_note() {
		return w_answ_note;
	}
	public void setW_answ_note(String w_answ_note) {
		this.w_answ_note = w_answ_note;
	}
	public String getW_answ_note_cont() {
		return w_answ_note_cont;
	}
	public void setW_answ_note_cont(String w_answ_note_cont) {
		this.w_answ_note_cont = w_answ_note_cont;
	}
	
}
