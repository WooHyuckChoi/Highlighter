package yjc.wdb.Highlighter.persistence;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yjc.wdb.Highlighter.domain.Ext_InfoVO;
import yjc.wdb.Highlighter.domain.User_InfoVO;

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
	
}
