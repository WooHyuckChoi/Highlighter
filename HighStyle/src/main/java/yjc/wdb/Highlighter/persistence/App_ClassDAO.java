package yjc.wdb.Highlighter.persistence;

import java.util.HashMap;
import java.util.List;

import yjc.wdb.Highlighter.domain.App_ClassVO;
import yjc.wdb.Highlighter.domain.Ext_InfoVO;

public interface App_ClassDAO {
	public List<HashMap> listAll(String user_id)throws Exception;
	public Ext_InfoVO appClassOne(String user_id)throws Exception;
	public void appClass_create(App_ClassVO vo)throws Exception;
	public List<HashMap> appClassList_Stu(String user_id)throws Exception;
	public void cancelClass(App_ClassVO vo)throws Exception;
	public void acceptClass(App_ClassVO vo)throws Exception;
	public void cancelAcceptClass(App_ClassVO vo)throws Exception;
}
