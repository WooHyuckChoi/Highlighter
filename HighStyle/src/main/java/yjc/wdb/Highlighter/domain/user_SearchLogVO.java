package yjc.wdb.Highlighter.domain;

public class user_SearchLogVO {
	private String user_id;
	private String searchDate;
	private String onoff;
	private String pg;
	private String subject;
	private String location1;
	private String location2;
	private String college;
	private String str_tuit_fees;
	private String end_tuit_fees;
	private String ext_obj;
	private String carrer_yn;
	private String ext_exp;
	private String gender;
	private String ext_way;
	private String class_lev;
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getSearchDate() {
		return searchDate;
	}
	public void setSearchDate(String searchDate) {
		this.searchDate = searchDate;
	}
	public String getOnoff() {
		return onoff;
	}
	public void setOnoff(String onoff) {
		this.onoff = onoff;
	}
	public String getPg() {
		return pg;
	}
	public void setPg(String pg) {
		this.pg = pg;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getLocation1() {
		return location1;
	}
	public void setLocation1(String location1) {
		this.location1 = location1;
	}
	public String getLocation2() {
		return location2;
	}
	public void setLocation2(String location2) {
		this.location2 = location2;
	}
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public String getStr_tuit_fees() {
		return str_tuit_fees;
	}
	public void setStr_tuit_fees(String str_tuit_fees) {
		this.str_tuit_fees = str_tuit_fees;
	}
	public String getEnd_tuit_fees() {
		return end_tuit_fees;
	}
	public void setEnd_tuit_fees(String end_tuit_fees) {
		this.end_tuit_fees = end_tuit_fees;
	}
	public String getExt_obj() {
		return ext_obj;
	}
	public void setExt_obj(String ext_obj) {
		this.ext_obj = ext_obj;
	}
	public String getCarrer_yn() {
		return carrer_yn;
	}
	public void setCarrer_yn(String carrer_yn) {
		this.carrer_yn = carrer_yn;
	}
	public String getExt_exp() {
		return ext_exp;
	}
	public void setExt_exp(String ext_exp) {
		this.ext_exp = ext_exp;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getExt_way() {
		return ext_way;
	}
	public void setExt_way(String ext_way) {
		this.ext_way = ext_way;
	}
	public String getClass_lev() {
		return class_lev;
	}
	public void setClass_lev(String class_lev) {
		this.class_lev = class_lev;
	}
	
	public String toString(){
		return "(user_id : " + user_id +
			   " searchDate : " +searchDate +
			   " onoff : " +onoff +
			   " pg : " +pg +
			   " subject : " +subject +
			   " onoff : " +onoff +
			   " location1 : " +location1 +
			   " location2 : " +location2 +
			   " college : " +college +
			   " str_tuit_fees : " +str_tuit_fees +
			   " end_tuit_fees : " +end_tuit_fees +
			   " ext_obj : " +ext_obj +
			   " carrer_yn : " +carrer_yn +
			   " ext_exp : " +ext_exp +
			   " gender : " +gender +
			   " ext_way : " +ext_way +
			   " class_lev : " +class_lev+")";	   
	}
}
