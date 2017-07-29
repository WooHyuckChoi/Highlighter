package yjc.wdb.Highlighter.domain;

public class test_InfoVO {
	   private String test_id;
	   private String ext_id;
	   private String test_file;
	   private int test_time;
	   private String test_date;
	public String getTest_date() {
		return test_date;
	}
	public void setTest_date(String test_date) {
		this.test_date = test_date;
	}
	public String getExt_id() {
		return ext_id;
	}
	public void setExt_id(String ext_id) {
		this.ext_id = ext_id;
	}
	public String getTest_id() {
		return test_id;
	}
	public void setTest_id(String test_id) {
		this.test_id = test_id;
	}

	public String getTest_file() {
		return test_file;
	}
	public void setTest_file(String test_file) {
		this.test_file = test_file;
	}
	public int getTest_time() {
		return test_time;
	}
	public void setTest_time(int test_time) {
		this.test_time = test_time;
	}
	
/*	  private String test_id;
	   private int test_time;
	   private String test_date;*/
	
	@Override
	public String toString(){
		return "test_id: " + test_id + ", test_time:"+test_time+", test_date:"+test_date;
	}
	
}
