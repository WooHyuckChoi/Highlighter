package yjc.wdb.Highlighter.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yjc.wdb.Highlighter.domain.test_resultVO;
import yjc.wdb.Highlighter.persistence.testResultDAO;


@Service
public class testResultServiceImpl implements testResultService {

	@Inject
	private testResultDAO dao;

	@Override
	public void tcreate(test_resultVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.tcreate(vo);
	}

	@Override
	public String stu_answ(String prob_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.stu_answ(prob_id);
	}

	@Override
	public void w_answ_note_cont(test_resultVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.w_answ_note_cont(vo);
	}

	@Override
	public int correctAnswercount(test_resultVO vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.correctAnswercount(vo);
	}

	@Override
	public String WrongNote(test_resultVO vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.WrongNote(vo);
	}

	@Override
	public List<test_resultVO> weekCorrectAnsw(String user_id, String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.weekCorrectAnsw(user_id, ext_id);
	}

	@Override
	public List<HashMap> ListWeeksCorrect(String user_id, String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.ListWeeksCorrect(user_id, ext_id);
	}

	@Override
	public void updateWansNote(test_resultVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.updateWansNote(vo);
	}

	@Override
	public List<HashMap> selectWansNote(test_resultVO vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectWansNote(vo);
	}
	


}
