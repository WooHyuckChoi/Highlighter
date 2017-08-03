package yjc.wdb.Highlighter.persistence;

import java.util.HashMap;

import yjc.wdb.Highlighter.domain.Ext_InfoVO;

public interface StudyRoomDAO 
{
	public Ext_InfoVO Ext_read(String ext_id) throws Exception;
	
	//강의 열기 및 닫기
	public void updateOpenStat(HashMap<String, String> vo) throws Exception;
	public void updateCloseStat(HashMap<String, String> vo) throws Exception;
	public String selectGrade(String user_id) throws Exception;
	public String selectOpenStat(String ext_id) throws Exception;
	// ---end----
}
