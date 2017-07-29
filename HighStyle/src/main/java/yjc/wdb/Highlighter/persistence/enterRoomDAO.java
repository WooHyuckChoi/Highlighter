package yjc.wdb.Highlighter.persistence;

import java.util.HashMap;

public interface enterRoomDAO 
{
	public void updateOpenStat(HashMap<String, String> vo) throws Exception;
	public void updateCloseStat(HashMap<String, String> vo) throws Exception;
	public String selectGrade(String user_id) throws Exception;
	public String selectOpenStat(String ext_id) throws Exception;
}
