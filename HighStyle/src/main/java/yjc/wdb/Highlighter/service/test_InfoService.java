package yjc.wdb.Highlighter.service;

import java.util.HashMap;
import java.util.List;

import yjc.wdb.Highlighter.domain.Ext_InfoVO;
import yjc.wdb.Highlighter.domain.exam_InfoVO;
import yjc.wdb.Highlighter.domain.prob_InfoVO;
import yjc.wdb.Highlighter.domain.test_InfoVO;
import yjc.wdb.Highlighter.domain.test_resultVO;

public interface test_InfoService {
	public String lastTestId(String ext_id)throws Exception;
	public void registerTest(test_InfoVO vo)throws Exception;
	public void registerProbAnsw(prob_InfoVO vo)throws Exception; 
	public void registerExamInfo(exam_InfoVO vo)throws Exception;
	public List<test_InfoVO> selectTest(String ext_id)throws Exception;
	public List<test_InfoVO> selectTestStu(Ext_InfoVO ext_InfoVO)throws Exception;
	public List<HashMap> selectExamInfo(String test_id)throws Exception;
	public void registerTestResult(test_resultVO vo)throws Exception;
	public void changeTestState(exam_InfoVO exam_InfoVO)throws Exception;
	public int testResultCount(test_resultVO test_resultVO)throws Exception;
	public List<HashMap> checkTestResult(String test_id)throws Exception;
	
	//public void create(test_InfoVO vo) throws Exception;
	//public String extidse(String ext_id) throws Exception;
	//public List<HashMap> testList(String ext_id,String user_id) throws Exception;
	//public List<test_InfoVO> testImage(String test_id) throws Exception;
	
	/*��� ���̵� ���*/
	//public List<String> allid(String ext_id) throws Exception;
	
	/*	���� ���� ����Ʈ ���*/
	//public List<test_InfoVO> teachertestList(String ext_id) throws Exception;
	
	public String TImage(String ext_id) throws Exception;
}
