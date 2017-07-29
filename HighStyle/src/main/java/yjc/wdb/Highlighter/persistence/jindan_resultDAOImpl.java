package yjc.wdb.Highlighter.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yjc.wdb.Highlighter.domain.jindan_resultVO;
@Repository
public class jindan_resultDAOImpl implements jindan_resultDAO {

	@Inject
	private SqlSession session;

	private static String namespace = "yjc.wdb.Highlighter.jinResultMapper";

	
	@Override
	public void createResult(jindan_resultVO jindan) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace+".createResult",jindan);
	}

}
