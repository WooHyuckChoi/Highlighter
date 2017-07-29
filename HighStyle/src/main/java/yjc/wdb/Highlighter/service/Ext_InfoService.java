package yjc.wdb.Highlighter.service;

import java.util.HashMap;
import java.util.List;

import yjc.wdb.Highlighter.domain.Criteria;
import yjc.wdb.Highlighter.domain.Ext_InfoVO;
import yjc.wdb.Highlighter.domain.User_InfoVO;

public interface Ext_InfoService {
	public  List<HashMap> listAll(Criteria cri)throws Exception;	
	public int countPage(Criteria cri)throws Exception;
	public Ext_InfoVO read(String user_id)throws Exception;
	public List<HashMap> onGoingExt(String user_id)throws Exception;
	public List<HashMap> onGoingExt_Stu(String user_id)throws Exception;
	public void acceptPrivateClass(Ext_InfoVO vo)throws Exception;
}
