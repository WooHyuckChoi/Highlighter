package yjc.wdb.Highlighter.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yjc.wdb.Highlighter.domain.Eva_TeacherVO;
import yjc.wdb.Highlighter.domain.User_InfoVO;

@Repository
public class Eva_TeacherDAOImpl implements Eva_TeacherDAO{
	
	@Inject
	private SqlSession session;
	
	private static String namespace
		="yjc.wdb.Highlighter.eva_teacherMapper";
	
	@Override
	public void create(Eva_TeacherVO vo)throws Exception{
		session.insert(namespace+".create", vo);
	}
	
	@Override
	public Eva_TeacherVO read(String user_id)throws Exception{
	    return session.selectOne(namespace+".read",user_id);
	}
	
	@Override
	public void update(Eva_TeacherVO vo)throws Exception{
		session.update(namespace +".update", vo);
	}
	
	@Override
	public List<Eva_TeacherVO> listAll() throws Exception {
		return session.selectList(namespace+".listAll");
	}

	@Override
	public void eva_update(User_InfoVO vo) throws Exception {
		
		session.update(namespace +".eva_update", vo);
		
	}
}
