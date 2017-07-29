package yjc.wdb.Highlighter.persistence;

import java.util.List;

import java.util.Map;

import yjc.wdb.Highlighter.domain.*;

public interface ReviewDAO 
{
	public Integer selectPostId(String ext_id) throws Exception;
	public String getPostId(String ext_id) throws Exception;
	public void postingPostId(reviewVO vo) throws Exception;
	public void postingItem(reviewVO vo) throws Exception;
	public List<reviewVO> listAll(String ext_id) throws Exception;
	public reviewVO listOne(String post_id) throws Exception;
}
