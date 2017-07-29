package yjc.wdb.Highlighter.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yjc.wdb.Highlighter.domain.jindan_evalVO;
import yjc.wdb.Highlighter.persistence.jindan_evalDAO;

@Service
public class jindan_evalServiceImpl implements jindan_evalService {

	@Inject
	private jindan_evalDAO dao;
	
	
	@Override
	public void createEval(jindan_evalVO jindan) throws Exception {
		// TODO Auto-generated method stub
		dao.createEval(jindan);
	}

	@Override
	public List<String> jindanResiNot(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.jindanResiNot(ext_id);
	}

	@Override
	public List<String> jindanContent(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.jindanContent(ext_id);
	}



}
