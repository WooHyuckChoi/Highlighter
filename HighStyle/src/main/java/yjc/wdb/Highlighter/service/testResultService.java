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
	/*�л� ���� ���̺� ���� ���� ���*/
	public List<test_resultVO> weekCorrectAnsw(String user_id,String ext_id) throws Exception;
	public List<HashMap> ListWeeksCorrect(String user_id,String ext_id) throws Exception;
	
	public void updateWansNote(test_resultVO vo) throws Exception;
	public List<String> selectWansNote(test_resultVO vo) throws Exception;
}
