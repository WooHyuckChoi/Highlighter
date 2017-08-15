package yjc.wdb.Highlighter.service;

import java.util.List;

import yjc.wdb.Highlighter.domain.Ext_InfoVO;
import yjc.wdb.Highlighter.domain.Ext_TimetableVO;
import yjc.wdb.Highlighter.domain.User_InfoVO;
import yjc.wdb.Highlighter.domain.user_SearchLogVO;

public interface User_InfoService {
	public void regist(User_InfoVO vo)throws Exception;
	public User_InfoVO read(String user_id)throws Exception;
	public int checkID(User_InfoVO vo)throws Exception;
	public int login(User_InfoVO vo)throws Exception;
	public int classCount(String user_id)throws Exception;
	public User_InfoVO user_grade(String user_id)throws Exception;
	public void  ext_table_create(Ext_TimetableVO vo) throws Exception;
	public void ext_create(Ext_InfoVO vo) throws Exception;
	public String ext_id_select(Ext_InfoVO vo) throws Exception;
	
	
	/*���� �����л����� �л� ������ ���*/ 
	public User_InfoVO profile(String user_id) throws Exception;
	public void user_SearchLog(user_SearchLogVO vo)throws Exception;
	
}
