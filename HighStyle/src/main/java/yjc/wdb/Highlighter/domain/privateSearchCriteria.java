package yjc.wdb.Highlighter.domain;

public class privateSearchCriteria extends Criteria{
	private String onoff; //온.오프라인 여부
	private String pg; //개인.그룹 과외 여부
	private String subject; //과목
	private String location2; //수업 가능 지역
	private String lo17;
	private String college; //대학
	private int tuit_fees; //시간당 수업료
	private String ext_obj; //과외 대상
	private int ext_exp_y; //과외 경력_년
	private int ext_exp_m; //과외 경력_개월
	private String gender; //성별
	private String ext_way; //과외 형태
	private String class_lev; //수업 레벨
	
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
	public String getLocation2() {
		return location2;
	}
	public void setLocation2(String location2) {
		this.location2 = location2;
	}
	public String getLo17() {
		return lo17;
	}
	public void setLo17(String lo17) {
		this.lo17 = lo17;
	}
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public int getTuit_fees() {
		return tuit_fees;
	}
	public void setTuit_fees(int tuit_fees) {
		this.tuit_fees = tuit_fees;
	}
	public String getExt_obj() {
		return ext_obj;
	}
	public void setExt_obj(String ext_obj) {
		this.ext_obj = ext_obj;
	}
	public int getExt_exp_y() {
		return ext_exp_y;
	}
	public void setExt_exp_y(int ext_exp_y) {
		this.ext_exp_y = ext_exp_y;
	}
	public int getExt_exp_m() {
		return ext_exp_m;
	}
	public void setExt_exp_m(int ext_exp_m) {
		this.ext_exp_m = ext_exp_m;
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
		return super.toString() + " privateSearchCriteria "
				+ "[onoff=" + onoff + ", pg="
				+ pg + ", subject=" 
				+ subject + "]";
	}
}
