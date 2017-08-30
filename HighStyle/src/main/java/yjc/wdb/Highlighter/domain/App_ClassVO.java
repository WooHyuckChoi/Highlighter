package yjc.wdb.Highlighter.domain;

public class App_ClassVO {
	private String ext_id;
	private String user_id;
	private String reg_date;
	private String reg_stus;
	
	public String getExt_id() {
		return ext_id;
	}
	public void setExt_id(String ext_id) {
		this.ext_id = ext_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public String getReg_stus() {
		return reg_stus;
	}
	public void setReg_stus(String reg_stus) {
		this.reg_stus = reg_stus;
	}
	public String toString(){
		return "user_id="+user_id;
	}
	
}
