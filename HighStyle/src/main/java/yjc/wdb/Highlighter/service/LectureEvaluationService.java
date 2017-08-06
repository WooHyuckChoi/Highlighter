package yjc.wdb.Highlighter.service;

import java.util.List;

import yjc.wdb.Highlighter.domain.Criteria;
import yjc.wdb.Highlighter.domain.LectureEvaluationBestScoreVO;
import yjc.wdb.Highlighter.domain.LectureEvaluationTutorInfoVO;
import yjc.wdb.Highlighter.domain.LectureEvaluationVO;

public interface LectureEvaluationService {

	public LectureEvaluationVO read(String ext_id) throws Exception;
	public List<LectureEvaluationTutorInfoVO> read2(String ext_id) throws Exception;
	public List<LectureEvaluationTutorInfoVO> read3(String ext_id) throws Exception;
	public List<LectureEvaluationVO> search(String searchIp) throws Exception;
	public List<LectureEvaluationVO> listAll() throws Exception;
	
	public List<LectureEvaluationVO> listCriteria(Criteria cri) throws Exception;
	public int listCountCriteria(Criteria cri) throws Exception;
	
	public List<LectureEvaluationBestScoreVO> bestScore(String ext_id) throws Exception;
}
