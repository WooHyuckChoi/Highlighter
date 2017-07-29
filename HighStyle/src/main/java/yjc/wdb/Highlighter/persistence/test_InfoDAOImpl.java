package yjc.wdb.Highlighter.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yjc.wdb.Highlighter.domain.test_InfoVO;
@Repository
public class test_InfoDAOImpl implements test_InfoDAO {
	@Inject
	private SqlSession session;
	
	private static String namespace
		= "yjc.wdb.Highlighter.testMapper";
	@Override
	public void create(test_InfoVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace+".create",vo);
	}
	@Override
	public String extidse(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".extidse",ext_id);
	}
	
	@Override
	public List<HashMap> testList(String ext_id,String user_id) throws Exception {
		// TODO Auto-generated method stub
		
		Map<String, String> paramMap = new HashMap<String, String>();
		paramMap.put("ext_id", ext_id);
		paramMap.put("user_id", user_id);
		return session.selectList(namespace+".testList", paramMap);
	}
	@Override
	public List<test_InfoVO>  testImage(String test_id) throws Exception {
		//TODO Auto-generated method stub
		return session.selectList(namespace+".testImage", test_id);
	}
	@Override
	public List<String> allid(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".allid",ext_id);
	}
	
	@Override
	public List<test_InfoVO> teachertestList(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".teachertestList", ext_id);
	}
	
	@Override
	public String TImage(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".TImage",ext_id);
	}
	
	
	
	
	

}
