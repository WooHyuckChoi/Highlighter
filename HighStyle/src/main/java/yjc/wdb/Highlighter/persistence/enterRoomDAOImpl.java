package yjc.wdb.Highlighter.persistence;

import java.util.HashMap;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class enterRoomDAOImpl implements enterRoomDAO 
{
	@Inject
	private SqlSession session;
	
	private static String namespace="org.mybatis.example.EnterRoomMapper";

	@Override
	public void updateOpenStat(HashMap<String, String> vo) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace+".updateNtoYStat",vo);
	}

	@Override
	public void updateCloseStat(HashMap<String, String> vo) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace+".updateYtoNStat",vo);
	}

	@Override
	public String selectGrade(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".selectGrade",user_id);
	}

	@Override
	public String selectOpenStat(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".selectOpenStat",ext_id);
	}
}
