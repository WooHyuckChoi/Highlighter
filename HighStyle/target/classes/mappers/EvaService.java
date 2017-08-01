package yjc.wdb.Highlighter.service;

import java.util.List;

import yjc.wdb.Highlighter.domain.EvaVO;

public interface EvaService {
	
	public void regist(EvaVO board)throws Exception;
	
	public EvaVO read(String user_id)throws Exception;
	
	public void modify(EvaVO board)throws Exception;
	
	public List<EvaVO> listAll()throws Exception;
	
}
