package yjc.wdb.Highlighter;

import java.util.HashMap;

import javax.inject.Inject;

import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import yjc.wdb.Highlighter.service.StudyRoomService;
@Controller
public class StudyRoom2Controller {
	
	private static final Logger logger = LoggerFactory.getLogger(StudyRoomController.class);
	
	@Inject
	private StudyRoomService studyRoomService;
	
	@RequestMapping(value="/classMain2", method = RequestMethod.POST)
	@ResponseBody
	public String classMain2(@RequestBody JSONObject json) throws Exception
	{
		System.out.println("�씠嫄몃줈 �삤�깘");
		System.out.println(json.get("user_id") +","+ json.get("ext_id"));
		HashMap<String, String> vo= new HashMap<String, String>();
		vo.put("user_id", json.get("user_id").toString());
		vo.put("ext_id", json.get("ext_id").toString());
		System.out.println(vo);
		studyRoomService.updateCloseStat(vo);
		return "success";
	}//異붽��빐�빞�븿
}
