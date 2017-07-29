package yjc.wdb.Highlighter.service;

import java.util.HashMap;
import java.util.List;

import yjc.wdb.Highlighter.domain.test_resultVO;

public interface testResultService {

	
	public void tcreate(test_resultVO vo) throws Exception;
	public String stu_answ(String prob_id) throws Exception;
	public void w_answ_note_cont(test_resultVO vo) throws Exception; 
	public int correctAnswercount(test_resultVO vo) throws Exception;
	public String WrongNote(test_resultVO vo) throws Exception;
	/*학생 관리 테이블 정답 갯수 출력*/
	public List<test_resultVO> weekCorrectAnsw(String user_id,String ext_id) throws Exception;
	public List<HashMap> ListWeeksCorrect(String user_id,String ext_id) throws Exception;
}
