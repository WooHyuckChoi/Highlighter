package yjc.wdb.Highlighter.persistence;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yjc.wdb.Highlighter.domain.Criteria;
import yjc.wdb.Highlighter.domain.Ext_InfoVO;
import yjc.wdb.Highlighter.domain.User_InfoVO;
import yjc.wdb.Highlighter.domain.privateSearchCriteria;

@Repository
public class Ext_InfoDAOImpl implements Ext_InfoDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace = "yjc.wdb.Highlighter.Ext_InfoMapper";
	
	@Override
	public List<HashMap> listAll(Criteria cri) throws Exception {
		return session.selectList(namespace+".listAll", cri);
	}

	@Override
	public int countPage(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".countPage", cri);
	}

	@Override
	public Ext_InfoVO read(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".read", user_id);
	}

	@Override
	public List<HashMap> onGoingExt(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".onGoingExt", user_id);
	}

	@Override
	public List<HashMap> onGoingExt_Stu(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".onGoingExt_Stu", user_id);
	}

	@Override
	public void acceptPrivateClass(Ext_InfoVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace+".acceptPrivateClass", vo);
	}
}
