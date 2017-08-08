package yjc.wdb.Highlighter.domain;

public class LectureEvaluationVO {
//	private String user_id; // ���̵�(ext_info���� user_info�� ���� ����)
	private String user_name; // �̸�
	private String prof_photo; // ������ ����
	private String ext_id; // �����ڵ� (substr���� ����� �̾Ƴ� ����)
	private String class_poss_area; // ���� ����
	private double best_score; // ��� ����
//	private int 
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getProf_photo() {
		return prof_photo;
	}
	public void setProf_photo(String prof_photo) {
		this.prof_photo = prof_photo;
	}
	public String getExt_id() {
		return ext_id;
	}
	public void setExt_id(String ext_id) {
		this.ext_id = ext_id;
	}
	public String getClass_poss_area() {
		return class_poss_area;
	}
	public void setClass_poss_area(String class_poss_area) {
		this.class_poss_area = class_poss_area;
	}
	public double getBest_score() {
		return best_score;
	}
	public void setBest_score(double best_score) {
		this.best_score = best_score;
	}
	
	
}

