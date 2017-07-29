package yjc.wdb.Highlighter.persistence;

import yjc.wdb.Highlighter.domain.Ext_InfoVO;

public interface ClassIntroListDAO {
	public Ext_InfoVO Ext_read(String ext_id) throws Exception;
}
