package yjc.wdb.Highlighter.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yjc.wdb.Highlighter.domain.EvaVO;
import yjc.wdb.Highlighter.persistence.EvaDAO;

@Service
public class EvaServiceImpl implements EvaService{
	
	@Inject
	private EvaDAO dao;
	
	@Override
	public void regist(EvaVO board)throws Exception{
		dao.create(board);
	}
	
	@Override
	public EvaVO read(String user_id)throws Exception{
		return dao.read(user_id);
	}
	
	@Override
	public void modify(EvaVO board)throws Exception{
		dao.update(board);
	}
	
	@Override
	public List<EvaVO> listAll()throws Exception{
		return dao.listAll();
	}
}
