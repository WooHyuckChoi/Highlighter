package yjc.wdb.Highlighter.persistence;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yjc.wdb.Highlighter.domain.CarrerVO;
import yjc.wdb.Highlighter.domain.User_InfoVO;
import yjc.wdb.Highlighter.domain.stu_infoVO;


@Repository
public class MyPageInfoDAOImpl implements MyPageInfoDAO
{
	
	@Inject
	private SqlSession session;
	
	private static String namespace="yjc.wdb.Highlighter.MyPageInfoMapper";
	
	@Override
	public User_InfoVO selectUserInfo(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".selectId",user_id);
	}

	@Override
	public void updateUserInfo(User_InfoVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace+".modifyInfo",vo);
	}

	@Override
	public List<HashMap> attendingLecture(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".attendingLectureList",user_id);
	}

	@Override
	public List<HashMap> endLecture(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".endLectureList",user_id);
	}

	@Override
	public List<HashMap> applicationList(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".applicationList",user_id);
	}

	@Override
	public void insertCalendar(stu_infoVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace+".instCalendar",vo);
	}

	@Override
	public List<stu_infoVO> calendarList(stu_infoVO vo) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".calendarList",vo);
	}

	@Override
	public List<String> selectStuId(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".selectStuId",ext_id);
	}

	@Override
	public void modifyTitle(stu_infoVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace+".modifyTitle",vo);
	}

	@Override
	public List<HashMap> selectMesssage(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".selectMessage", user_id);
	}

	@Override
	public void deleteList(stu_infoVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.delete(namespace+".deleteList",vo);
	}

	@Override
	public List<User_InfoVO> getUserInfo(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".extInStu",ext_id);
	}

	@Override
	public void insertTrophyInfo(CarrerVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace+".trophyInfoInsert",vo);
	}

	@Override
	public Integer countTrophy(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".countTrophy",user_id);
	}

	@Override
	public String selectCarrerId(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".selectCarrerId",user_id);
	}

	@Override
	public List<CarrerVO> trophyListAll(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".getTrophyInfo",user_id);
	}
}