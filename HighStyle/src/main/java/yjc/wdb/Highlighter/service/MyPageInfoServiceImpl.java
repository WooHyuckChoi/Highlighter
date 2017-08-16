package yjc.wdb.Highlighter.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yjc.wdb.Highlighter.domain.CarrerVO;
import yjc.wdb.Highlighter.domain.User_InfoVO;
import yjc.wdb.Highlighter.domain.stu_infoVO;
import yjc.wdb.Highlighter.persistence.MyPageInfoDAO;

@Service
public class MyPageInfoServiceImpl implements MyPageInfoService
{
	@Inject
	private MyPageInfoDAO dao;
	@Override
	public User_InfoVO selectUserInfo(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectUserInfo(user_id);
	}
	@Override
	public void updateUserInfo(User_InfoVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.updateUserInfo(vo);
	}
	@Override
	public List<HashMap> attendingLecture(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.attendingLecture(user_id);
	}
	@Override
	public List<HashMap> endLecture(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.endLecture(user_id);
	}
	@Override
	public List<HashMap> applicationList(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.applicationList(user_id);
	}
	@Override
	public void insertCalendar(stu_infoVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.insertCalendar(vo);
	}
	@Override
	public List<stu_infoVO> calendarList(stu_infoVO vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.calendarList(vo);
	}
	@Override
	public List<String> selectStuId(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectStuId(ext_id);
	}
	@Override
	public void modifyTitle(stu_infoVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.modifyTitle(vo);
	}
	@Override
	public List<HashMap> selectMesssage(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectMesssage(user_id);
	}
	@Override
	public void deleteList(stu_infoVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.deleteList(vo);
	}
	@Override
	public List<User_InfoVO> getUserInfo(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.getUserInfo(ext_id);
	}
	@Override
	public void insertTrophyInfo(CarrerVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.insertTrophyInfo(vo);
	}
	@Override
	public Integer countTrophy(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.countTrophy(user_id);
	}
	@Override
	public String selectCarrerId(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectCarrerId(user_id);
	}
	@Override
	public List<CarrerVO> trophyListAll(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.trophyListAll(user_id);
	}
	
}