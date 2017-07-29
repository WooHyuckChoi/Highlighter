package yjc.wdb.Highlighter.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yjc.wdb.Highlighter.domain.prob_InfoVO;
import yjc.wdb.Highlighter.persistence.prob_InfoDAO;


@Service
public class prob_InfoServiceImpl implements prob_InfoService {

	@Inject
	private prob_InfoDAO dao;
	
	@Override
	public void create(prob_InfoVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.create(vo);
	}

	@Override
	public String correctAnsw(String prob_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.correctAnsw(prob_id);
	}

}
