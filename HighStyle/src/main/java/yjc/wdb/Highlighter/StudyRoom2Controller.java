package yjc.wdb.Highlighter;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import yjc.wdb.Highlighter.domain.Ext_TimetableVO;
import yjc.wdb.Highlighter.service.Ext_TimetableService;
import yjc.wdb.Highlighter.service.StudyRoomService;
@Controller
public class StudyRoom2Controller {
	
	private static final Logger logger = LoggerFactory.getLogger(StudyRoomController.class);
	
	@Inject
	private StudyRoomService studyRoomService;
	
	@Inject
	private Ext_TimetableService ext_TimetableService;
	
	/* lecturePage - 과외 시간표 DB 불러오기 */
	@RequestMapping(value = "/lectureSchedule", method = RequestMethod.GET)
	@ResponseBody
	public Object lectureSchedule(HttpServletRequest req)throws Exception{
		String ext_id = req.getParameter("ext_id");
		List<Ext_TimetableVO> ALectureSchedule = ext_TimetableService.ALectureSchedule(ext_id);
		JSONArray jsonarr = new JSONArray();
		JSONObject jsonObj = null;
		for(int i = 0; i < ALectureSchedule.size(); i++){
			jsonObj = new JSONObject();
			jsonObj.put("day_week",ALectureSchedule.get(i).getDay_week());
			jsonObj.put("class_str_time",ALectureSchedule.get(i).getClass_str_time());
			jsonObj.put("class_end_time",ALectureSchedule.get(i).getClass_end_time());
			jsonObj.put("user_name",ALectureSchedule.get(i).getUser_name());
			jsonarr.add(jsonObj);
		}
		
		return jsonarr;
	}
	
	@RequestMapping(value="/testPage", method = RequestMethod.GET)
	public void testPage(HttpServletRequest req, Model model)throws Exception{
		String ext_id = req.getParameter("ext_id");
		model.addAttribute("ext_id", req.getParameter("ext_id"));
	}
	
	@RequestMapping(value="registerExam", method = RequestMethod.GET)
	public void testListPage(Model model)throws Exception{
	}
	
}
