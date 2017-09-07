package yjc.wdb.Highlighter.persistence;

import java.util.HashMap;
import java.util.List;

import yjc.wdb.Highlighter.domain.User_InfoVO;

public interface AppDAO {
	public List<User_InfoVO> app_Login(String user_id, String user_pw)throws Exception;
	public List<HashMap> app_Home(String user_id)throws Exception;
	public List<HashMap> app_Calender(String user_id)throws Exception;
	public List<HashMap> app_Calender2(String user_id)throws Exception;
	public List<HashMap> lecturePage(String ext_id)throws Exception;
	public List<HashMap> replayList(String ext_id)throws Exception;
	public List<HashMap> homeworkHtmlCont(String ext_id)throws Exception;
	public List<HashMap> app_testList(String user_id, String ext_id)throws Exception;
	public List<HashMap> app_testResultList(String user_id, String test_id)throws Exception;
	public void app_storeWrongNoteCont(String wrongNoteCont, String prob_id, String user_id)throws Exception;
	public List<HashMap> app_stuInfoContList(String ext_id, String user_id)throws Exception;
	public List<HashMap> app_totalClassCount(String ext_id)throws Exception;
}
