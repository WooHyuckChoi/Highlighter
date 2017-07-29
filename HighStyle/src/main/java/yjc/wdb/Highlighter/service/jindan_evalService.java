package yjc.wdb.Highlighter.service;

import java.util.List;

import yjc.wdb.Highlighter.domain.jindan_evalVO;

public interface jindan_evalService {
	public void createEval(jindan_evalVO jindan) throws Exception;
	public List<String> jindanResiNot(String ext_id) throws Exception;
	public List<String> jindanContent(String ext_id) throws Exception;

}
