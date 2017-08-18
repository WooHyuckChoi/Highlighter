package yjc.wdb.Highlighter.persistence;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yjc.wdb.Highlighter.domain.Diag_EvalVO;
import yjc.wdb.Highlighter.domain.Ext_InfoVO;
import yjc.wdb.Highlighter.domain.user_SearchLogVO;

@Repository
public class MatchingDAOImpl implements MatchingDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace="yjc.wdb.Highlighter.MatchingMapper";

	/* 비교할 시간표 */
	@Override
	public List<HashMap> studentTimetable(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".studentTimetable", user_id);
	}

	@Override
	public List<HashMap> privateTimetable() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".privateTimetable");
	}

	/* 유저에게 필요없는 정보 제외한 LIST */
	@Override
	public List<HashMap<String,String>> removedList(List<String> removeTimetable) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".removedList", removeTimetable);
	}
	
	/* 사용자 검색 기록 여부*/
	@Override
	public int userSearchLogCount(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".userSearchLogCount", user_id);
	}
	
	/* 사용자 검색 기록 */
	@Override
	public List<user_SearchLogVO> userSearchLog(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".userSearchLog",user_id);
	}

	/* 자격증 여부*/
	@Override
	public int carrerYN(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".carrerYN", ext_id);
	}
	
	/* 유저의 이전 과외 기록 */
	@Override
	public List<Ext_InfoVO> userExtLog(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".userExtLog", user_id);
	}

	/* 진단 평가 작성 여부 */
	@Override
	public int evalCheck(String user_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".evalCheck", user_id);
	}

	/* 진단 평가 등록 */
	@Override
	public void registerEval(Diag_EvalVO diag_evalVO) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace+".registerEval", diag_evalVO);
	}

	@Override
	public void deleteEval(String user_id) throws Exception {
		// TODO Auto-generated method stub
		session.delete(namespace+".deleteEval", user_id);
	}

	




	


}
