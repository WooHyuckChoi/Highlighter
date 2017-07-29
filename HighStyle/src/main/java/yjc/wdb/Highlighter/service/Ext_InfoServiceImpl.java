package yjc.wdb.Highlighter.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yjc.wdb.Highlighter.domain.Criteria;
import yjc.wdb.Highlighter.domain.Ext_InfoVO;
import yjc.wdb.Highlighter.domain.User_InfoVO;
import yjc.wdb.Highlighter.persistence.Ext_InfoDAO;

@Service
public class Ext_InfoServiceImpl implements Ext_InfoService {

	@Inject
	private Ext_InfoDAO dao;
	
	@Override
	public  List<HashMap> listAll(Criteria cri) throws Exception {
		return dao.listAll(cri);
	}

	@Override
	public int countPage(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return dao.countPage(cri);
	}

	@Override
	public Ext_InfoVO read(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.read(user_id);
	}

	@Override
	public List<HashMap> onGoingExt(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.onGoingExt(user_id);
	}

	@Override
	public List<HashMap> onGoingExt_Stu(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.onGoingExt_Stu(user_id);
	}

	@Override
	public void acceptPrivateClass(Ext_InfoVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.acceptPrivateClass(vo);
	}

}
