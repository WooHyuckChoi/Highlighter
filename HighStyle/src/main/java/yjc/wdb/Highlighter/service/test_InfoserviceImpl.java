package yjc.wdb.Highlighter.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yjc.wdb.Highlighter.domain.exam_InfoVO;
import yjc.wdb.Highlighter.domain.prob_InfoVO;
import yjc.wdb.Highlighter.domain.test_InfoVO;
import yjc.wdb.Highlighter.domain.test_resultVO;
import yjc.wdb.Highlighter.persistence.test_InfoDAO;

@Service
public class test_InfoserviceImpl implements test_InfoService {
	@Inject
	private test_InfoDAO dao;

	/* 마지막 test_id 구함 */
	@Override
	public String lastTestId(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.lastTestId(ext_id);
	}
	/* 시험 등록 - test_Info */
	@Override
	public void registerTest(test_InfoVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.registerTest(vo);
	}
	/* 시험 등록 - prob_Info */
	@Override
	public void registerProbAnsw(prob_InfoVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.registerProbAnsw(vo);
	}
	/* 시험 등록 - exam_Info */
	@Override
	public void registerExamInfo(exam_InfoVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.registerExamInfo(vo);
	}
	/* 시험 목록 불러오기 - test_Info */
	@Override
	public List<test_InfoVO> selectTest(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectTest(ext_id);
	}
	/* 시험지 정보 불러오기 */
	@Override
	public List<HashMap> selectExamInfo(String test_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectExamInfo(test_id);
	}
	/* 시험지 답안 등록 - test_result */
	@Override
	public void registerTestResult(test_resultVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.registerTestResult(vo);
	}
	/* 시험 시작 버튼 클릭 시 - 시험 상태 : clear로 변경 */
	@Override
	public void changeTestState(String test_id) throws Exception {
		// TODO Auto-generated method stub
		dao.changeTestState(test_id);
	}
	/* 시험 답안 제출 여부 */
	@Override
	public int testResultCount(String test_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.testResultCount(test_id);
	}
	/* 강사 입장 : 학생 시험 결과 불러오기*/
	@Override
	public List<HashMap> checkTestResult(String test_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.checkTestResult(test_id);
	}
	/*@Override
	public void create(test_InfoVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.create(vo);
	}

	@Override
	public String extidse(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.extidse(ext_id);
	}

	@Override
	public List<HashMap> testList(String ext_id,String user_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.testList(ext_id,user_id);
	}
	
	@Override
	public List<test_InfoVO> teachertestList(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.teachertestList(ext_id);
	}

	

	@Override
	public List<test_InfoVO> testImage(String test_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.testImage(test_id);
	}

	@Override
	public List<String> allid(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.allid(ext_id);
	}
	*/
	@Override
	public String TImage(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.TImage(ext_id);
	}
	
	
	
	
	
	
	
	


	

}
