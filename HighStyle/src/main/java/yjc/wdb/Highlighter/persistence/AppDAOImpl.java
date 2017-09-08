package yjc.wdb.Highlighter.persistence;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yjc.wdb.Highlighter.domain.User_InfoVO;

@Repository
public class AppDAOImpl implements AppDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace = "yjc.wdb.Highlighter.AppMapper";
	
	@Override
	public List<User_InfoVO> app_Login(String user_id, String user_pw) throws Exception {
		
		Map<String, Object> map = new LinkedHashMap<String, Object>();
		map.put("user_id",user_id);
		map.put("user_pw", user_pw);
		
		// TODO Auto-generated method stub
		return session.selectList(namespace+".app_Login", map);
	}

	@Override
	public List<HashMap> app_Home(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".app_home", user_id);
	}

	@Override
	public List<HashMap> app_Calender(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".app_Calender", user_id);
	}

	@Override
	public List<HashMap> app_Calender2(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".app_Calender2", user_id);
	}

	@Override
	public List<HashMap> lecturePage(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".lecturePage", ext_id);
	}

	@Override
	public List<HashMap> replayList(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".replayList", ext_id);
	}

	@Override
	public List<HashMap> homeworkHtmlCont(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".homeworkHtmlCont", ext_id);
	}

	@Override
	public List<HashMap> app_testList(String user_id, String ext_id) throws Exception {
		// TODO Auto-generated method stub
		Map<String, Object> map = new LinkedHashMap<String, Object>();
		map.put("user_id",user_id);
		map.put("ext_id", ext_id);
		return session.selectList(namespace+".app_testList", map);
	}

	@Override
	public List<HashMap> app_testResultList(String user_id, String test_id) throws Exception {
		// TODO Auto-generated method stub
		Map<String, Object> map = new LinkedHashMap<String, Object>();
		map.put("user_id",user_id);
		map.put("test_id", test_id);
		
		return session.selectList(namespace+".app_testResultList", map);
	}

	@Override
	public void app_storeWrongNoteCont(String wrongNoteCont, String prob_id, String user_id) throws Exception {
		// TODO Auto-generated method stub
		Map<String, Object> map = new LinkedHashMap<String, Object>();
		map.put("wrongNoteCont",wrongNoteCont);
		map.put("prob_id", prob_id);
		map.put("user_id", user_id);
		
		session.update(namespace+".storeWrongNoteCont", map);
	}

	@Override
	public List<HashMap> app_stuInfoContList(String ext_id, String user_id) throws Exception {
		// TODO Auto-generated method stub
		Map<String, Object> map = new LinkedHashMap<String, Object>();
		map.put("ext_id",ext_id);
		map.put("user_id", user_id);
		
		return session.selectList(namespace+".app_stuInfoContList", map);
	}

	@Override
	public List<HashMap> app_totalClassCount(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".app_totalClassCount", ext_id);
	}

}
