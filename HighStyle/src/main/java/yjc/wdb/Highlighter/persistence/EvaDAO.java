package yjc.wdb.Highlighter.persistence;

import java.util.List;

import yjc.wdb.Highlighter.domain.EvaVO;
import yjc.wdb.Highlighter.domain.User_InfoVO;

public interface EvaDAO {
	
	public void create(EvaVO vo)throws Exception;
	
	public EvaVO read(String user_id)throws Exception;
	
	public void update(EvaVO vo)throws Exception;
	
	public void eva_update(User_InfoVO vo)throws Exception;

	public List<EvaVO> listAll()throws Exception;
	
}
