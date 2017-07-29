package yjc.wdb.Highlighter.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yjc.wdb.Highlighter.domain.exam_InfoVO;
import yjc.wdb.Highlighter.persistence.exam_InfoDAO;
@Service
public class exam_InfoServiceImpl implements exam_InfoService {
	@Inject
	private exam_InfoDAO dao;
	
	@Override
	public void createexam(exam_InfoVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.createexam(vo);
	}

	@Override
	public void test_state_up(exam_InfoVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.test_state_up(vo);
	}

}
