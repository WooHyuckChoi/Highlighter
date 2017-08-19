package yjc.wdb.Highlighter.persistence;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import yjc.wdb.Highlighter.domain.Diag_EvalVO;
import yjc.wdb.Highlighter.domain.Ext_InfoVO;
import yjc.wdb.Highlighter.domain.user_SearchLogVO;

public interface MatchingDAO {
	/* 비교할 시간표 */
	public List<HashMap> studentTimetable(String user_id)throws Exception;
	public List<HashMap> privateTimetable()throws Exception;
	
	/* 유저에게 필요없는 정보 제외한 LIST */
	public List<HashMap<String, String>> removedList(@Param("removeTimetable") List<String> removeTimetable)throws Exception;
	
	/* 사용자 검색 기록 여부 */
	public int userSearchLogCount(String user_id)throws Exception;
	
	/* 사용자 검색 기록 */
	public List<user_SearchLogVO> userSearchLog(String user_id)throws Exception;
	
	/* 자격증 여부*/
	public int carrerYN(String ext_id)throws Exception;
	
	/* 유저의 이전 과외 기록 */
	public List<Ext_InfoVO> userExtLog(String user_id)throws Exception;
	
	/* 진단 평가 작성 여부 */
	public int evalCheck(String user_id)throws Exception;
	
	/* 진단 평가 등록 */
	public void registerEval(Diag_EvalVO diag_evalVO)throws Exception;
	
	/* 진단 평가 삭제 */
	public void deleteEval(String user_id)throws Exception;
	
	/* 진단 평가 기록 조회 */
	public Diag_EvalVO selectEval(String user_id)throws Exception;
	
	/* 과외 목록 */
	public List<HashMap> selectExt()throws Exception;
	
	/* 유저에게 필요없는 정보 제외한 LIST */
	public List<HashMap<String, String>> evalAfterTimetable(@Param("selectTimetable") List<String> selectTimetable)throws Exception;
	
}