package yjc.wdb.Highlighter.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yjc.wdb.Highlighter.domain.EvaVO;

@Repository
public class EvaDAOImpl implements EvaDAO{
	
	@Inject
	private SqlSession session;
	
	private static String namespace
		="yjc.wdb.Highlighter.evaMapper";
	
	@Override
	public void create(EvaVO vo)throws Exception{
		session.insert(namespace+".create", vo);
	}
	
	@Override
	public EvaVO read(String user_id)throws Exception{
	    return session.selectOne(namespace+".read",user_id);
	}
	
	@Override
	public void update(EvaVO vo)throws Exception{
		session.update(namespace +".update", vo);
	}
	
	@Override
	public List<EvaVO> listAll() throws Exception {
		return session.selectList(namespace+".listAll");
	}
}
