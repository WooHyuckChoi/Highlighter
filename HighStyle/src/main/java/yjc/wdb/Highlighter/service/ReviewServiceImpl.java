package yjc.wdb.Highlighter.service;

import java.util.List;


import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import yjc.wdb.Highlighter.domain.*;
import yjc.wdb.Highlighter.persistence.*;

@Service
public class ReviewServiceImpl implements ReviewService 
{
	@Inject
	private ReviewDAO dao;

	@Override
	public Integer selectPostId(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectPostId(ext_id);
	}

	@Override
	public String getPostId(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.getPostId(ext_id);
	}
	
	@Transactional
	@Override
	public void postingItem(reviewVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.postingPostId(vo);
		dao.postingItem(vo);
	}
	@Override
	public void postingPostId(reviewVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.postingPostId(vo);
	}

	@Override
	public List<reviewVO> listAll(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.listAll(ext_id);
	}
	@Override
	public reviewVO listOne(String post_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.listOne(post_id);
	}

}
