package yjc.wdb.Highlighter.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import yjc.wdb.Highlighter.domain.Diag_EvalVO;
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

	/* 자격증 여부*/
	@Override
	public int carrerYN(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.carrerYN(ext_id);
	}

	/* 유저의 이전 과외 기록 */
	@Override
	public List<Ext_InfoVO> userExtLog(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.userExtLog(user_id);
	}

	/* 진단 평가 작성 여부 */
	@Override
	public int evalCheck(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.evalCheck(user_id);
	}

	/* 진단 평가 등록 */
	@Override
	public void registerEval(Diag_EvalVO diag_evalVO) throws Exception {
		// TODO Auto-generated method stub
		dao.registerEval(diag_evalVO);
	}

	@Override
	public void deleteEval(String user_id) throws Exception {
		// TODO Auto-generated method stub
		dao.deleteEval(user_id);
	}

	@Override
	public Diag_EvalVO selectEval(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectEval(user_id);
	}

	@Override
	public List<HashMap> selectExt() throws Exception {
		// TODO Auto-generated method stub
		return dao.selectExt();
	}

	@Override
	public List<HashMap<String, String>> evalAfterTimetable(List<String> selectTimetable) throws Exception {
		// TODO Auto-generated method stub
		return dao.evalAfterTimetable(selectTimetable);
	}	
}
