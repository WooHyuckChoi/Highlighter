package yjc.wdb.Highlighter.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yjc.wdb.Highlighter.domain.App_ClassVO;
import yjc.wdb.Highlighter.domain.Ext_InfoVO;
import yjc.wdb.Highlighter.domain.User_InfoVO;
import yjc.wdb.Highlighter.domain.prob_InfoVO;
import yjc.wdb.Highlighter.domain.stu_infoVO;
import yjc.wdb.Highlighter.domain.test_resultVO;
import yjc.wdb.Highlighter.persistence.StudyRoomDAO;

@Service
public class StudyRoomServiceImpl implements StudyRoomService 
{
	@Inject
	private StudyRoomDAO dao;
	
	@Override
	public Ext_InfoVO Ext_read(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.Ext_read(ext_id);
	}

	@Override
	public void updateOpenStat(HashMap<String, String> vo) throws Exception {
		// TODO Auto-generated method stub
		dao.updateOpenStat(vo);
	}

	@Override
	public void updateCloseStat(HashMap<String, String> vo) throws Exception {
		// TODO Auto-generated method stub
		dao.updateCloseStat(vo);
	}

	@Override
	public String selectGrade(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectGrade(user_id);
	}

	@Override
	public String selectOpenStat(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOpenStat(ext_id);
	}

	@Override
	public User_InfoVO profile(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.profile(user_id);
	}

	@Override
	public List<HashMap> selectTestResult(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectTestResult(ext_id);
	}

	@Override
	public List<HashMap> selectStuTestResult(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectStuTestResult(user_id);
	}

	@Override
	public int countStudent(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.countStudent(ext_id);
	}

	@Override
	public List<stu_infoVO> calendarList(Map<String, String> vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.calendarList(vo);
	}

	@Override
	public Integer countExtStudent(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.countExtStudent(ext_id);
	}

	@Override
	public List<HashMap> searchTestAnswer(test_resultVO test_resultVO) throws Exception {
		// TODO Auto-generated method stub
		return dao.searchTestAnswer(test_resultVO);
	}

	@Override
	public List<test_resultVO> searchStuAnswer(test_resultVO test_resultVO) throws Exception {
		// TODO Auto-generated method stub
		return dao.searchStuAnswer(test_resultVO);
	}

	@Override
	public List<prob_InfoVO> searchProbAnswer(String test_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.searchProbAnswer(test_id);
	}

	@Override
	public List<App_ClassVO> selectStuInfo(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectStuInfo(ext_id);
	}
	
}
