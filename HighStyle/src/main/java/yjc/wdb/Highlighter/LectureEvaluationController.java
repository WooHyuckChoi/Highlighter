package yjc.wdb.Highlighter;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import yjc.wdb.Highlighter.domain.Criteria;
import yjc.wdb.Highlighter.domain.LectureEvaluationBestScoreVO;
import yjc.wdb.Highlighter.domain.LectureEvaluationTutorInfoVO;
import yjc.wdb.Highlighter.domain.LectureEvaluationVO;
import yjc.wdb.Highlighter.domain.PageMaker;
import yjc.wdb.Highlighter.domain.ParentVO;
import yjc.wdb.Highlighter.domain.TutorListVO;
import yjc.wdb.Highlighter.domain.User_InfoVO;
import yjc.wdb.Highlighter.service.LectureEvaluationService;
import yjc.wdb.Highlighter.service.MyPageInfoService;
import yjc.wdb.Highlighter.service.StudyRoomService;
import yjc.wdb.Highlighter.service.testResultService;


@Controller
public class LectureEvaluationController {

	@Inject
	private LectureEvaluationService service;
	@Inject
	private StudyRoomService studyRoomService;
	@Inject
	private MyPageInfoService myPageService;
	@Inject
	private testResultService testResultService;
	
	@RequestMapping(value="/LectureEvaluation", method = RequestMethod.GET)
	public String LectureEvaluation(@ModelAttribute("cri")Criteria cri, Model model) throws Exception{
		
		model.addAttribute("list", service.listCriteria(cri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.listCountCriteria(cri));
		
		model.addAttribute("pageMaker", pageMaker);
		
		// model.addAttribute("list", service.listAll());
		return "/LectureEvaluationListPage";
	}
	
	@RequestMapping(value="/LectureEvaluationUserSearch", method = RequestMethod.GET)
	public String LectureEvaluationUserSearch(@RequestParam("searchIp") String searchIp, Model model) throws Exception{
		System.out.println(searchIp);
		
		List<LectureEvaluationVO> test = service.search(searchIp);
		if(test.size() != 0){
			model.addAttribute("searchList", service.search(searchIp));
		}
		
		return "/LectureEvaluationListPage";
	}
	
	@RequestMapping(value="/LectureEvaluationRead", method = RequestMethod.GET)
	public void LectureEvaluationRead(@RequestParam("ext_id") String ext_id, Model model) throws Exception{
		System.out.println(ext_id);

		model.addAttribute("list", service.read(ext_id));
		
		List<LectureEvaluationTutorInfoVO> test = service.read2(ext_id);
		if(test.size() != 0){
			model.addAttribute("list2", service.read2(ext_id));
		}

	}
	
	@RequestMapping(value="/LectureEvaluationDetail", method = RequestMethod.GET)
	public void LectureEvaluationDetail(@RequestParam("ext_id") String ext_id, Model model) throws Exception{
		System.out.println(ext_id);
		
		model.addAttribute("list", service.read(ext_id));
		model.addAttribute("list2", service.read3(ext_id));
	}
	
	
	@RequestMapping(value="/LectureEvaluationListCri", method = RequestMethod.GET)
	public void LectureEvaluationListCri(Criteria cri, Model model) throws Exception{
		model.addAttribute("list", service.listCriteria(cri));
	}
	
	
	@RequestMapping(value="/LectureEvaluationListPage", method = RequestMethod.GET)
	public void LectureEvaluationListPage(@ModelAttribute("cri")Criteria cri, Model model) throws Exception{
		
		model.addAttribute("list", service.listCriteria(cri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.listCountCriteria(cri));
		
		model.addAttribute("pageMaker", pageMaker);
		
	}
	
	@RequestMapping(value="/LectureEvaluationBestScore", method = RequestMethod.GET)
	public @ResponseBody List<LectureEvaluationBestScoreVO> LectureEvaluationBestScore(@RequestParam("ext_id") String ext_id, Model model) throws Exception{
		
		List<LectureEvaluationBestScoreVO> test = service.bestScore(ext_id);
//		if(test.size() != 0){
//			model.addAttribute("list2", service.bestScore(ext_id));
//		}
		return test;
	}
	
	@RequestMapping(value="/parentLogin", method = RequestMethod.GET)
	public @ResponseBody List<ParentVO> parentLogin(ParentVO vo, @RequestParam("childPhone") String childPhone, @RequestParam("parentPhone") String parentPhone, @RequestParam("childBirth") String childBirth) throws Exception{
		vo.setPhone(childPhone);
		vo.setBirth(childBirth);
		vo.setPar_phone(parentPhone);
		List<ParentVO> name = service.parentLogin(vo);
		
		return name;
	}
	
	
	@RequestMapping(value="/classSTManagement2", method = RequestMethod.GET)
	public void classSTManagement2(ParentVO vo, @RequestParam("user_id") String user_id, Model model) throws Exception{
		vo.setUser_id(user_id);
		model.addAttribute("user_id", user_id);
		
		List<TutorListVO> tutorList = service.tutorList(user_id);
		model.addAttribute("tutorList", tutorList);
		
		User_InfoVO listProfile = myPageService.selectUserInfo(user_id);
		model.addAttribute("listProfile",listProfile);
		
		// return name;
	}
	
	@RequestMapping(value = "classSTManagement3", method = RequestMethod.GET)
	public @ResponseBody void classSTManagement(@RequestParam("ext_id") String ext_id,@RequestParam("user_id") String user_id,Model model,HttpSession session) throws Exception {
		System.out.println(user_id + " " + ext_id);
		String userid=(String) session.getAttribute("id");//로그인 한 사람의 아이디
		String stu_id=user_id; //해당 학생의 아이디
		List<String> userList=myPageService.selectStuId(ext_id);
		
		model.addAttribute("ext_id",ext_id);
		model.addAttribute("stu_id",stu_id);
		
		// User_InfoVO listProfile = myPageService.selectUserInfo(stu_id);

		model.addAttribute("info",myPageService.getUserInfo(ext_id));
		// model.addAttribute("listProfile",listProfile);

		List<HashMap> ListWeeksCorrect = testResultService.ListWeeksCorrect(stu_id,ext_id); // 수강학생 관리 페이지 주차 시험일 점수 오답노트 가져오는것
		
		model.addAttribute("ListWeeksCorrect",ListWeeksCorrect);
		//그래프 구하는 부분
		List<HashMap> StudentList = studyRoomService.selectStuTestResult(user_id);
		
		JSONObject jsonMain = new JSONObject();
		JSONArray jArray = new JSONArray();
		for(int i=0; i<StudentList.size(); i++)
		{
			JSONObject row = new JSONObject();
			
			String substr = StudentList.get(i).get("test_id").toString();
			row.put("times",substr.substring(8, 9)+"회차");
					
			row.put("점수", StudentList.get(i).get("count").toString());
			jArray.add(i,row);
		}
		jsonMain.put("sendData",jArray);
		model.addAttribute("json",jsonMain.get("sendData"));
		
		System.out.println("info : " + myPageService.getUserInfo(ext_id));
		System.out.println("ListWeeksCorrect : " + ListWeeksCorrect);
		System.out.println("json : " + jsonMain.get("sendData"));
	}
}