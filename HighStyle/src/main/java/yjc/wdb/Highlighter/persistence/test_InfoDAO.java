package yjc.wdb.Highlighter.persistence;

import java.util.HashMap;
import java.util.List;

import yjc.wdb.Highlighter.domain.test_InfoVO;

public interface test_InfoDAO {/*
	public Ext_InfoVO Ext_read(String ext_id) throws Exception;*/
	public void create(test_InfoVO vo) throws Exception;
	public String extidse(String ext_id) throws Exception;
	public List<HashMap> testList(String ext_id,String user_id) throws Exception;
	public List<test_InfoVO> testImage(String test_id) throws Exception;
	
	/*모든 아이디 출력*/
	public List<String> allid(String ext_id) throws Exception;
	
	/*	강사 시험 리스트 출력*/
	public List<test_InfoVO> teachertestList(String ext_id) throws Exception;
	public String TImage(String ext_id) throws Exception;

}
