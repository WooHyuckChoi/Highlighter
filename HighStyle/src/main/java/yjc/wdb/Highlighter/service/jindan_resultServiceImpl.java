package yjc.wdb.Highlighter.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yjc.wdb.Highlighter.domain.jindan_resultVO;
import yjc.wdb.Highlighter.persistence.jindan_resultDAO;

@Service
public class jindan_resultServiceImpl implements jindan_resultService {

	@Inject
	private jindan_resultDAO dao;
	
	@Override
	public void createResult(jindan_resultVO jindan) throws Exception {
		// TODO Auto-generated method stub
		dao.createResult(jindan);
	}

}
