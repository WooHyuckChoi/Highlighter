package yjc.wdb.Highlighter;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;



import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import yjc.wdb.Highlighter.domain.TestResultVO;
import yjc.wdb.Highlighter.domain.User_InfoVO;
import yjc.wdb.Highlighter.domain.prob_InfoVO;
import yjc.wdb.Highlighter.domain.stu_infoVO;
import yjc.wdb.Highlighter.domain.test_resultVO;
import yjc.wdb.Highlighter.service.MyPageInfoService;
import yjc.wdb.Highlighter.service.StudyRoomService;
import yjc.wdb.Highlighter.service.User_InfoService;
import yjc.wdb.Highlighter.service.testResultService;
import yjc.wdb.Highlighter.service.test_InfoService;
import yjc.wdb.bbs.util.uploadReviewFileUtils;

import static org.apache.commons.lang3.StringUtils.*;

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
	@Inject
	private User_InfoService userInfoService;
	@Inject
	private test_InfoService test_InfoService;
	@Resource(name = "uploadPath")
	private String uploadPath;


	@RequestMapping(value = "/newLecturePage", method = RequestMethod.GET)//classMain newLecturePage
	public void classMain(@RequestParam("ext_id") String ext_id, Model model, HttpSession session) throws Exception {
		
		model.addAttribute("classMainList", studyRoomService.Ext_read(ext_id));
		model.addAttribute("ext_id", ext_id);
		
		String user_id = (String) session.getAttribute("id");
		model.addAttribute("user_info",userInfoService.read(user_id));
		model.addAttribute("user_id",user_id);
		model.addAttribute("ext_id",ext_id);
		model.addAttribute("open_stus",studyRoomService.selectOpenStat(ext_id));
		model.addAttribute("user_grade",studyRoomService.selectGrade(user_id));
		
		//회원수
		model.addAttribute("count_student",studyRoomService.countExtStudent(ext_id));
		//회원 등급
		String user_grade = studyRoomService.selectGrade(user_id);
		model.addAttribute("user_grade",user_grade);
	}

	@RequestMapping(value="/classOpen", method = RequestMethod.POST)
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
	
	/* lecturePage - 강의 닫기 버튼 클릭 동작 */
	@RequestMapping(value="/classClose", method = RequestMethod.POST) 
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
	
	@RequestMapping(value="classSTManagementList", method= RequestMethod.GET) //studentManagement
	public String classSTManagementList(@RequestParam("ext_id") String ext_id,Model model) throws Exception
	{
		model.addAttribute("TImage", test_InfoService.TImage(ext_id));
		
		// 수강 학생 리스트
		List<User_InfoVO> info = myPageService.getUserInfo(ext_id);
		model.addAttribute("ext_id",ext_id);
		model.addAttribute("info",info);
		
		List<String> nameList = new ArrayList<>();
		for(int i=0; i<info.size();i++)
		{
			nameList.add(i,"\""+info.get(i).getUser_name().toString()+"\"");
		}

		nameList.add(0, "\""+"평균점수"+"\"");
		//System.out.println(nameList);
		model.addAttribute("nameList",nameList);
		
		List<HashMap> list = studyRoomService.selectTestResult(ext_id);
		
		//System.out.println(list);
		//System.out.println(list.size());
		JSONObject jsonMain = new JSONObject();
		
		JSONArray jArray = new JSONArray();
		
		int countTest = studyRoomService.countTest(ext_id); // 해당 과외의 시험갯수
		int studentCount = studyRoomService.countStudent(ext_id); //총 학생 수 
		int account=0; //배열에 넣을 값들이 0으로 초기화 되지 않게 하기 위해
		
		if(list.size()%studentCount!=0) // 총학생성적수를 학생수로 나누어 나머지값이 0 이 아닐경우 마지막 시험은 포함 하지 않는다.
		{
			countTest-=1;
			/* 시험이 3회까지 진행되었고 총학생은 2명일 경우 성적갯수는 6개가된다 하지만 한명이 3회차 시험을 치지 않았을 경우
			   성적갯수는 5개가 되므로 배열에러 발생 그러므로 총학생성적갯수%학생수를 하여 0 이 아닐경우 마지막 시험은 포함하지 않고 반복문을 돌린다. */
		}
		for(int i=0 ; i<countTest ; i++)//3명이면 3번만 돌게. 이게 명수로 돌아야하나? 시험 갯수로 돌려야 하는것 아닌가?
		{
			/*if(list.get(account+1).isEmpty())
			{
				break;
			}*/
			//int sum=0;
			JSONObject row = new JSONObject();
			
			String substr = String.valueOf((list.get(account)).get("test_id"));
			row.put("times",substr.substring(9, 10)+"회차");
			
			int sum = 0;
			int ave = 0;
			for(int j=0; j<studentCount;j++)//학생수에 따라 한 배열에 모든 학생의 점수를 넣는다.	
			{
				
				row.put(list.get(account).get("user_name").toString() , list.get(account).get("count").toString());
				sum+=Integer.parseInt(list.get(account).get("count").toString());
				account++;//다음에 다시 for문을 만났을때 학생이 3명일시 0이아니라 4번째에서 시작할 수 있게
				
			}
			
			ave = sum/studentCount;
			row.put("평균점수", ave);
			//sum += Integer.parseInt(list.get(j).get("count").toString());
			//int ave = sum/list.size();
			//row.put("ave", ave);
			jArray.add(i,row);
			System.out.println(row);
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

		List<HashMap> ListWeeksCorrect = testResultService.ListWeeksCorrect(stu_id,ext_id); // 수강학생 관리 페이지 주차 시험일 점수 오답노트 가져오는것
		
		//session.setAttribute("ListWeeksCorrect", ListWeeksCorrect);
		model.addAttribute("ListWeeksCorrect",ListWeeksCorrect);
		//그래프 구하는 부분
		List<HashMap> StudentList = studyRoomService.selectStuTestResult(user_id);
		/*model.addAttribute("stuName","\""+StudentList.get(0).get("user_name")+"\"");
		System.out.println(StudentList);
		System.out.println("\""+StudentList.get(0).get("user_name")+"\"");*/
		
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
		
		// 학습평가 리스트
		Map<String, String> calparam = new HashMap<>();
		calparam.put("user_id", user_id);
		calparam.put("ext_id", ext_id);
		List<stu_infoVO> calList = studyRoomService.calendarList(calparam);
		model.addAttribute("calList",calList);
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
	
	@RequestMapping(value="homeworkPage", method = RequestMethod.GET)
	public String homeWorkPage(@RequestParam("ext_id") String ext_id,@RequestParam("user_id") String user_id,Model model) throws Exception
	{
		model.addAttribute("TImage",test_InfoService.TImage(ext_id));
		model.addAttribute("ext_id",ext_id);
		model.addAttribute("user_id",user_id);
		//System.out.println(ext_id+user_id);
		return "homeworkPage";
	}

	@RequestMapping(value = "classSTManagementFix", method = RequestMethod.GET)
	public void classSTManagementFix(@RequestParam("ext_id") String ext_id,@RequestParam("user_id") String user_id,Model model,HttpSession session) throws Exception {
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

		List<HashMap> ListWeeksCorrect = testResultService.ListWeeksCorrect(stu_id,ext_id); // 수강학생 관리 페이지 주차 시험일 점수 오답노트 가져오는것
		
		//session.setAttribute("ListWeeksCorrect", ListWeeksCorrect);
		model.addAttribute("ListWeeksCorrect",ListWeeksCorrect);
		//그래프 구하는 부분
		List<HashMap> StudentList = studyRoomService.selectStuTestResult(user_id);
		/*model.addAttribute("stuName","\""+StudentList.get(0).get("user_name")+"\"");
		System.out.println(StudentList);
		System.out.println("\""+StudentList.get(0).get("user_name")+"\"");*/
		
		JSONObject jsonMain = new JSONObject();
		JSONArray jArray = new JSONArray();
		for(int i=0; i<StudentList.size(); i++)
		{
			JSONObject row = new JSONObject();
			
			String substr = StudentList.get(i).get("test_id").toString();
			int subString = Integer.parseInt(substr.substring(8,10));
			row.put("times",subString+"회차");
			//row.put("times",substr.substring(8, 9)+"회차");
					
			row.put("점수", StudentList.get(i).get("count").toString());
			jArray.add(i,row);
		}
		jsonMain.put("sendData",jArray);
		model.addAttribute("json",jsonMain.get("sendData"));
		
		// 학습평가 리스트
		Map<String, String> calparam = new HashMap<>();
		calparam.put("user_id", user_id);
		calparam.put("ext_id", ext_id);
		List<stu_infoVO> calList = studyRoomService.calendarList(calparam);
		model.addAttribute("calList",calList);
	}
	
	
	/* 오답노트  */
	@RequestMapping(value = "wAnswNote", method = RequestMethod.GET)
	   public void wAnswNote(HttpServletRequest req, Model model, HttpSession session, test_resultVO test_resultVO)throws Exception{
		   String test_id = req.getParameter("test_id");
		   String user_id = String.valueOf(session.getAttribute("id"));
		   model.addAttribute("test_id",test_id);
		   
		   List<HashMap> examInfo = test_InfoService.selectExamInfo(test_id);
		   model.addAttribute("examInfo", examInfo);
		   model.addAttribute("prob_count",examInfo.get(0).get("prob_count"));
		   //System.out.println(examInfo);
		   
		   // 학생정답과 선생님 정답을 받아온다. 
		   test_resultVO.setTest_id(test_id);
		   test_resultVO.setUser_id(user_id);
		   List<HashMap> searchTestAnswer = studyRoomService.searchTestAnswer(test_resultVO);
		  
		   //System.out.println("1:"+searchTestAnswer);
		   // 정답 비교 후 새로운 결과를 담을 리스트
		   List<String> resultTestAnswer = new ArrayList<>();
		   
		   // 정답을 리스트 길이의 맞게 반복문 돌림
		   for(int i=0; i<searchTestAnswer.size();i++)
		   {
			   //타입이 뭔지는 몰라도 .equals, == 둘다 안먹혀서 그냥 .toString()으로 문자열로 만들고 이퀄스로 비교함
			   if(searchTestAnswer.get(i).get("prob_answ").toString().equals(searchTestAnswer.get(i).get("stu_result").toString()))
			   {
				   //일치하면 right
				   resultTestAnswer.add("\'right\'");
			   }
			   else
			   {
				   //그렇지 않으면 wrong
				   resultTestAnswer.add("\'wrong\'");
			   }
		   }
		   model.addAttribute("resultTestAnswer",resultTestAnswer);
		   
		   /* 학생 정답 및 강사 정답 */
		   List<test_resultVO> searchStuAnswer = studyRoomService.searchStuAnswer(test_resultVO);
		   
		   
		   //배열로 넘길꺼야!
		   List<String> stuAnsList = new ArrayList<>();
		   for(int i=0; i<searchStuAnswer.size();i++)
		   {
			   stuAnsList.add("\'"+searchStuAnswer.get(i).getStu_result()+"\'");
		   }
		   //model.addAttribute("searchStuAnswer",searchStuAnswer); //학생
		   model.addAttribute("stuAnsList",stuAnsList); //학생
		   
		   /*강사!*/
		   List<prob_InfoVO> searchProbAnswer = studyRoomService.searchProbAnswer(test_id);
		   List<String> probAnsList = new ArrayList<>();
		   for(int i=0; i<searchStuAnswer.size();i++)
		   {
			   probAnsList.add("\'"+searchProbAnswer.get(i).getProb_answ()+"\'");
		   }
		   //model.addAttribute("searchProbAnswer",searchProbAnswer); //강사
		   model.addAttribute("probAnsList",probAnsList); //강사
		   
		   
		   test_resultVO tVO = new test_resultVO();
		   tVO.setUser_id(user_id);
		   tVO.setTest_id(test_id);
		   
		   List<HashMap> noteList = testResultService.selectWansNote(tVO);
		   model.addAttribute("noteList",noteList);
	   }
	
	@RequestMapping(value="sleep", method=RequestMethod.GET)
	public String sleep()
	{
		return "applicationClassFix";
	}
	
	@ResponseBody
	@RequestMapping(value="/uploadwAnswNote", method=RequestMethod.POST)
	public ResponseEntity<String> uploadwAnswNote(MultipartFile file,String prob_id,String text_val,HttpSession session) throws Exception
	{
		String user_id = (String) session.getAttribute("id");
		String savedName=
				uploadReviewFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes());
		
		test_resultVO vo = new test_resultVO();
		vo.setProb_id(prob_id);
		vo.setUser_id(user_id);
		vo.setW_answ_note(text_val);
		vo.setW_answ_note_cont(savedName);
		testResultService.updateWansNote(vo);
		
		System.out.println(prob_id);
		System.out.println(user_id);
		System.out.println(savedName);
		System.out.println(text_val);
		return new ResponseEntity<>(file.getOriginalFilename(),HttpStatus.CREATED);
	}
}
