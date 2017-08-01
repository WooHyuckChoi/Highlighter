package yjc.wdb.Highlighter.persistence;

import java.util.List;

import yjc.wdb.Highlighter.domain.EvaVO;

public interface EvaDAO {
	
	public void create(EvaVO vo)throws Exception;
	
	public EvaVO read(String user_id)throws Exception;
	
	public void update(EvaVO vo)throws Exception;

	public List<EvaVO> listAll()throws Exception;
	
}
