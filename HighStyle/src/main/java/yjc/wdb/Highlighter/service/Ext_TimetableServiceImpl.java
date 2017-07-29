package yjc.wdb.Highlighter.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yjc.wdb.Highlighter.domain.Ext_TimetableVO;
import yjc.wdb.Highlighter.persistence.Ext_TimetableDAO;

@Service
public class Ext_TimetableServiceImpl implements Ext_TimetableService {

	@Inject
	private Ext_TimetableDAO dao;
	
	@Override
	public List<Ext_TimetableVO> ALectureSchedule(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.ALectureSchedule(ext_id);
	}

	@Override
	public int cancelClassCount(Ext_TimetableVO vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.cancelClassCount(vo);
	}

	@Override
	public void deleteTimetable(Ext_TimetableVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.deleteTimetable(vo);
	}

}
