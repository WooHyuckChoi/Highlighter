package yjc.wdb.Highlighter.persistence;

import java.util.List;

import yjc.wdb.Highlighter.domain.Criteria;
import yjc.wdb.Highlighter.domain.LectureEvaluationBestScoreVO;
import yjc.wdb.Highlighter.domain.LectureEvaluationTutorInfoVO;
import yjc.wdb.Highlighter.domain.LectureEvaluationVO;
import yjc.wdb.Highlighter.domain.ParentVO;
import yjc.wdb.Highlighter.domain.TutorListVO;

public interface LectureEvaluationDAO {

	public LectureEvaluationVO read(String ext_id) throws Exception;
	public List<LectureEvaluationTutorInfoVO> read2(String ext_id) throws Exception;
	public List<LectureEvaluationTutorInfoVO> read3(String ext_id) throws Exception;
	public List<LectureEvaluationVO> search(String searchIp) throws Exception;
	public List<LectureEvaluationVO> listAll() throws Exception;
	
	public List<LectureEvaluationVO> listPage(int page) throws Exception;
	public List<LectureEvaluationVO> listCriteria(Criteria cri) throws Exception;
	public int countPaging(Criteria cri) throws Exception;
	
	public List<LectureEvaluationBestScoreVO> bestScore(String ext_id) throws Exception;
	
	public List<ParentVO> parentLogin(ParentVO vo) throws Exception;
	public List<TutorListVO> tutorList(String user_id) throws Exception;
}
