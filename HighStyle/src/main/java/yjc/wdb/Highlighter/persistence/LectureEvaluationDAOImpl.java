package yjc.wdb.Highlighter.persistence;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yjc.wdb.Highlighter.domain.Criteria;
import yjc.wdb.Highlighter.domain.DataCheckVO;
import yjc.wdb.Highlighter.domain.LectureEvaluationBestScoreVO;
import yjc.wdb.Highlighter.domain.LectureEvaluationTutorInfoVO;
import yjc.wdb.Highlighter.domain.LectureEvaluationUpdateVO;
import yjc.wdb.Highlighter.domain.LectureEvaluationVO;
import yjc.wdb.Highlighter.domain.ParentVO;
import yjc.wdb.Highlighter.domain.TutorListVO;
import yjc.wdb.Highlighter.domain.TestResultVO;

@Repository
public class LectureEvaluationDAOImpl implements LectureEvaluationDAO{
	
	@Inject
	private SqlSession session;
	
	private static String namespace = "yjc.wdb.Highlighter.LectureEvaluationMapper";

	@Override
	public LectureEvaluationVO read(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".read", ext_id);
	}
	
	@Override
	public List<LectureEvaluationTutorInfoVO> read2(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".read2", ext_id);
	}
	
	@Override
	public List<LectureEvaluationTutorInfoVO> read3(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".read3", ext_id);
	}
	
	@Override
	public List<LectureEvaluationVO> search(String searchIp) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".search", searchIp);
	}
	
	@Override
	public List<LectureEvaluationVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".listAll");
	}

	@Override
	public List<LectureEvaluationVO> listPage(int page) throws Exception {
		// TODO Auto-generated method stub
		
		if(page <= 0){
			page = 1;
		}
		
		page = (page - 1) * 10;
		
		return session.selectList(namespace+".listPage", page);
	}

	@Override
	public List<LectureEvaluationVO> listCriteria(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".listCriteria", cri);
	}

	@Override
	public int countPaging(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".countPaging", cri);
	}

	@Override
	public List<LectureEvaluationBestScoreVO> bestScore(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".bestScore", ext_id);
	}

	@Override
	public List<ParentVO> parentLogin(ParentVO vo) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".parentLogin", vo);
	}

	@Override
	public List<TutorListVO> tutorList(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".tutorSearch", user_id);
	}

	@Override
	public List<HashMap> testResult(TestResultVO vo) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".testResult", vo);
	}

	@Override
	public List<HashMap> userResult(TestResultVO vo) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".userResult", vo);
	}

	@Override
	public List<HashMap> calendarList(TestResultVO vo) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".calendarList", vo);
	}

	@Override
	public int dataCheck(DataCheckVO vo) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".dataCheck", vo);
	}

	@Override
	public void create(LectureEvaluationUpdateVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace+".create", vo);
	}


}
