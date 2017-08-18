package yjc.wdb.Highlighter.persistence;

import java.util.HashMap;
import java.util.List;

import yjc.wdb.Highlighter.domain.CarrerVO;
import yjc.wdb.Highlighter.domain.User_InfoVO;
import yjc.wdb.Highlighter.domain.stu_infoVO;

public interface MyPageInfoDAO 
{
	public User_InfoVO selectUserInfo(String user_id) throws Exception;
	public void updateUserInfo(User_InfoVO vo) throws Exception;
	public List<HashMap> attendingLecture(String user_id) throws Exception;
	public List<HashMap> endLecture(String user_id) throws Exception;
	public List<HashMap> applicationList(String user_id) throws Exception;
	public List<HashMap> selectMesssage(String user_id)throws Exception; 
	
	public void insertCalendar(stu_infoVO vo) throws Exception;
	public List<stu_infoVO> calendarList(stu_infoVO vo) throws Exception;
	public List<String> selectStuId(String ext_id) throws Exception;
	public void modifyTitle(stu_infoVO vo) throws Exception;
	public void deleteList(stu_infoVO vo) throws Exception;
	
	public List<User_InfoVO> getUserInfo(String ext_id) throws Exception;
	
	/*뱃지 에서 쓰는 부분 입니당*/
	public void insertTrophyInfo(CarrerVO vo) throws Exception;
	public Integer countTrophy(String user_id) throws Exception;
	public String selectCarrerId(String user_id) throws Exception;
	public List<CarrerVO> trophyListAll(String user_id) throws Exception;
	public List<CarrerVO> batListAll(String user_id) throws Exception;
	public String searchMark(String user_id) throws Exception;
	public void updateMark(String user_id) throws Exception;
}