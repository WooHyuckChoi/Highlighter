package yjc.wdb.Highlighter.service;

import java.util.List;

import yjc.wdb.Highlighter.domain.Criteria;
import yjc.wdb.Highlighter.domain.Question_ReplyVO;

public interface Question_ReplyService {
	
	public void re_create(Question_ReplyVO vo) throws Exception;
	
	public void re_delete(String reply_id)throws Exception;
	
	public List<Question_ReplyVO> re_list(String question_id)throws Exception;
	
	public List<Question_ReplyVO> re_listPage(String question_id, Criteria cri)throws Exception;

	public int re_count(String question_id) throws Exception;
}