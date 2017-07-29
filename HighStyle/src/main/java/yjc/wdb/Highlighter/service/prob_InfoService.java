package yjc.wdb.Highlighter.service;

import yjc.wdb.Highlighter.domain.prob_InfoVO;

public interface prob_InfoService {
	public void create(prob_InfoVO vo) throws Exception;
	public String correctAnsw(String prob_id) throws Exception;
}
