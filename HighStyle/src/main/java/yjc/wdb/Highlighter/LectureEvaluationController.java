package yjc.wdb.Highlighter;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

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
import yjc.wdb.Highlighter.domain.DataCheckVO;
import yjc.wdb.Highlighter.domain.LectureEvaluationBestScoreVO;
import yjc.wdb.Highlighter.domain.LectureEvaluationTutorInfoVO;
import yjc.wdb.Highlighter.domain.LectureEvaluationUpdateVO;
import yjc.wdb.Highlighter.domain.LectureEvaluationVO;
import yjc.wdb.Highlighter.domain.PageMaker;
import yjc.wdb.Highlighter.domain.ParentVO;
import yjc.wdb.Highlighter.domain.TutorListVO;
import yjc.wdb.Highlighter.domain.User_InfoVO;
import yjc.wdb.Highlighter.domain.TestResultVO;
import yjc.wdb.Highlighter.service.LectureEvaluationService;
import yjc.wdb.Highlighter.service.MyPageInfoService;

@Controller
public class LectureEvaluationController {

	@Inject
	private LectureEvaluationService service;
	@Inject
	private MyPageInfoService myPageService;
	
	
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
	public @ResponseBody Map<String, Object> classSTManagement(@RequestParam("ext_id") String ext_id,@RequestParam("user_id") String user_id,Model model, TestResultVO trVO) throws Exception {
		
		Map<String, Object> map = new HashMap<>();
		List<HashMap> userResultList = service.userResult(trVO);
		
		trVO.setExt_id(ext_id);
		trVO.setUser_id(user_id);
		List<HashMap> testResultList = service.testResult(trVO);
		JSONObject jsonObj1 = new JSONObject();
		JSONArray jsonArr1 = new JSONArray();
		JSONObject jsonObj2 = new JSONObject();
		JSONArray jsonArr2 = new JSONArray();
		JSONObject total1;
		JSONObject total2;
		JSONObject check1 = new JSONObject();
		JSONObject check2 = new JSONObject();
		JSONObject check3 = new JSONObject();
		int count = 0;
		
		for(int i=0; i<testResultList.size(); i++)
		{
			int week = Integer.parseInt(testResultList.get(i).get("week").toString());
			int resultCheck;
			int totalCheck;
			
			String prob_answ = testResultList.get(i).get("prob_answ").toString();
			String stu_result = testResultList.get(i).get("stu_result").toString();
			if(check1.get(week) == null){
				resultCheck=0;
				totalCheck=0;
				check3.put(count, week);
				count++;
			}
			else{
				resultCheck = (int) check1.get(week);
				totalCheck = (int) check2.get(week);
			}
				if(prob_answ.equals(stu_result)){
					resultCheck++;
					totalCheck++;
					check1.put(week, resultCheck);
					check2.put(week, totalCheck);
				}else{
					totalCheck++;
					check1.put(week, resultCheck);
					check2.put(week, totalCheck);
				}
		}

		for(int i=0; i<count; i++){
			total1 = new JSONObject();
			total2 = new JSONObject();
			
			total1.put("회차", (i+1)+"회차");
			total1.put("주차", check3.get(i));
			total1.put("정답 수", check1.get(check3.get(i)));
			total1.put("문제 수", check2.get(check3.get(i)));
			
			String testDate = userResultList.get(i).get("test_date").toString();
			total2.put("score", check1.get(check3.get(i)));
			total2.put("total", check2.get(check3.get(i)));
			total2.put("testDate", testDate);
			total2.put("week", check3.get(i));

			jsonArr1.add(i, total1);
			jsonArr2.add(i, total2);
		}
		jsonObj1.put("data", jsonArr1);
		jsonObj2.put("data", jsonArr2);
		map.put("data", jsonObj1.get("data"));
		map.put("data2", jsonObj2.get("data"));
		
		Map<String, Object> calparam = new HashMap<>();
		List<HashMap> calList = service.calendarList(trVO);
		map.put("calList", calList);
		return map;
	}
	
	@RequestMapping(value="/dataCheck", method = RequestMethod.GET)
	public @ResponseBody int dataCheck(DataCheckVO vo, @RequestParam("ext_id") String ext_id, @RequestParam("user_id") String user_id) throws Exception{
		vo.setExt_id(ext_id);
		vo.setUser_id(user_id);
		int data = service.dataCheck(vo);
		return data;
	}
	
	@RequestMapping(value="/dataUpload", method = RequestMethod.POST)
	public @ResponseBody void dataUpload(LectureEvaluationUpdateVO vo, @RequestParam("ext_id") String ext_id, @RequestParam("user_id") String user_id, @RequestParam("score") String score, @RequestParam("content") String content) throws Exception{
		vo.setExt_id(ext_id);
		vo.setUser_id(user_id);
		vo.setEvaluation_content(content);
		vo.setEvaluation_grade(score);
		service.create(vo);
	}
	
/*	
	CREATE TABLE `lecture_evaluation` (
			`ext_id` VARCHAR(20) NOT NULL,
			`user_id` VARCHAR(20) NOT NULL,
			`evaluation_content` VARCHAR(500) NULL DEFAULT NULL,
			`evaluation_grade` DOUBLE NULL DEFAULT NULL
		)
		COLLATE='utf8_general_ci'
		ENGINE=InnoDB
		;
*/
/*	
	select ifnull(avg(evaluation_grade), 0)
	from lecture_evaluation
	where ext_id = 0103003
*/	
}