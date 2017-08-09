package yjc.wdb.Highlighter.service;

import java.util.List;

import yjc.wdb.Highlighter.domain.Eva_TeacherVO;
import yjc.wdb.Highlighter.domain.User_InfoVO;

public interface Eva_TeacherService {
	
	public void regist(Eva_TeacherVO board)throws Exception;
	
	public Eva_TeacherVO read(String user_id)throws Exception;
	
	public void modify(Eva_TeacherVO board)throws Exception;
	
	public void eva_update(User_InfoVO eva_board)throws Exception;
	
	public List<Eva_TeacherVO> listAll()throws Exception;
	
}
