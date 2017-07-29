package yjc.wdb.Highlighter.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import yjc.wdb.Highlighter.domain.Ext_InfoVO;
import yjc.wdb.Highlighter.persistence.ClassIntroListDAO;

@Service
public class ClassIntroListServiceImpl implements ClassIntroListService {

	@Inject
	private ClassIntroListDAO dao;
	
	@Override
	public Ext_InfoVO Ext_read(String ext_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.Ext_read(ext_id);
	}

}
