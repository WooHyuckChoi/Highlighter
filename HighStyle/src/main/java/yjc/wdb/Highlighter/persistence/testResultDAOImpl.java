package yjc.wdb.Highlighter.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yjc.wdb.Highlighter.domain.test_resultVO;
@Repository
public class testResultDAOImpl implements testResultDAO {
	@Inject
	private SqlSession session;
	
	private static String namespace
	= "yjc.wdb.Highlighter.testresultMapper";

	@Override
	public void tcreate(test_resultVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace+".tcreate",vo);
	}

	@Override
	public String stu_answ(String prob_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".stu_answ",prob_id);
	}


	public void w_answ_note_cont(test_resultVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace+".w_answ_note_cont",vo);
	}

	@Override
	public int correctAnswercount(test_resultVO vo) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".correctAnswercount",vo);
	}

	@Override
	public String WrongNote(test_resultVO vo) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".WrongNote",vo);
	}
	
	/*�л� ���� ���̺� ���� ���� ���*/
	@Override
	public List<test_resultVO> weekCorrectAnsw(String user_id,String ext_id) throws Exception {
		// TODO Auto-generated method stub
		Map<String, String> paramMap1 = new HashMap<String, String>();
		paramMap1.put("user_id", user_id);
		paramMap1.put("ext_id", ext_id);
		
		return session.selectList(namespace+".weekCorrectAnsw",paramMap1);
	}
	@Override
	public List<HashMap> ListWeeksCorrect(String user_id,String ext_id) throws Exception {
		// TODO Auto-generated method stub
		
		Map<String, String> paramMap = new HashMap<String, String>();
		paramMap.put("user_id", user_id);
		paramMap.put("ext_id", ext_id);
		
	
		return session.selectList(namespace+".ListWeeksCorrect",paramMap);
	}

	@Override
	public void updateWansNote(test_resultVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace+".uploadWansNote",vo);
	}

	@Override
	public List<String> selectWansNote(test_resultVO vo) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".selectWansNote",vo);
	}


	


}
