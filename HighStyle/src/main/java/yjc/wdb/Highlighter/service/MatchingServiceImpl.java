package yjc.wdb.Highlighter.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import yjc.wdb.Highlighter.domain.Ext_InfoVO;
import yjc.wdb.Highlighter.domain.user_SearchLogVO;
import yjc.wdb.Highlighter.persistence.MatchingDAO;

@Service
public class MatchingServiceImpl implements MatchingService {
	
	@Inject
	private MatchingDAO dao;

	/* 비교할 시간표 */
	@Override
	public List<HashMap> studentTimetable(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.studentTimetable(user_id);
	}

	@Override
	public List<HashMap> privateTimetable() throws Exception {
		// TODO Auto-generated method stub
		return dao.privateTimetable();
	}

	/* 유저에게 필요없는 정보 제외한 LIST */
	@Override
	public List<HashMap<String,String>> removedList(List<String> removeTimetable) throws Exception {
		// TODO Auto-generated method stub
		return dao.removedList(removeTimetable);
	}
	/* 사용자 검색 기록  여부*/
	@Override
	public int userSearchLogCount(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.userSearchLogCount(user_id);
	}
	
	/* 사용자 검색 기록 */
	@Override
	public List<user_SearchLogVO> userSearchLog(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.userSearchLog(user_id);
	}

	@Override
	public int carrerYN(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.carrerYN(ext_id);
	}

	@Override
	public List<Ext_InfoVO> userExtLog(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.userExtLog(user_id);
	}

	

	
	
}
