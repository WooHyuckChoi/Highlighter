package yjc.wdb.Highlighter;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import yjc.wdb.Highlighter.domain.Ext_TimetableVO;
import yjc.wdb.Highlighter.domain.exam_InfoVO;
import yjc.wdb.Highlighter.domain.prob_InfoVO;
import yjc.wdb.Highlighter.domain.test_InfoVO;
import yjc.wdb.Highlighter.domain.test_resultVO;
import yjc.wdb.Highlighter.service.Ext_TimetableService;
import yjc.wdb.Highlighter.service.StudyRoomService;
import yjc.wdb.Highlighter.service.User_InfoService;
import yjc.wdb.Highlighter.service.test_InfoService;
import yjc.wdb.bbs.util.uploadReviewFileUtils;
@Controller
public class StudyRoom2Controller {
   
   private static final Logger logger = LoggerFactory.getLogger(StudyRoom2Controller.class);
   
   @Inject
   private StudyRoomService studyRoomService;
   @Inject
   private Ext_TimetableService ext_TimetableService;
   @Inject
   private test_InfoService test_InfoService;
   
   @Resource(name = "uploadPath")
   private String uploadPath;
   
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
   
   /* 시험 페이지 띄움  */
   @RequestMapping(value="/testPage", method = RequestMethod.GET)
   public void testPage(HttpServletRequest req, Model model)throws Exception{
      String ext_id = req.getParameter("ext_id");
      model.addAttribute("ext_id", req.getParameter("ext_id"));
      
      model.addAttribute("TImage", test_InfoService.TImage(ext_id));
      
      List<test_InfoVO> test_InfoVO = test_InfoService.selectTest(ext_id);
      System.out.println(test_InfoVO);
      model.addAttribute("test_InfoVO", test_InfoVO);
   }
   
   /* 시험 등록 페이지 띄움 */
   @RequestMapping(value="registerExam", method = RequestMethod.GET)
   public void testListPage(Model model, HttpServletRequest req)throws Exception{
	   model.addAttribute("ext_id", req.getParameter("ext_id"));
   }
   
   /* 시험 등록 - test_Info, prob_Info */
   @RequestMapping(value="registerExam", method = RequestMethod.POST)
   public String testListPagePost(HttpSession session, MultipartFile file3,MultipartFile file2,MultipartFile file, Model model, HttpServletRequest req, test_InfoVO testInfoVO, prob_InfoVO probInfoVO, test_resultVO testResultVO, exam_InfoVO exam_InfoVO)throws Exception{

	  String ext_id = req.getParameter("ext_id");  

	  String beforeTestId = test_InfoService.lastTestId(ext_id); //최근에 등록한 test_id
	  String AfterTestId = "";
	  
	  /* test_id 결정 */
	  if(beforeTestId == null){
		  AfterTestId = "T"+ext_id+"01";  
	  }
	  if(beforeTestId != null){	 
		  int testNum = Integer.valueOf(beforeTestId.substring(8))+1; //최근에 등록한 test_id의 마지막 번호
		  String testNum2 ="";
		  if(testNum < 10){
			  testNum2 = "0"+testNum;
		  }
		  else{
			  testNum2 = String.valueOf(testNum);
		  }
		  AfterTestId = beforeTestId.substring(0,8)+testNum2; //새로 등록할 test_id 생성
	  }
	  testInfoVO.setTest_id(AfterTestId);
	  //-------------------------------exam_InfoVO 설정----------------------------------
	  exam_InfoVO.setUser_id(session.getAttribute("id").toString());
	  exam_InfoVO.setTest_id(AfterTestId);
	  exam_InfoVO.setTest_state("ready");
	  
	  test_InfoService.registerExamInfo(exam_InfoVO);
	  //-------------------------------test_InfoVO 설정----------------------------------
	  if(file.getOriginalFilename() != ""){
		  String savedName=
			uploadReviewFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes());
		
		  testInfoVO.setTest_file(savedName); 
	  }
	  if(file2.getOriginalFilename() != ""){
		  String savedName2=
			uploadReviewFileUtils.uploadFile(uploadPath, file2.getOriginalFilename(), file.getBytes());
			
		  testInfoVO.setTest_file2(savedName2); 
	  }
	  if(file3.getOriginalFilename() != ""){
		  String savedName3=
			uploadReviewFileUtils.uploadFile(uploadPath, file3.getOriginalFilename(), file.getBytes());
			
		  testInfoVO.setTest_file3(savedName3);
	  }
	    
	  test_InfoService.registerTest(testInfoVO); //test_Info에 시험 등록
	  
	  //---------------------------prob_InfoVO 설정-------------------------------
	  String[] test_result = String.valueOf(testInfoVO.getTestResult()).split("/");

	  int testLength = test_result.length;
	  for(int i = 0; i < testLength; i++){
		  String num = String.valueOf(i);
		  if(i < 10){
			  num = "0"+i;
		  }
		  probInfoVO.setProb_id(AfterTestId+num);
		  probInfoVO.setProb_answ(test_result[i]);
		  probInfoVO.setTest_id(AfterTestId);
		  
		  test_InfoService.registerProbAnsw(probInfoVO);
	  }
	  
	  return "redirect:testPage?ext_id="+ext_id;
   }
   /* 시험지 페이지 */
   @RequestMapping(value = "examPage", method = RequestMethod.GET)
	public void getExamPage(HttpServletRequest req, Model model,test_InfoVO vo2) throws Exception {
		String test_id = req.getParameter("test_id");
		System.out.println(test_id);
		List<HashMap> examInfo = test_InfoService.selectExamInfo(test_id);
		model.addAttribute("examInfo", examInfo);
		
	}
   /* 시험 답안 제출  */
   @RequestMapping(value = "examPage", method = RequestMethod.POST)
   @ResponseBody
	public String postExamPage(@RequestBody JSONObject json, HttpSession session, HttpServletRequest req, Model model,test_InfoVO vo2) throws Exception {
	   	String test_id = String.valueOf(json.get("test_id"));
		String user_id = String.valueOf(session.getAttribute("id"));
		
		List stuResultList = (List) json.get("selectNumbers");

		for(int i = 0; i< stuResultList.size(); i++){
			test_resultVO testResultVO = new test_resultVO();
			if(i<10){
				testResultVO.setProb_id(test_id+"0"+i);
			}
			else{
				testResultVO.setProb_id(test_id+i);
			}
			testResultVO.setUser_id(user_id);
			testResultVO.setTest_id(test_id);
			testResultVO.setStu_result(String.valueOf(stuResultList.get(i)));
			
			test_InfoService.registerTestResult(testResultVO);
		}
		return "success";
	}
   /* 시험 시작 클릭시 test_state상태 : clear 변경  */
   @RequestMapping(value = "changeTestState", method = RequestMethod.POST)
   @ResponseBody
   public String changeTestState(HttpServletRequest req)throws Exception{
	   String test_id = req.getParameter("currentExt_id");
	   test_InfoService.changeTestState(test_id);
	   
	   return "success";
   }
   /* 시험 답안 제출 여부 */
   @RequestMapping(value = "testResultCount", method = RequestMethod.POST)
   @ResponseBody
   public String testResultCount(HttpServletRequest req)throws Exception{
	   String test_id = req.getParameter("test_id");
	   int result = test_InfoService.testResultCount(test_id);
	   System.out.println(result);
	   return result+"";
   }
   
   /* 이 부분 일단 StudyRoomController에 옮겨서 진행*/
   @RequestMapping(value = "checkTestResult", method = RequestMethod.GET)
   public void checkTestResult(HttpServletRequest req, Model model)throws Exception{
	   String test_id = req.getParameter("test_id");
	   model.addAttribute("test_id", test_id);
	   List<HashMap> checkTestResult = test_InfoService.checkTestResult(test_id);
	   int count2 = 0;
	   int count = 0;
	   
	   for(HashMap i : checkTestResult){
		   String prob_answ = String.valueOf(i.get("prob_answ"));
		   String stu_result = String.valueOf(i.get("stu_result"));
		   String user_name = String.valueOf(i.get("user_name"));
		   model.addAttribute("user_name", user_name);
		   if(prob_answ.equals(stu_result)){
			   count++;
		   }
		   count2++;
	   }
	   
	   model.addAttribute("count", count);
	   model.addAttribute("count2", count2);
	  
	   model.addAttribute("checkTestResult", checkTestResult);
   }
  
   
   /* 이 부분 일단 StudyRoomController에 옮겨서 진행*/
   /*@RequestMapping(value = "wAnswNote", method = RequestMethod.GET)
   public void wAnswNote(HttpServletRequest req, Model model)throws Exception{
	   String test_id = req.getParameter("test_id");

	   List<HashMap> examInfo = test_InfoService.selectExamInfo(test_id);
	   model.addAttribute("examInfo", examInfo);
	   System.out.println(examInfo);
   }*/
   
}