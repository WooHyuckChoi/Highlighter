package yjc.wdb.Highlighter.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yjc.wdb.Highlighter.domain.Ext_InfoVO;
import yjc.wdb.Highlighter.domain.Ext_TimetableVO;
import yjc.wdb.Highlighter.domain.User_InfoVO;
import yjc.wdb.Highlighter.domain.user_SearchLogVO;
import yjc.wdb.Highlighter.persistence.User_InfoDAO;

@Service
public class User_InfoServiceImpl implements User_InfoService {

	@Inject
	private User_InfoDAO dao;
	
	public User_InfoServiceImpl() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public void regist(User_InfoVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.create(vo);
	}

	@Override
	public User_InfoVO read(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.read(user_id);
	}

	@Override
	public int checkID(User_InfoVO vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.checkID(vo);
	}

	@Override
	public int login(User_InfoVO vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.login(vo);
	}
	
	@Override
	public int classCount(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.classCount(user_id);
	}
	
	@Override
	public User_InfoVO user_grade(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.user_grade(user_id);
	}
	
	@Override
	public void ext_table_create(Ext_TimetableVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.ext_table_create(vo);
	}
	
	@Override
	public void ext_create(Ext_InfoVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.ext_create(vo);
	}
	
	@Override
	public String ext_id_select(Ext_InfoVO vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.ext_id_select(vo);
	}

	@Override
	public User_InfoVO profile(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.profile(user_id);
	}

	@Override
	public void user_SearchLog(user_SearchLogVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.user_SearchLog(vo);
	}


	
}
