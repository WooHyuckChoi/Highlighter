package yjc.wdb.Highlighter.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yjc.wdb.Highlighter.domain.exam_InfoVO;
import yjc.wdb.Highlighter.domain.prob_InfoVO;
import yjc.wdb.Highlighter.domain.test_InfoVO;
import yjc.wdb.Highlighter.domain.test_resultVO;
@Repository
public class test_InfoDAOImpl implements test_InfoDAO {
	@Inject
	private SqlSession session;
	
	private static String namespace
		= "yjc.wdb.Highlighter.testMapper";

	/* 마지막 test_id 구함 */
	@Override
	public String lastTestId(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".lastTestId", ext_id);
	}
	/* 시험 등록 - test_Info */
	@Override
	public void registerTest(test_InfoVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace+".registerTest",vo);
	}
	/* 시험 등록 - prob_Info */
	@Override
	public void registerProbAnsw(prob_InfoVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace+".registerProbAnsw", vo);
	}
	/* 시험 등록 - exam_Info */
	@Override
	public void registerExamInfo(exam_InfoVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace+".registerExamInfo", vo);
	}
	/* 시험 목록 불러오기 - test_Info */
	@Override
	public List<test_InfoVO> selectTest(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".selectTest", ext_id);
	}
	/* 시험지 정보 불러오기 */
	@Override
	public List<HashMap> selectExamInfo(String test_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".selectExamInfo", test_id);
	}
	/* 시험 답안 등록 - test_result*/
	@Override
	public void registerTestResult(test_resultVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace+".registerTestResult",vo);
	}
	/* 시험 시작 버튼 클릭 시 - 시험 상태 : clear로 변경 */
	@Override
	public void changeTestState(String test_id) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace+".changeTestState", test_id);
	}
	/* 시험 답안 제출 여부 */
	@Override
	public int testResultCount(String test_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".testResultCount",test_id);
	}
/*	@Override
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
	*/
	@Override
	public String TImage(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".TImage",ext_id);
	}
	

	
	
	
	
	

	
	
	
}
