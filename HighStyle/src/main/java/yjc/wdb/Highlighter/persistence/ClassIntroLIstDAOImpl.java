package yjc.wdb.Highlighter.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import yjc.wdb.Highlighter.domain.Ext_InfoVO;

@Repository
public class ClassIntroLIstDAOImpl implements ClassIntroListDAO {
	
	@Inject
	private SqlSession session;
	
	private static String namespace
	= "yjc.wdb.Highlighter.classIntroListMapper";
	
	@Override
	public Ext_InfoVO Ext_read(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".Ext_read",ext_id);
	}

}
