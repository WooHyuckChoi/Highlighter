package yjc.wdb.Highlighter.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yjc.wdb.Highlighter.domain.Criteria;
import yjc.wdb.Highlighter.domain.DataCheckVO;
import yjc.wdb.Highlighter.domain.LectureEvaluationBestScoreVO;
import yjc.wdb.Highlighter.domain.LectureEvaluationTutorInfoVO;
import yjc.wdb.Highlighter.domain.LectureEvaluationUpdateVO;
import yjc.wdb.Highlighter.domain.LectureEvaluationVO;
import yjc.wdb.Highlighter.domain.ParentVO;
import yjc.wdb.Highlighter.domain.TutorListVO;
import yjc.wdb.Highlighter.domain.TestResultVO;
import yjc.wdb.Highlighter.persistence.LectureEvaluationDAO;

@Service
public class LectureEvaluationServiceImpl implements LectureEvaluationService {

	@Inject
	private LectureEvaluationDAO dao;
	
	
	@Override
	public LectureEvaluationVO read(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.read(ext_id);
	}
	
	@Override
	public List<LectureEvaluationTutorInfoVO> read2(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.read2(ext_id);
	}
	
	@Override
	public List<LectureEvaluationTutorInfoVO> read3(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.read3(ext_id);
	}
	
	@Override
	public List<LectureEvaluationVO> search(String searchIp) throws Exception {
		// TODO Auto-generated method stub
		return dao.search(searchIp);
	}
	
	@Override
	public List<LectureEvaluationVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return dao.listAll();
	}

	@Override
	public List<LectureEvaluationVO> listCriteria(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return dao.listCriteria(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return dao.countPaging(cri);
	}

	@Override
	public List<LectureEvaluationBestScoreVO> bestScore(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.bestScore(ext_id);
	}

	@Override
	public List<ParentVO> parentLogin(ParentVO vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.parentLogin(vo);
	}

	@Override
	public List<TutorListVO> tutorList(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.tutorList(user_id);
	}

	@Override
	public List<HashMap> testResult(TestResultVO vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.testResult(vo);
	}

	@Override
	public List<HashMap> userResult(TestResultVO vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.userResult(vo);
	}

	@Override
	public List<HashMap> calendarList(TestResultVO vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.calendarList(vo);
	}

	@Override
	public int dataCheck(DataCheckVO vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.dataCheck(vo);
	}

	@Override
	public void create(LectureEvaluationUpdateVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.create(vo);
	}


}
