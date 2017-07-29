package yjc.wdb.Highlighter.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yjc.wdb.Highlighter.domain.test_InfoVO;
import yjc.wdb.Highlighter.persistence.test_InfoDAO;

@Service
public class test_InfoserviceImpl implements test_InfoService {
	@Inject
	private test_InfoDAO dao;
	
	
	@Override
	public void create(test_InfoVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.create(vo);
	}

	@Override
	public String extidse(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.extidse(ext_id);
	}

	@Override
	public List<HashMap> testList(String ext_id,String user_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.testList(ext_id,user_id);
	}
	
	@Override
	public List<test_InfoVO> teachertestList(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.teachertestList(ext_id);
	}

	

	@Override
	public List<test_InfoVO> testImage(String test_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.testImage(test_id);
	}

	@Override
	public List<String> allid(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.allid(ext_id);
	}
	@Override
	public String TImage(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.TImage(ext_id);
	}

}
