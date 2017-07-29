package yjc.wdb.Highlighter.persistence;

import java.util.List;

import yjc.wdb.Highlighter.domain.Ext_TimetableVO;

public interface Ext_TimetableDAO {
	public List<Ext_TimetableVO> ALectureSchedule(String ext_id)throws Exception;
	public int cancelClassCount(Ext_TimetableVO vo)throws Exception;
	public void deleteTimetable(Ext_TimetableVO vo)throws Exception;
}
