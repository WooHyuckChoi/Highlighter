package yjc.wdb.Highlighter.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yjc.wdb.Highlighter.domain.Criteria;
import yjc.wdb.Highlighter.domain.Question_ReplyVO;
import yjc.wdb.Highlighter.persistence.Question_ReplyDAO;

@Service //¼­ºñ½º °´Ã¼
public class Question_ReplyServiceImpl implements Question_ReplyService{
	
	@Inject
	private Question_ReplyDAO dao;

	@Override
	public void re_create(Question_ReplyVO vo) throws Exception {
		
		dao.re_create(vo);
	}

	@Override
	public void re_delete(String reply_id) throws Exception {
		
		dao.re_delete(reply_id);
	}

	@Override
	public List<Question_ReplyVO> re_list(String question_id) throws Exception {
		
		return dao.re_list(question_id);
	}
	
	@Override
	  public List<Question_ReplyVO> re_listPage(String question_id, Criteria cri) throws Exception {

	    return dao.re_listPage(question_id, cri);
	  }

	  @Override
	  public int re_count(String question_id) throws Exception {

	    return dao.re_count(question_id);
	  }
}
