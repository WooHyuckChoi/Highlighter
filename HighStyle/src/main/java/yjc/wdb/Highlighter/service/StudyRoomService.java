package yjc.wdb.Highlighter.service;

import java.util.HashMap;

import yjc.wdb.Highlighter.domain.Ext_InfoVO;

public interface StudyRoomService 
{
	public Ext_InfoVO Ext_read(String ext_id) throws Exception;
	
	public void updateOpenStat(HashMap<String, String> vo) throws Exception;
	public void updateCloseStat(HashMap<String, String> vo) throws Exception;
	public String selectGrade(String user_id) throws Exception;
	public String selectOpenStat(String ext_id) throws Exception;
}
