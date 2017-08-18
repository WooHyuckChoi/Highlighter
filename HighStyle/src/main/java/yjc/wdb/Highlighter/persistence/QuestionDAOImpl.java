package yjc.wdb.Highlighter.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yjc.wdb.Highlighter.domain.Criteria;
import yjc.wdb.Highlighter.domain.QuestionVO;

@Repository
public class QuestionDAOImpl implements QuestionDAO{
	
	@Inject
	private SqlSession session;
	
	private static String namespace
		="yjc.wdb.Highlighter.questionMapper";
	
	@Override
	public void create(QuestionVO vo)throws Exception{
		session.insert(namespace+".create", vo);
	}
	
	@Override
	public QuestionVO read(String question_id,String user_name)throws Exception{
		
		Map<String,Object> paramMap = new HashMap<>();
		
		paramMap.put("question_id", question_id);
	    paramMap.put("user_name", user_name);
		
	    return session.selectOne(namespace+".read",paramMap);
	}
	
	@Override
	public void update(QuestionVO vo)throws Exception{
		session.update(namespace +".update", vo);
	}
	
	@Override
	public void delete(String question_id)throws Exception{
	      
	    session.delete(namespace+".delete",question_id);  
	}
	
	@Override
	public List<QuestionVO> listAll() throws Exception {
		return session.selectList(namespace+".listAll");
	}

	@Override
	public int count() throws Exception {
		
		return session.selectOne(namespace+".count");
	}

	@Override
	public String select_question_id() throws Exception {
		
		return session.selectOne(namespace+".select_question_id");
	}

	@Override
	public List<QuestionVO> listPage(int page) throws Exception {
		
		if(page <=0){
			page=1;
		}
		page = (page-1)*10;
		
		return session.selectList(namespace+".listPage",page);
	}

	@Override
	public List<QuestionVO> listCriteria(Criteria cri) throws Exception {
		
		return session.selectList(namespace+".listCriteria", cri);
	}

	@Override
	public int countPaging(Criteria cri) throws Exception {
		
		return session.selectOne(namespace+".countPaging", cri);
	}
}
