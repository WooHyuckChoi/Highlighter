package yjc.wdb.Highlighter.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yjc.wdb.Highlighter.domain.Eva_TeacherVO;
import yjc.wdb.Highlighter.domain.User_InfoVO;
import yjc.wdb.Highlighter.persistence.Eva_TeacherDAO;

@Service
public class Eva_TeacherServiceImpl implements Eva_TeacherService{
	
	@Inject
	private Eva_TeacherDAO dao;
	
	@Override
	public void regist(Eva_TeacherVO board)throws Exception{
		dao.create(board);
	}
	
	@Override
	public Eva_TeacherVO read(String user_id)throws Exception{
		return dao.read(user_id);
	}
	
	@Override
	public void modify(Eva_TeacherVO board)throws Exception{
		dao.update(board);
	}
	
	@Override
	public List<Eva_TeacherVO> listAll()throws Exception{
		return dao.listAll();
	}

	@Override
	public void eva_update(User_InfoVO eva_board) throws Exception {
		
		dao.eva_update(eva_board);
	}
}
