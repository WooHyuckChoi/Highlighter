package yjc.wdb.Highlighter.service;

import java.util.List;

import yjc.wdb.Highlighter.domain.Criteria;
import yjc.wdb.Highlighter.domain.QuestionVO;

public interface QuestionService {
	
	public void regist(QuestionVO board)throws Exception;
	
	public QuestionVO read(String question_id, String user_name)throws Exception;
	
	public void modify(QuestionVO board)throws Exception;
	
	public int count()throws Exception;
	
	public String select_question_id()throws Exception;
	
	public void remove(String question_id)throws Exception;
	
	public List<QuestionVO> listAll()throws Exception;
	
	public List<QuestionVO> listCriteria(Criteria cri)throws Exception;
	
	public int listCountCriteria(Criteria cri)throws Exception;
}
