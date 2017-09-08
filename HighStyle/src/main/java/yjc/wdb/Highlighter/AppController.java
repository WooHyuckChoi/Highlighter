package yjc.wdb.Highlighter;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import yjc.wdb.Highlighter.domain.User_InfoVO;
import yjc.wdb.Highlighter.persistence.AppDAO;

@Controller
public class AppController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Inject
	private AppDAO dao;
	
	@RequestMapping(value = "/app_Login", method = RequestMethod.GET)
	@ResponseBody
	public JSONObject app_Login(HttpServletRequest req) throws Exception {
		String user_id = String.valueOf(req.getParameter("id"));
		String user_pw = String.valueOf(req.getParameter("pw"));
		
		List<User_InfoVO> User_InfoVO = dao.app_Login(user_id, user_pw);
		
		JSONObject object = new JSONObject();
		
		String result = "fail";
		
		if(User_InfoVO != null){
			result = "success" ;
			object.put("result",result) ;
	    	object.put("user_grade", User_InfoVO.get(0).getUser_grade());
	    	object.put("user_name", User_InfoVO.get(0).getUser_name());
		}
		
		return object;
	}
	
	@RequestMapping(value = "/app_Home", method = RequestMethod.GET)
	@ResponseBody
	public JSONArray app_Home(HttpServletRequest req) throws Exception {
		String user_id = String.valueOf(req.getParameter("id"));
		
		List<HashMap> app_Home = dao.app_Home(user_id);
		
		String result = "fail";
		JSONArray jsonArr = new JSONArray();
		JSONObject object = null;
		
		if(app_Home != null){
			for(int i = 0; i<app_Home.size(); i++){
				result = "success" ;
				object = new JSONObject();
		    	object.put("result",result);
		    	object.put("ext_id",app_Home.get(i).get("ext_id"));
		    	object.put("user_name",app_Home.get(i).get("user_name"));
		    	object.put("count_Stu",app_Home.get(i).get("count_Stu"));
		    	object.put("str_class_date",String.valueOf(app_Home.get(i).get("str_class_date")));
		    	object.put("prof_photo",app_Home.get(i).get("prof_photo"));
		    	jsonArr.add(object);
			}
		}
		return jsonArr;
	}
	
	@RequestMapping(value = "/app_Calender", method = RequestMethod.GET)
	@ResponseBody
	public JSONArray app_Calender(HttpServletRequest req) throws Exception {
		String user_id = String.valueOf(req.getParameter("id"));
		
		List<HashMap> app_Calender = dao.app_Calender(user_id);
		
		String result = "fail";
		JSONArray jsonArr = new JSONArray();
		JSONObject object = null;
		
		if(app_Calender != null){
			for(int i = 0; i<app_Calender.size(); i++){
				result = "success" ;
		    	object = new JSONObject();
		    	object.put("result",result);
		    	object.put("ext_id",app_Calender.get(0).get("ext_id"));
		    	object.put("day_week",app_Calender.get(0).get("day_week"));
		    	object.put("class_str_time",app_Calender.get(0).get("class_str_time"));
		    	object.put("class_end_time",app_Calender.get(0).get("class_end_time"));
		    	object.put("user_name",app_Calender.get(0).get("user_name"));
		    	jsonArr.add(object);
			}
		}
		return jsonArr;
	}
	
	@RequestMapping(value = "/app_Calender2", method = RequestMethod.GET)
	@ResponseBody
	public JSONArray app_Calender2(HttpServletRequest req) throws Exception {
		String user_id = String.valueOf(req.getParameter("id"));
		
		List<HashMap> app_Calender2 = dao.app_Calender2(user_id);
		
		String result = "fail";
		JSONArray jsonArr = new JSONArray();
		JSONObject object = null;
		
		if(app_Calender2 != null){
			for(int i = 0; i<app_Calender2.size(); i++){
				result = "success" ;
		    	object = new JSONObject();
		    	object.put("result",result);
		    	object.put("ext_id",app_Calender2.get(0).get("ext_id"));
		    	object.put("day_week",app_Calender2.get(0).get("day_week"));
		    	object.put("class_str_time",app_Calender2.get(0).get("class_str_time"));
		    	object.put("class_end_time",app_Calender2.get(0).get("class_end_time"));
		    	object.put("user_name",app_Calender2.get(0).get("user_name"));
		    	jsonArr.add(object);
			}
		}
		return jsonArr;
	}
	
	@RequestMapping(value = "/app_lecturePage", method = RequestMethod.GET)
	@ResponseBody
	public JSONArray app_lecturePage(HttpServletRequest req) throws Exception {
		String ext_id = String.valueOf(req.getParameter("ext_id"));
		
		List<HashMap> lecturePage = dao.lecturePage(ext_id);
		
		String result = "fail";
		JSONArray jsonArr = new JSONArray();
		JSONObject object = null;
		
		if(lecturePage != null){
			result = "success" ;
	    	object = new JSONObject();
	    	object.put("result",result);
	    	object.put("user_name",lecturePage.get(0).get("user_name"));
	    	object.put("prof_photo",lecturePage.get(0).get("prof_photo"));
	    	object.put("ext_obj",lecturePage.get(0).get("ext_obj"));
	    	object.put("ext_way",lecturePage.get(0).get("ext_way"));
	    	object.put("class_lev",lecturePage.get(0).get("class_lev"));
	    	object.put("tuit_fees",lecturePage.get(0).get("tuit_fees"));
	    	jsonArr.add(object);
		}
		return jsonArr;
	}
	
	@RequestMapping(value = "/app_replayList", method = RequestMethod.GET)
	@ResponseBody
	public JSONArray app_replayList(HttpServletRequest req) throws Exception {
		String ext_id = String.valueOf(req.getParameter("ext_id"));
		
		List<HashMap> replayList = dao.replayList(ext_id);
		
		String result = "fail";
		JSONArray jsonArr = new JSONArray();
		JSONObject object = null;
		
		if(replayList != null){
			for(int i = 0; i<replayList.size(); i++){
				result = "success" ;
		    	object = new JSONObject();
		    	object.put("result",result);
		    	object.put("post_id",replayList.get(i).get("post_id"));
		    	object.put("post_title",replayList.get(i).get("post_title"));
		    	object.put("post_cont",replayList.get(i).get("post_cont"));
		    	object.put("att_file",String.valueOf(replayList.get(i).get("att_file")));
		    	object.put("post_date",replayList.get(i).get("post_date"));
		    	jsonArr.add(object);
			}
		}
		return jsonArr;
	}
	
	@RequestMapping(value = "/app_homeworkHtmlCont", method = RequestMethod.GET)
	@ResponseBody
	public JSONArray app_homeworkHtmlCont(HttpServletRequest req) throws Exception {
		String ext_id = String.valueOf(req.getParameter("ext_id"));
		
		List<HashMap> homeworkHtmlCont = dao.homeworkHtmlCont(ext_id);
		
		String result = "fail";
		JSONArray jsonArr = new JSONArray();
		JSONObject object = null;
		
		if(homeworkHtmlCont != null){
			for(int i = 0; i<homeworkHtmlCont.size(); i++){
				result = "success" ;
		    	object = new JSONObject();
		    	object.put("result",result);
		    	object.put("post_id",homeworkHtmlCont.get(i).get("post_id"));
		    	object.put("post_title",homeworkHtmlCont.get(i).get("post_title"));
		    	object.put("post_cont",homeworkHtmlCont.get(i).get("post_cont"));
		    	object.put("post_date",homeworkHtmlCont.get(i).get("post_date"));
		    	object.put("end_date",homeworkHtmlCont.get(i).get("end_date"));
		    	object.put("submitStus",homeworkHtmlCont.get(i).get("submitStus"));
		    	jsonArr.add(object);
			}
		}
		return jsonArr;
	}
	
	@RequestMapping(value = "/app_testList", method = RequestMethod.GET)
	@ResponseBody
	public JSONArray app_testList(HttpServletRequest req) throws Exception {
		String user_id = req.getParameter("user_id");
	 	String ext_id = req.getParameter("ext_id");
	 	
	 	List<HashMap> app_testList = dao.app_testList(user_id, ext_id);
	 	
	 	String result = "fail";
		JSONArray jsonArr = new JSONArray();
		JSONObject object = null;
		
		if(app_testList != null){
			for(int i = 0; i<app_testList.size(); i++){
				result = "success" ;
		    	object = new JSONObject();
		    	object.put("result",result);
		    	object.put("test_id",app_testList.get(i).get("test_id"));
		    	object.put("count",app_testList.get(i).get("count"));
		    	object.put("date_gaze",String.valueOf(app_testList.get(i).get("date_gaze")));
		    	object.put("wrong_note",app_testList.get(i).get("wrong_note"));
		    	object.put("test_date",app_testList.get(i).get("test_date"));
		    	jsonArr.add(object);
			}
		}
		return jsonArr;
	}
	
	@RequestMapping(value = "/app_testResultList", method = RequestMethod.GET)
	@ResponseBody
	public JSONArray app_testResultList(HttpServletRequest req) throws Exception {
		String user_id = req.getParameter("user_id");
	 	String test_id = req.getParameter("test_id");
	 	
	 	List<HashMap> app_testResultList = dao.app_testResultList(user_id, test_id);
	 	
	 	String result = "fail";
		JSONArray jsonArr = new JSONArray();
		JSONObject object = null;
		
		if(app_testResultList != null){
			for(int i = 0; i < app_testResultList.size(); i++){
				result = "success" ;
		    	object = new JSONObject();
		    	object.put("result",result);
		    	object.put("test_id",app_testResultList.get(i).get("test_id"));
		    	object.put("prob_id",app_testResultList.get(i).get("prob_id"));
		    	object.put("stu_result",app_testResultList.get(i).get("stu_result"));
		    	object.put("prob_answ",app_testResultList.get(i).get("prob_answ"));
		    	object.put("date_gaze",String.valueOf(app_testResultList.get(i).get("date_gaze")));
		    	object.put("w_answ_note",app_testResultList.get(i).get("w_answ_note"));
		    	jsonArr.add(object);
			}
		}
		return jsonArr;
	}
	
	@RequestMapping(value = "/app_storeWrongNoteCont", method = RequestMethod.GET)
	@ResponseBody
	public JSONObject app_storeWrongNoteCont(HttpServletRequest req) throws Exception {
		String wrongNoteCont = req.getParameter("wrongNoteCont");
	 	String prob_id = req.getParameter("prob_id");
	 	String user_id = req.getParameter("user_id");
	 	
	 	dao.app_storeWrongNoteCont(wrongNoteCont, prob_id, user_id);
	 	
	 	JSONObject object = new JSONObject();
    	object.put("result", "success");

    	return object;
	}
	
	@RequestMapping(value = "/app_stuInfoContList", method = RequestMethod.GET)
	@ResponseBody
	public JSONArray app_stuInfoContList(HttpServletRequest req) throws Exception {
		String ext_id = req.getParameter("ext_id");
	 	String user_id = req.getParameter("user_id");
	 	
	 	List<HashMap> app_stuInfoContList = dao.app_stuInfoContList(ext_id, user_id);
	 	
	 	String result = "fail";
		JSONArray jsonArr = new JSONArray();
		JSONObject object = null;
		
		if(app_stuInfoContList != null){
			for(int i = 0; i<app_stuInfoContList.size(); i++){
				result = "success" ;
		    	object = new JSONObject();
		    	object.put("result",result);
		    	object.put("ext_id",app_stuInfoContList.get(i).get("ext_id"));
		    	object.put("user_id",app_stuInfoContList.get(i).get("user_id"));
		    	object.put("post_date",app_stuInfoContList.get(i).get("post_date"));
		    	object.put("learn_att",app_stuInfoContList.get(i).get("learn_att"));
		    	object.put("stu_infoNum",app_stuInfoContList.get(i).get("stu_infoNum"));
		    	jsonArr.add(object);
			}
		}
		return jsonArr;
	}
	
	@RequestMapping(value = "/app_totalClassCount", method = RequestMethod.GET)
	@ResponseBody
	public JSONArray app_totalClassCount(HttpServletRequest req) throws Exception {
		String ext_id = req.getParameter("ext_id");
		
		List<HashMap> app_totalClassCount = dao.app_totalClassCount(ext_id);
		
		String result = "fail";
		JSONArray jsonArr = new JSONArray();
		JSONObject object = null;
		
		if(app_totalClassCount != null){
			for(int i = 0; i<app_totalClassCount.size(); i++){
				result = "success" ;
		    	object = new JSONObject();
		    	object.put("result",result);
		    	object.put("day_week",app_totalClassCount.get(i).get("day_week"));
		    	object.put("str_class_date",String.valueOf(app_totalClassCount.get(i).get("str_class_date")));
		    	jsonArr.add(object);
			}
		}
		return jsonArr;
	}
}
