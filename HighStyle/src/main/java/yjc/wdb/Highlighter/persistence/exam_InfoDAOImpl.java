package yjc.wdb.Highlighter.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yjc.wdb.Highlighter.domain.exam_InfoVO;
@Repository
public class exam_InfoDAOImpl implements exam_InfoDAO {
	@Inject
	private SqlSession session;
	
	private static String namespace	= "yjc.wdb.highlighter.ExamInfoMapper";

	@Override
	public void createexam(exam_InfoVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace+".createexam",vo);
	}

	@Override
	public void test_state_up(exam_InfoVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace+".test_state_up",vo);
	}

}
