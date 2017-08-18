package yjc.wdb.Highlighter.persistence;

import java.util.List;

import yjc.wdb.Highlighter.domain.Criteria;
import yjc.wdb.Highlighter.domain.QuestionVO;

public interface QuestionDAO {
	
	public void create(QuestionVO vo)throws Exception;
	
	public QuestionVO read(String question_id, String user_name)throws Exception;
	
	public int count()throws Exception;
	
	public String select_question_id()throws Exception;
	
	public void update(QuestionVO vo)throws Exception;
	
	public void delete(String question_id)throws Exception;
	
	public List<QuestionVO> listAll()throws Exception;
	
	public List<QuestionVO> listPage(int page)throws Exception;
	
	public List<QuestionVO> listCriteria(Criteria cri)throws Exception;
	
	public int countPaging(Criteria cri)throws Exception;
}
