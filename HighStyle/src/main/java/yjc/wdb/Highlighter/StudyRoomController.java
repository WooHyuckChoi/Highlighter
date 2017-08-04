package yjc.wdb.Highlighter;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
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

import yjc.wdb.Highlighter.domain.User_InfoVO;
import yjc.wdb.Highlighter.domain.test_resultVO;
import yjc.wdb.Highlighter.service.MyPageInfoService;
import yjc.wdb.Highlighter.service.StudyRoomService;
import yjc.wdb.Highlighter.service.testResultService;

@Controller
public class StudyRoomController 
{
	private static final Logger logger = LoggerFactory.getLogger(StudyRoomController.class);

	@Inject
	private StudyRoomService studyRoomService;
	@Inject
	private MyPageInfoService myPageService;
	@Inject
	private testResultService testResultService;


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
		HashMap<String, String> vo= new HashMap<String, String>();
		vo.put("user_id", json.get("user_id").toString());
		vo.put("ext_id", json.get("ext_id").toString());
		//String user_id=json.get("user_id").toString();
		System.out.println(vo);
		studyRoomService.updateOpenStat(vo);
		//return enterRoomService.selectGrade(user_id);
		return "success";
	}

	@RequestMapping(value="classSTManagementList", method= RequestMethod.GET) //studentManagement
	public String classSTManagementList(@RequestParam("ext_id") String ext_id,Model model) throws Exception
	{
		System.out.println("수강학생리스트");
		List<User_InfoVO> info = myPageService.getUserInfo(ext_id);
		model.addAttribute("ext_id",ext_id);
		model.addAttribute("info",info);
		
		List<HashMap> list = studyRoomService.selectTestResult(ext_id);
	
		JSONObject jsonMain = new JSONObject();
		JSONArray jArray = new JSONArray();
		for(int i=0 ; i<list.size() ; i++)
		{
			JSONObject row = new JSONObject();
			
			String substr = list.get(i).get("test_id").toString();
			row.put("times",substr.substring(8, 9));
			
			for(int j=0; j<list.size() ; j++)
				row.put(list.get(j).get("user_id").toString() , list.get(i).get("count").toString());
			
			jArray.add(i,row);
		}
		jsonMain.put("sendData",jArray);
		System.out.println(jArray);
		model.addAttribute("json",jsonMain.get("sendData"));
		return "studentManagement";
	}

	@RequestMapping(value = "classSTManagement", method = RequestMethod.GET)
	public void classSTManagement(@RequestParam("ext_id") String ext_id,@RequestParam("user_id") String user_id,Model model,HttpSession session) throws Exception {
		System.out.println("수강학생관리");
		//String userid =req.getParameter("user_id");
		String userid=(String) session.getAttribute("id");//로그인 한 사람의 아이디

		String stu_id=user_id; //해당 학생의 아이디

		//String stu_id=myPageService.selectStuId(ext_id);
		List<String> userList=myPageService.selectStuId(ext_id);
		//String stu_id=userList.get(0);

		model.addAttribute("ext_id",ext_id);
		model.addAttribute("stu_id",stu_id);
		//User_InfoVO listProfile = new User_InfoVO();
		User_InfoVO listProfile = myPageService.selectUserInfo(stu_id);
		//listProfile = service.profile(userid);

		model.addAttribute("info",myPageService.getUserInfo(ext_id));
		model.addAttribute("listProfile",listProfile);

		List<HashMap> ListWeeksCorrect = testResultService.ListWeeksCorrect(userid,ext_id);

		session.setAttribute("ListWeeksCorrect", ListWeeksCorrect);

	}

	@RequestMapping(value = "classSTManagementAjax", method = RequestMethod.POST)
	@ResponseBody
	public List<test_resultVO> classSTManagementAjax(HttpServletRequest req,Model model,HttpSession session) throws Exception {

		String userid =req.getParameter("user_id");
		String ext_id = req.getParameter("ext_id");

		User_InfoVO listProfile = new User_InfoVO();
		listProfile = studyRoomService.profile(userid);

		model.addAttribute("listProfile",listProfile);

		List<test_resultVO> weekCorrectAnsw = testResultService.weekCorrectAnsw(userid,ext_id);

		return weekCorrectAnsw;
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
