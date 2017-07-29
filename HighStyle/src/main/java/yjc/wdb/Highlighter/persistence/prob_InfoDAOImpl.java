package yjc.wdb.Highlighter.persistence;

import javax.inject.Inject;
import javax.xml.stream.events.Namespace;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yjc.wdb.Highlighter.domain.prob_InfoVO;
@Repository
public class prob_InfoDAOImpl implements prob_InfoDAO {
	@Inject
	private SqlSession session;
	
	private static String namespace
		= "yjc.wdb.Highlighter.proInfoMapper";
	@Override
	public void create(prob_InfoVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace+".create",vo);
	}
	@Override
	public String correctAnsw(String prob_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".correctAnsw",prob_id);
	}

}
