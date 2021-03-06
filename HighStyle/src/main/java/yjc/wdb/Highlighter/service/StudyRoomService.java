package yjc.wdb.Highlighter.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import yjc.wdb.Highlighter.domain.App_ClassVO;
import yjc.wdb.Highlighter.domain.Ext_InfoVO;
import yjc.wdb.Highlighter.domain.User_InfoVO;
import yjc.wdb.Highlighter.domain.prob_InfoVO;
import yjc.wdb.Highlighter.domain.stu_infoVO;
import yjc.wdb.Highlighter.domain.test_resultVO;

public interface StudyRoomService 
{
	public Ext_InfoVO Ext_read(String ext_id) throws Exception;
	
	//강의 열기 및 닫기
	public void updateOpenStat(HashMap<String, String> vo) throws Exception;
	public void updateCloseStat(HashMap<String, String> vo) throws Exception;
	public String selectGrade(String user_id) throws Exception;
	public String selectOpenStat(String ext_id) throws Exception;
	// ---end----
	
	public User_InfoVO profile(String user_id) throws Exception;
	
	//시험 결과 리스트
	public List<HashMap> selectTestResult(String ext_id) throws Exception;
	public List<HashMap> selectStuTestResult(String user_id) throws Exception;
	public int countStudent(String ext_id) throws Exception;
	
	//학습평가 리스트
	public List<stu_infoVO> calendarList(Map<String,String> vo) throws Exception;
	
	public Integer countExtStudent(String ext_id) throws Exception;
	
	public List<HashMap> searchTestAnswer(test_resultVO test_resultVO) throws Exception;
	
	//학생 정답
	public List<test_resultVO> searchStuAnswer(test_resultVO test_resultVO) throws Exception;
	//강사 정답
	public List<prob_InfoVO> searchProbAnswer(String test_id) throws Exception;
	
	//해당 강의의 학생 정보 
	public List<App_ClassVO> selectStuInfo(String ext_id)throws Exception;
	
	public Integer countTest(String ext_id) throws Exception;
}
