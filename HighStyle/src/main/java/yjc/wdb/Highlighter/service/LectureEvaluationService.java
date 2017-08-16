package yjc.wdb.Highlighter.service;

import java.util.HashMap;
import java.util.List;

import yjc.wdb.Highlighter.domain.Criteria;
import yjc.wdb.Highlighter.domain.DataCheckVO;
import yjc.wdb.Highlighter.domain.LectureEvaluationBestScoreVO;
import yjc.wdb.Highlighter.domain.LectureEvaluationTutorInfoVO;
import yjc.wdb.Highlighter.domain.LectureEvaluationUpdateVO;
import yjc.wdb.Highlighter.domain.LectureEvaluationVO;
import yjc.wdb.Highlighter.domain.ParentVO;
import yjc.wdb.Highlighter.domain.TutorListVO;
import yjc.wdb.Highlighter.domain.TestResultVO;

public interface LectureEvaluationService {

	public LectureEvaluationVO read(String ext_id) throws Exception;
	public List<LectureEvaluationTutorInfoVO> read2(String ext_id) throws Exception;
	public List<LectureEvaluationTutorInfoVO> read3(String ext_id) throws Exception;
	public List<LectureEvaluationVO> search(String searchIp) throws Exception;
	public List<LectureEvaluationVO> listAll() throws Exception;
	
	public List<LectureEvaluationVO> listCriteria(Criteria cri) throws Exception;
	public int listCountCriteria(Criteria cri) throws Exception;
	
	public List<LectureEvaluationBestScoreVO> bestScore(String ext_id) throws Exception;
	
	public List<ParentVO> parentLogin(ParentVO vo) throws Exception;
	public List<TutorListVO> tutorList(String user_id) throws Exception;
	
	public List<HashMap> testResult(TestResultVO vo) throws Exception;
	public List<HashMap> userResult(TestResultVO vo) throws Exception;
	public List<HashMap> calendarList(TestResultVO vo) throws Exception;
	
	public int dataCheck(DataCheckVO vo) throws Exception;
	public void create(LectureEvaluationUpdateVO vo) throws Exception;
}
