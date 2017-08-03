package yjc.wdb.Highlighter;

import java.util.HashMap;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import yjc.wdb.Highlighter.service.StudyRoomService;

@Controller
public class StudyRoomController 
{
	private static final Logger logger = LoggerFactory.getLogger(StudyRoomController.class);
	
	@Inject
	private StudyRoomService studyRoomService;
	
	
	@RequestMapping(value = "/newLecturePage", method = RequestMethod.GET)//classMain newLecturePage
	public void classMain(@RequestParam("ext_id") String ext_id, Model model, HttpSession session) throws Exception {
		
		System.out.println("과외페이지");
		model.addAttribute("classMainList", studyRoomService.Ext_read(ext_id));
		model.addAttribute("ext_id", ext_id);
		
		String user_id = (String) session.getAttribute("id");
		model.addAttribute("user_id",user_id);
		model.addAttribute("ext_id",ext_id);
		model.addAttribute("open_stus",studyRoomService.selectOpenStat(ext_id));
		model.addAttribute("user_grade",studyRoomService.selectGrade(user_id));
		
	}
	
	@RequestMapping(value="/newLecturePage", method = RequestMethod.POST)
	@ResponseBody
	public String classMain(@RequestBody JSONObject json) throws Exception
	{
		System.out.println("�뿬湲� �솗�씤");
		System.out.println(json.get("user_id") +","+ json.get("ext_id"));
		System.out.println("�뿬湲� �솗�씤2");
		HashMap<String, String> vo= new HashMap<String, String>();
		vo.put("user_id", json.get("user_id").toString());
		vo.put("ext_id", json.get("ext_id").toString());
		//String user_id=json.get("user_id").toString();
		System.out.println(vo);
		studyRoomService.updateOpenStat(vo);
		//return enterRoomService.selectGrade(user_id);
		return "success";
	}
	
	/* lecturePage - 강의 닫기 버튼 클릭 동작 */
	@RequestMapping(value="/classMain2", method = RequestMethod.POST) 
	@ResponseBody
	public String classMain2(@RequestBody JSONObject json) throws Exception
	{
		/*System.out.println("�씠嫄몃줈 �삤�깘");*/
		System.out.println(json.get("user_id") +","+ json.get("ext_id"));
		HashMap<String, String> vo= new HashMap<String, String>();
		vo.put("user_id", json.get("user_id").toString());
		vo.put("ext_id", json.get("ext_id").toString());
		System.out.println(vo);
		studyRoomService.updateCloseStat(vo);
		return "success";
	}
}
