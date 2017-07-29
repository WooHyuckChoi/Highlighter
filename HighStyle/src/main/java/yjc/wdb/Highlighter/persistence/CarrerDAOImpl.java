package yjc.wdb.Highlighter.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CarrerDAOImpl implements CarrerDAO {

	private static String namespace =
			"yjc.wdb.Highlighter.User_InfoMapper";
	
	@Inject
	private SqlSession session;
	
	@Override
	public int listCount(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".carrer",user_id);
	}

}
