package yjc.wdb.Highlighter.persistence;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

import yjc.wdb.Highlighter.domain.Ext_InfoVO;
import yjc.wdb.Highlighter.domain.User_InfoVO;
import yjc.wdb.Highlighter.domain.prob_InfoVO;
import yjc.wdb.Highlighter.domain.stu_infoVO;
import yjc.wdb.Highlighter.domain.test_resultVO;

public interface StudyRoomDAO 
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
	
	//수업을 듣는 학생의 수 가져오기
	public int countStudent(String ext_id) throws Exception;
	
	//학습평가 리스트
	public List<stu_infoVO> calendarList(Map<String,String> vo) throws Exception;
	
	//해당 과외의 학생의 수
	public Integer countExtStudent(String ext_id) throws Exception;
	
	//오답노트 시작
	public List<HashMap> searchTestAnswer(String test_id) throws Exception;
	
	//학생 정답
	public List<test_resultVO> searchStuAnswer(String test_id) throws Exception;
	//강사 정답
	public List<prob_InfoVO> searchProbAnswer(String test_id) throws Exception;
}
