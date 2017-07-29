package yjc.wdb.Highlighter.service;

import yjc.wdb.Highlighter.domain.exam_InfoVO;

public interface exam_InfoService {

	public void createexam(exam_InfoVO vo) throws Exception;
	/*<!-- 응시여부 판단! -->*/
	public void test_state_up(exam_InfoVO vo) throws Exception;
	
}
