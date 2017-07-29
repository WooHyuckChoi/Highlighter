package yjc.wdb.Highlighter.persistence;

import yjc.wdb.Highlighter.domain.prob_InfoVO;

public interface prob_InfoDAO {
	public void create(prob_InfoVO vo) throws Exception;
	public String correctAnsw(String prob_id) throws Exception;
}
