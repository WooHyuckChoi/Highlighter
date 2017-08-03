package yjc.wdb.Highlighter.service;

import java.util.HashMap;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yjc.wdb.Highlighter.domain.Ext_InfoVO;
import yjc.wdb.Highlighter.persistence.StudyRoomDAO;

@Service
public class StudyRoomServiceImpl implements StudyRoomService 
{
	@Inject
	private StudyRoomDAO dao;
	
	@Override
	public Ext_InfoVO Ext_read(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.Ext_read(ext_id);
	}

	@Override
	public void updateOpenStat(HashMap<String, String> vo) throws Exception {
		// TODO Auto-generated method stub
		dao.updateOpenStat(vo);
	}

	@Override
	public void updateCloseStat(HashMap<String, String> vo) throws Exception {
		// TODO Auto-generated method stub
		dao.updateCloseStat(vo);
	}

	@Override
	public String selectGrade(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectGrade(user_id);
	}

	@Override
	public String selectOpenStat(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOpenStat(ext_id);
	}
	
}
