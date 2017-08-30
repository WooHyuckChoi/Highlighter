package yjc.wdb.Highlighter.domain;

public class test_InfoVO {
	private String test_id;
	private String test_title;   
	private String test_file;
	private String test_file2;
	private String test_file3;
	private String test_date;
	private int test_time;
	private String ext_id;
	private String testResult;
	private String test_state;
	
	public String getTest_id() {
		return test_id;
	}
	public void setTest_id(String test_id) {
		this.test_id = test_id;
	}
	public String getTest_title() {
		return test_title;
	}
	public void setTest_title(String test_title) {
		this.test_title = test_title;
	}
	public String getTest_file() {
		return test_file;
	}
	public void setTest_file(String test_file) {
		this.test_file = test_file;
	}
	public String getTest_file2() {
		return test_file2;
	}
	public void setTest_file2(String test_file2) {
		this.test_file2 = test_file2;
	}
	public String getTest_file3() {
		return test_file3;
	}
	public void setTest_file3(String test_file3) {
		this.test_file3 = test_file3;
	}
	public String getTest_date() {
		return test_date;
	}
	public void setTest_date(String test_date) {
		this.test_date = test_date;
	}
	public int getTest_time() {
		return test_time;
	}
	public void setTest_time(int test_time) {
		this.test_time = test_time;
	}
	public String getExt_id() {
		return ext_id;
	}
	public void setExt_id(String ext_id) {
		this.ext_id = ext_id;
	}
	public String getTestResult() {
		return testResult;
	}
	public void setTestResult(String testResult) {
		this.testResult = testResult;
	}
	public String getTest_state() {
		return test_state;
	}
	public void setTest_state(String test_state) {
		this.test_state = test_state;
	}
	@Override
	public String toString(){
		return "test_id: " + test_id + ", test_time:"+test_time+", test_date:"+test_date+" ,test_state:"+test_state;
	}
	
}
