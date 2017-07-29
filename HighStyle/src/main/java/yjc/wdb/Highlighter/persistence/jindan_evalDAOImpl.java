package yjc.wdb.Highlighter.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yjc.wdb.Highlighter.domain.jindan_evalVO;
@Repository
public class jindan_evalDAOImpl implements jindan_evalDAO {

	@Inject
	private SqlSession session;

	private static String namespace = "yjc.wdb.Highlighter.jindanMapper";
	
	@Override
	public void createEval(jindan_evalVO jindan) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace+".createEval",jindan);
	}

	@Override
	public List<String> jindanResiNot(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".jindanResiNot",ext_id);
	}

	@Override
	public List<String> jindanContent(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".jindanContent",ext_id);
	}

	
	

}
