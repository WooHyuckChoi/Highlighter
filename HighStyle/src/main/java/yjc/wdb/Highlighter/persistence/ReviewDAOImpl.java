package yjc.wdb.Highlighter.persistence;

import java.util.List;

import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yjc.wdb.Highlighter.domain.*;

@Repository
public class ReviewDAOImpl implements ReviewDAO 
{
	
	@Inject
	private SqlSession session;
	
	private static String namespace="org.mybatis.example.ReviewMapper";
	@Override
	public Integer selectPostId(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".selectPostId",ext_id);
	}

	@Override
	public String getPostId(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".getPostId",ext_id);
	}

	@Override
	public void postingPostId(reviewVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace+".postingPostId",vo);
	}
	@Override
	public void postingItem(reviewVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace+".postingItem",vo);
	}

	@Override
	public List<reviewVO> listAll(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".listAll",ext_id);
	}

	@Override
	public reviewVO listOne(String post_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".listOne",post_id);
	}

}
