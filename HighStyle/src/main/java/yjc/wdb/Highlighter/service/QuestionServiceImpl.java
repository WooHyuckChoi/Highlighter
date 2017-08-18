package yjc.wdb.Highlighter.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yjc.wdb.Highlighter.domain.Criteria;
import yjc.wdb.Highlighter.domain.QuestionVO;
import yjc.wdb.Highlighter.persistence.QuestionDAO;

@Service //¼­ºñ½º °´Ã¼
public class QuestionServiceImpl implements QuestionService{
	
	@Inject
	private QuestionDAO dao;
	
	@Override
	public void regist(QuestionVO board)throws Exception{
		dao.create(board);
	}
	
	@Override
	public QuestionVO read(String question_id, String user_name)throws Exception{
		return dao.read(question_id, user_name);
	}
	
	@Override
	public void modify(QuestionVO board)throws Exception{
		dao.update(board);
	}
	
	@Override
	public void remove(String question_id)throws Exception{
		dao.delete(question_id);
	}
	
	@Override
	public List<QuestionVO> listAll()throws Exception{
		return dao.listAll();
	}

	@Override
	public int count() throws Exception {
		
		return dao.count();
	}

	@Override
	public String select_question_id() throws Exception {
		
		return dao.select_question_id();
	}

	@Override
	public List<QuestionVO> listCriteria(Criteria cri) throws Exception {
		
		return dao.listCriteria(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) throws Exception {
		
		return dao.countPaging(cri);
	}
}
