package yjc.wdb.Highlighter.persistence;

import java.util.List;

import yjc.wdb.Highlighter.domain.jindan_evalVO;


public interface jindan_evalDAO {
	public void createEval(jindan_evalVO jindan) throws Exception;
	public List<String> jindanResiNot(String ext_id) throws Exception;
	public List<String> jindanContent(String ext_id) throws Exception;
	
}
