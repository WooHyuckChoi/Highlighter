package yjc.wdb.Highlighter.service;

import java.util.HashMap;
import java.util.List;

import yjc.wdb.Highlighter.domain.Ext_InfoVO;
import yjc.wdb.Highlighter.domain.User_InfoVO;

public interface StudyRoomService 
{
public Ext_InfoVO Ext_read(String ext_id) throws Exception;
	
	//강의 열기 및 닫기
	public void updateOpenStat(HashMap<String, String> vo) throws Exception;
	public void updateCloseStat(HashMap<String, String> vo) throws Exception;
	public String selectGrade(String user_id) throws Exception;
	public String selectOpenStat(String ext_id) throws Exception;
	// ---end----
	
	public User_InfoVO profile(String user_id) throws Exception;
	
	//시험 결과 리스트
	public List<HashMap> selectTestResult(String ext_id) throws Exception;
}
