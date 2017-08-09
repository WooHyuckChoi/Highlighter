package yjc.wdb.Highlighter.persistence;

import java.util.List;

import yjc.wdb.Highlighter.domain.Eva_TeacherVO;
import yjc.wdb.Highlighter.domain.User_InfoVO;

public interface Eva_TeacherDAO {
	
	public void create(Eva_TeacherVO vo)throws Exception;
	
	public Eva_TeacherVO read(String user_id)throws Exception;
	
	public void update(Eva_TeacherVO vo)throws Exception;
	
	public void eva_update(User_InfoVO vo)throws Exception;

	public List<Eva_TeacherVO> listAll()throws Exception;
	
}
