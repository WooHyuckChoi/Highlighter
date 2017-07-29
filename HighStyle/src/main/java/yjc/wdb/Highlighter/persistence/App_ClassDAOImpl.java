package yjc.wdb.Highlighter.persistence;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yjc.wdb.Highlighter.domain.App_ClassVO;
import yjc.wdb.Highlighter.domain.Ext_InfoVO;

@Repository
public class App_ClassDAOImpl implements App_ClassDAO {

	private static String namespace =
			"yjc.wdb.Highlighter.AppClassMapper";
	
	@Inject
	private SqlSession session;
	
	@Override
	public List<HashMap> listAll(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".appClassList", user_id);
	}

	@Override
	public Ext_InfoVO appClassOne(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".appClassOne", user_id);
	}

	@Override
	public void appClass_create(App_ClassVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace+".appClass_create", vo);
	}

	@Override
	public List<HashMap> appClassList_Stu(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".appClassList_Stu", user_id);
	}

	@Override
	public void cancelClass(App_ClassVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.delete(namespace+".cancelClass", vo);
	}

	@Override
	public void acceptClass(App_ClassVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace+".acceptClass", vo);
	}

	@Override
	public void cancelAcceptClass(App_ClassVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace+".cancelAcceptClass", vo);
	}

}
