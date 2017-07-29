package yjc.wdb.Highlighter.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yjc.wdb.Highlighter.domain.App_ClassVO;
import yjc.wdb.Highlighter.domain.Ext_InfoVO;
import yjc.wdb.Highlighter.persistence.App_ClassDAO;

@Service
public class App_ClassServiceImpl implements App_ClassSerivce {

	@Inject
	private App_ClassDAO dao;
	
	@Override
	public List<HashMap> listAll(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.listAll(user_id);
	}

	@Override
	public Ext_InfoVO appClassOne(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.appClassOne(user_id);
	}

	@Override
	public void appClass_create(App_ClassVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.appClass_create(vo);
	}

	@Override
	public List<HashMap> appClassList_Stu(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.appClassList_Stu(user_id);
	}

	@Override
	public void cancelClass(App_ClassVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.cancelClass(vo);
	}

	@Override
	public void acceptClass(App_ClassVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.acceptClass(vo);
	}

	@Override
	public void cancelAcceptClass(App_ClassVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.cancelAcceptClass(vo);
	}

}
