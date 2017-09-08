package yjc.wdb.Highlighter.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yjc.wdb.Highlighter.domain.App_ClassVO;
import yjc.wdb.Highlighter.domain.Ext_InfoVO;
import yjc.wdb.Highlighter.domain.User_InfoVO;
import yjc.wdb.Highlighter.domain.prob_InfoVO;
import yjc.wdb.Highlighter.domain.stu_infoVO;
import yjc.wdb.Highlighter.domain.test_resultVO;

@Repository
public class StudyRoomDAOImpl implements StudyRoomDAO 
{
	@Inject
	private SqlSession session;
	
	private static String namespace = "yjc.wdb.Highlighter.StudyRoomMapper";
	@Override
	public Ext_InfoVO Ext_read(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".Ext_read",ext_id);
	}
	@Override
	public void updateOpenStat(HashMap<String, String> vo) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace+".updateNtoYStat",vo);
	}
	@Override
	public void updateCloseStat(HashMap<String, String> vo) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace+".updateYtoNStat",vo);
	}
	@Override
	public String selectGrade(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".selectGrade",user_id);
	}
	@Override
	public String selectOpenStat(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".selectOpenStat",ext_id);
	}
	@Override
	public User_InfoVO profile(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".profile",user_id);
	}
	@Override
	public List<HashMap> selectTestResult(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".testResultList",ext_id);
	}
	@Override
	public List<HashMap> selectStuTestResult(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".testStudentResultList",user_id);
	}
	@Override
	public int countStudent(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".countStudent",ext_id);
	}
	@Override
	public List<stu_infoVO> calendarList(Map<String, String> vo) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".calendarList",vo);
	}
	@Override
	public Integer countExtStudent(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".countExtStu",ext_id);
	}
	@Override
	public List<HashMap> searchTestAnswer(test_resultVO test_resultVO) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".searchTestAnswer",test_resultVO);
	}
	@Override
	public List<test_resultVO> searchStuAnswer(test_resultVO test_resultVO) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".searchStuAnswer",test_resultVO);
	}
	@Override
	public List<prob_InfoVO> searchProbAnswer(String test_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".searchProbAnswer",test_id);
	}
	@Override
	public List<App_ClassVO> selectStuInfo(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".selectStuInfo", ext_id);
	}
	@Override
	public Integer countTest(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".countTest",ext_id);
	}
}
