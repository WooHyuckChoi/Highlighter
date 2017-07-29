package yjc.wdb.Highlighter.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yjc.wdb.Highlighter.domain.Ext_InfoVO;
import yjc.wdb.Highlighter.domain.Ext_TimetableVO;
import yjc.wdb.Highlighter.domain.User_InfoVO;

@Repository
public class User_InfoDAOImpl implements User_InfoDAO {
	
	@Inject
	private SqlSession session;
	
	private static String namespace
		= "yjc.wdb.Highlighter.User_InfoMapper";
	@Override
	public void create(User_InfoVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace+".create", vo);
	}

	@Override
	public User_InfoVO read(String user_id) throws Exception {
		// TODO Auto-generated method stub 
		return session.selectOne(namespace+".read", user_id);
	}

	@Override
	public int checkID(User_InfoVO vo) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".checkid", vo);
	}

	@Override
	public int login(User_InfoVO vo) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".login", vo);
	}
	
	@Override
	public int classCount(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".classCount", user_id);
	}
	
	@Override
	public User_InfoVO user_grade(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".user_grade", user_id);
	}
	
	@Override
	public void ext_table_create(Ext_TimetableVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace+".ext_timetable_create", vo);
	}
	
	@Override
	public void ext_create(Ext_InfoVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace+".ext_create", vo);
	}
	
	@Override
	public String ext_id_select(Ext_InfoVO vo) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".ext_id_select", vo);
	}
	
	/*태훈 수강학생관리 학생 프로필 출력*/ 
	@Override
	public User_InfoVO profile(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return  session.selectOne(namespace+".profile",user_id);
	}

	
}
