package yjc.wdb.Highlighter.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yjc.wdb.Highlighter.domain.Ext_TimetableVO;

@Repository
public class Ext_TimetableDAOImpl implements Ext_TimetableDAO {

	@Inject
	private SqlSession session;

	private static String namespace = "yjc.wdb.Highlighter.Ext_TimetableMapper";
	
	@Override
	public List<Ext_TimetableVO> ALectureSchedule(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".AlectureSchedule", ext_id);
	}

	@Override
	public int cancelClassCount(Ext_TimetableVO vo) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".cancelClassCount", vo);
	}

	@Override
	public void deleteTimetable(Ext_TimetableVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.delete(namespace+".deleteTimetable", vo);
	}
	
	
}
