package yjc.wdb.Highlighter.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yjc.wdb.Highlighter.domain.Criteria;
import yjc.wdb.Highlighter.domain.Question_ReplyVO;

@Repository
public class Question_ReplyDAOImpl implements Question_ReplyDAO{
	
	@Inject
	private SqlSession session;
	
	private static String namespace
		="yjc.wdb.Highlighter.question_replyMapper";
	
	@Override
	public void re_create(Question_ReplyVO vo)throws Exception{
		session.insert(namespace+".re_create", vo);
	}
		
	@Override
	public void re_delete(String reply_id)throws Exception{
	      
	    session.delete(namespace+".re_delete",reply_id);  
	}
	
	@Override
	public List<Question_ReplyVO> re_list(String question_id) throws Exception {
		
		return session.selectList(namespace + ".re_list", question_id);
	}
	
	@Override
	  public List<Question_ReplyVO> re_listPage(String question_id, Criteria cri) throws Exception {

	    Map<String, Object> paramMap = new HashMap<>();

	    paramMap.put("question_id", question_id);
	    paramMap.put("cri", cri);

	    return session.selectList(namespace + ".listPage", paramMap);
	  }
	
	@Override
	  public int re_count(String question_id) throws Exception {

	    return session.selectOne(namespace + ".re_count", question_id);
	  }
}
