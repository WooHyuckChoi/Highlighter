package yjc.wdb.Highlighter.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yjc.wdb.Highlighter.persistence.CarrerDAO;

@Service	
public class CarrerServiceImpl implements CarrerService {
	
	@Inject
	private CarrerDAO dao;
	
	@Override
	public int listCount(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.listCount(user_id);
	}

}
