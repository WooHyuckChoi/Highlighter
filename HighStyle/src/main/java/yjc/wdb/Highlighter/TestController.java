package yjc.wdb.Highlighter;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import yjc.wdb.Highlighter.domain.Ext_TimetableVO;
import yjc.wdb.Highlighter.domain.User_InfoVO;
import yjc.wdb.Highlighter.domain.exam_InfoVO;
import yjc.wdb.Highlighter.domain.jindan_evalVO;
import yjc.wdb.Highlighter.domain.jindan_resultVO;
import yjc.wdb.Highlighter.domain.prob_InfoVO;
import yjc.wdb.Highlighter.domain.test_InfoVO;
import yjc.wdb.Highlighter.domain.test_resultVO;
import yjc.wdb.Highlighter.service.ClassIntroListService;
import yjc.wdb.Highlighter.service.Ext_InfoService;
import yjc.wdb.Highlighter.service.Ext_TimetableService;
import yjc.wdb.Highlighter.service.MyPageInfoService;
import yjc.wdb.Highlighter.service.User_InfoService;
import yjc.wdb.Highlighter.service.enterRoomService;
import yjc.wdb.Highlighter.service.exam_InfoService;
import yjc.wdb.Highlighter.service.jindan_evalService;
import yjc.wdb.Highlighter.service.jindan_resultService;
import yjc.wdb.Highlighter.service.prob_InfoService;
import yjc.wdb.Highlighter.service.testResultService;
import yjc.wdb.Highlighter.service.test_InfoService;
import yjc.wdb.bbs.util.MediaUtils;
import yjc.wdb.bbs.util.MultipartFileSender;

@Controller
public class TestController {
	private static final Logger logger =
			LoggerFactory.getLogger(TestController.class);
	
	@Inject
	User_InfoService service;
	@Inject
	Ext_InfoService service2;
	@Inject
	ClassIntroListService service3;
	@Inject
	test_InfoService service4;
	@Inject
	prob_InfoService service5;
	@Inject
	testResultService service6;
	@Inject
	Ext_TimetableService service7;
	@Inject
	exam_InfoService service8;
	@Inject
	private enterRoomService enterRoomService;
	@Inject
	jindan_evalService service9;
	@Inject
	jindan_resultService service10;
	
	@Inject
	private MyPageInfoService myPageService;
	
	@Resource(name = "uploadPath")
	private String uploadPath;

	@RequestMapping(value = "Jongha", method = RequestMethod.GET)
	public void Jongha() throws Exception {

	}

	@RequestMapping(value = "/classMain", method = RequestMethod.GET)
	public void classMain(@RequestParam("ext_id") String ext_id, Model model, HttpSession session) throws Exception {
		model.addAttribute("classMainList", service3.Ext_read(ext_id));
		model.addAttribute("ext_id", ext_id);
		
		String user_id = (String) session.getAttribute("id");
		model.addAttribute("user_id",user_id);
		model.addAttribute("ext_id",ext_id);
		model.addAttribute("open_stus",enterRoomService.selectOpenStat(ext_id));
		model.addAttribute("user_grade",enterRoomService.selectGrade(user_id));
		model.addAttribute("classMainList", service3.Ext_read(ext_id));
		String TImage = service4.TImage(ext_id);
		
		System.out.println("占싱거뱄옙占쏙옙:"+TImage);
		
		model.addAttribute("TImage",TImage);
	}
	
	@RequestMapping(value="/classMain", method = RequestMethod.POST)
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
		enterRoomService.updateOpenStat(vo);
		//return enterRoomService.selectGrade(user_id);
		return "success";
	}
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
		enterRoomService.updateCloseStat(vo);
		return "success";
	}//異붽��빐�빞�븿
	
	@RequestMapping(value = "/lectureSchedule", method = RequestMethod.GET)
	@ResponseBody
	public Object lectureSchedule(HttpServletRequest req)throws Exception{
		String ext_id = req.getParameter("ext_id");
		List<Ext_TimetableVO> ALectureSchedule = service7.ALectureSchedule(ext_id);
		JSONArray jsonarr = new JSONArray();
		JSONObject jsonObj = null;
		for(int i = 0; i < ALectureSchedule.size(); i++){
			jsonObj = new JSONObject();
			jsonObj.put("day_week",ALectureSchedule.get(i).getDay_week());
			jsonObj.put("class_str_time",ALectureSchedule.get(i).getClass_str_time());
			jsonObj.put("class_end_time",ALectureSchedule.get(i).getClass_end_time());
			jsonarr.add(jsonObj);
		}
		
		return jsonarr;
	}
	
	@RequestMapping(value = "homework", method = RequestMethod.GET)
	public void homework() throws Exception {

	}

	@RequestMapping(value = "classData", method = RequestMethod.GET)
	public void classData() throws Exception {

	}


	
	

	@RequestMapping(value = "classTest", method = RequestMethod.GET)
	public void classTest(@RequestParam("ext_id") String ext_id, Model model, HttpSession session,HttpServletRequest req) throws Exception {
		String user_id = req.getParameter("user_id");
	
		model.addAttribute("ext_id",ext_id);
		
		model.addAttribute("list", service3.Ext_read(ext_id));
		System.out.println("占쏙옙占쏙옙占쌘듸옙 :"+ext_id);
		System.out.println("占쏙옙占쏙옙 占쏙옙占싱듸옙 占쏙옙占쏙옙占�:"+user_id);
		
		
		List<String> allid = service4.allid(ext_id);
		System.out.println("占쏙옙 占싱곤옙 占쏙옙占쏙옙占� allid:"+allid);
		
		model.addAttribute("allid",allid);
		
		
		List<HashMap> testlist = service4.testList(ext_id,user_id);
		
		//System.out.println(testlist);
/*		HashMap getHm = new HashMap();
		String a, c, d;
		int b;

		for (int i = 0; i < testlist.size(); i++) {
			getHm = (HashMap) testlist.get(i);
			a = (String) getHm.get("test_id");
			//b = (int) getHm.get("test_time");
			c = (String) getHm.get("test_date");
			d = (String) getHm.get("test_state");

			 System.out.println(a + " " + b + " " + c + " " + d); 
		}*/
		session.setAttribute("testlist", testlist);
	
		/* model.addAttribute("testlist", testlist); */
		/*
		 * List<HashMap> testlist = service4.testList(ext_id);
		 * model.addAttribute("testlist", testlist);
		 * 
		 * List<HashMap> testlist = service4.testList(ext_id);
		 * model.addAttribute("testlist", testlist);
		 */
		/*占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙트 占쏙옙占�*/
		
		List<test_InfoVO> teacherList = service4.teachertestList(ext_id);
		
		model.addAttribute("teacherList",teacherList);

	}

	@RequestMapping(value = "classTest", method = RequestMethod.POST)
	public void classTest(@RequestParam("ext_id") String ext_id, prob_InfoVO vo1, test_InfoVO vo2, exam_InfoVO vo3, MultipartFile file,
			Model model, HttpServletRequest req) throws Exception {
		
	

		System.out.println("originalName:" + file.getOriginalFilename());
		System.out.println("size:" + file.getSize());	
		System.out.println("contentType:" + file.getContentType());
		System.out.println("server FileName" + file.getName());

		/* String qjs1 = req.getParameter("qjs1"); */

		model.addAttribute("list", service3.Ext_read(ext_id));

		String test_id = "T" + ext_id;

		if (service4.extidse(ext_id) == null)
			test_id = test_id + "1";
		else if (service4.extidse(ext_id).equals(test_id + "1"))
			test_id = test_id + "2";
		else if (service4.extidse(ext_id).equals(test_id + "2"))
			test_id = test_id + "3";
		else if (service4.extidse(ext_id).equals(test_id + "3"))
			test_id = test_id + "4";
		else if (service4.extidse(ext_id).equals(test_id + "4"))
			test_id = test_id + "5";
		else if (service4.extidse(ext_id).equals(test_id + "5"))
			test_id = test_id + "6";
		else if (service4.extidse(ext_id).equals(test_id + "6"))
			test_id = test_id + "7";
		else if (service4.extidse(ext_id).equals(test_id + "7"))
			test_id = test_id + "8";
		else if (service4.extidse(ext_id).equals(test_id + "8"))
			test_id = test_id + "9";
		else if (service4.extidse(ext_id).equals(test_id + "9"))
			test_id = test_id + "10";
		else if (service4.extidse(ext_id).equals(test_id + "10"))
			test_id = test_id + "11";

		
		/*占쏙옙占쏙옙!*/
		int length = req.getParameterValues("allid").length;
		
		
		String[] allid = new String[5];
		
		for(int x=0; x<length; x++){
			allid[x]=req.getParameterValues("allid")[x];
			vo3.setTest_id(test_id);
			vo3.setUser_id(allid[x]);
			service8.createexam(vo3);
		}
		

		
		
		
		
		
		String test_date = req.getParameter("testdate");
		System.out.println(test_date);

		String aaa = service4.extidse(ext_id);
		System.out.println(aaa);
		System.out.println("test_id:" + test_id);

		model.addAttribute("ext_id", ext_id);

		String savedName = uploadFile(file.getOriginalFilename(), file.getBytes());

		System.out.println(savedName);
		model.addAttribute("savedName", savedName);

		String test_file = savedName;

		int test_time = Integer.parseInt(req.getParameter("testTime"));

		vo2.setTest_date(test_date);
		vo2.setTest_id(test_id);
		vo2.setExt_id(ext_id);
		vo2.setTest_file(test_file);
		vo2.setTest_time(test_time);

		service4.create(vo2);

		// vo2 占쏙옙占쏙옙占쌘듸옙, 占쏙옙占쏙옙占쌘듸옙, 占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙, 占쏙옙占쏙옙 占시곤옙, 占쏙옙占쏙옙 占쏙옙짜

		String prob_id1 = test_id + "01";
		String prob_id2 = test_id + "02";
		String prob_id3 = test_id + "03";
		String prob_id4 = test_id + "04";
		String prob_id5 = test_id + "05";
		String prob_id6 = test_id + "06";
		String prob_id7 = test_id + "07";
		String prob_id8 = test_id + "08";
		String prob_id9 = test_id + "09";
		String prob_id10 = test_id + "10";
		String prob_id11 = test_id + "11";
		String prob_id12 = test_id + "12";
		String prob_id13 = test_id + "13";
		String prob_id14 = test_id + "14";
		String prob_id15 = test_id + "15";
		String prob_id16 = test_id + "16";
		String prob_id17 = test_id + "17";
		String prob_id18 = test_id + "18";
		String prob_id19 = test_id + "19";
		String prob_id20 = test_id + "20";

		String answ1 = req.getParameter("answ1");
		String answ2 = req.getParameter("answ2");
		String answ3 = req.getParameter("answ3");
		String answ4 = req.getParameter("answ4");
		String answ5 = req.getParameter("answ5");
		String answ6 = req.getParameter("answ6");
		String answ7 = req.getParameter("answ7");
		String answ8 = req.getParameter("answ8");
		String answ9 = req.getParameter("answ9");
		String answ10 = req.getParameter("answ10");
		String answ11 = req.getParameter("answ11");
		String answ12 = req.getParameter("answ12");
		String answ13 = req.getParameter("answ13");
		String answ14 = req.getParameter("answ14");
		String answ15 = req.getParameter("answ15");
		String answ16 = req.getParameter("answ16");
		String answ17 = req.getParameter("answ17");
		String answ18 = req.getParameter("answ18");
		String answ19 = req.getParameter("answ19");
		String answ20 = req.getParameter("answ20");

		String testtime = req.getParameter("testTime");

		/* vo2.setTest_id(fileName); */

		// vo1 占쏙옙占쏙옙占쌘듸옙, 占쏙옙占쏙옙占쏙옙占쏙옙, 占쏙옙占쏙옙 占쌘듸옙

		vo1.setProb_id(prob_id1);
		vo1.setProb_answ(answ1);
		vo1.setTest_id(test_id);

		service5.create(vo1);

		vo1.setProb_id(prob_id2);
		vo1.setProb_answ(answ2);
		vo1.setTest_id(test_id);

		service5.create(vo1);

		vo1.setProb_id(prob_id3);
		vo1.setProb_answ(answ3);
		vo1.setTest_id(test_id);

		service5.create(vo1);

		vo1.setProb_id(prob_id4);
		vo1.setProb_answ(answ4);
		vo1.setTest_id(test_id);

		service5.create(vo1);

		vo1.setProb_id(prob_id5);
		vo1.setProb_answ(answ5);
		vo1.setTest_id(test_id);

		service5.create(vo1);

		vo1.setProb_id(prob_id6);
		vo1.setProb_answ(answ6);
		vo1.setTest_id(test_id);

		service5.create(vo1);

		vo1.setProb_id(prob_id7);
		vo1.setProb_answ(answ7);
		vo1.setTest_id(test_id);

		service5.create(vo1);

		vo1.setProb_id(prob_id8);
		vo1.setProb_answ(answ8);
		vo1.setTest_id(test_id);

		service5.create(vo1);

		vo1.setProb_id(prob_id9);
		vo1.setProb_answ(answ9);
		vo1.setTest_id(test_id);

		service5.create(vo1);

		vo1.setProb_id(prob_id10);
		vo1.setProb_answ(answ10);
		vo1.setTest_id(test_id);

		service5.create(vo1);

		vo1.setProb_id(prob_id11);
		vo1.setProb_answ(answ11);
		vo1.setTest_id(test_id);

		service5.create(vo1);

		vo1.setProb_id(prob_id12);
		vo1.setProb_answ(answ12);
		vo1.setTest_id(test_id);

		service5.create(vo1);

		vo1.setProb_id(prob_id13);
		vo1.setProb_answ(answ13);
		vo1.setTest_id(test_id);

		service5.create(vo1);

		vo1.setProb_id(prob_id14);
		vo1.setProb_answ(answ14);
		vo1.setTest_id(test_id);

		service5.create(vo1);

		vo1.setProb_id(prob_id15);
		vo1.setProb_answ(answ15);
		vo1.setTest_id(test_id);

		service5.create(vo1);

		vo1.setProb_id(prob_id16);
		vo1.setProb_answ(answ16);
		vo1.setTest_id(test_id);

		service5.create(vo1);

		vo1.setProb_id(prob_id17);
		vo1.setProb_answ(answ17);
		vo1.setTest_id(test_id);

		service5.create(vo1);

		vo1.setProb_id(prob_id18);
		vo1.setProb_answ(answ18);
		vo1.setTest_id(test_id);

		service5.create(vo1);

		vo1.setProb_id(prob_id19);
		vo1.setProb_answ(answ19);
		vo1.setTest_id(test_id);

		service5.create(vo1);

		vo1.setProb_id(prob_id20);
		vo1.setProb_answ(answ20);
		vo1.setTest_id(test_id);

		service5.create(vo1);
		/*占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙트 占쏙옙占�*/
	List<test_InfoVO> teacherList = service4.teachertestList(ext_id);
		
		model.addAttribute("teacherList",teacherList);

		

	}
	private String uploadFile(String originalName, byte[] fileData) throws Exception {

		/*UUID uid = UUID.randomUUID();*/

		String savedName = /*uid.toString() + "_" +*/ originalName;

		File target = new File(uploadPath, savedName);

		FileCopyUtils.copy(fileData, target);

		return savedName;
	}

	@RequestMapping(value = "classVideoList", method = RequestMethod.GET)
	public void classVideoList() throws Exception {

	}



	@RequestMapping(value = "noticeResi", method = RequestMethod.GET)
	public void noticeResi() throws Exception {

	}

	@RequestMapping(value = "homeworkResi", method = RequestMethod.GET)
	public void homeworkResi() throws Exception {

	}

	@RequestMapping(value = "classDataResi", method = RequestMethod.GET)
	public void classDataResi() throws Exception {

	}

	@RequestMapping(value = "classTestTry", method = RequestMethod.GET)
	public void classTestTry(HttpServletRequest req, Model model,test_InfoVO vo2) throws Exception {
		
		String ext_id = req.getParameter("ext_id");
		
		model.addAttribute("ext_id",ext_id);
		String test_id = req.getParameter("test_id");
		System.out.println(test_id);
		
		List<test_InfoVO> listtest = service4.testImage(test_id);
		
		model.addAttribute("listtest", listtest);
		
	}
	
	@ResponseBody
	@RequestMapping("/displayFile")
	public ResponseEntity<byte[]>  displayFile(String fileName)throws Exception{

		InputStream in = null; 
		ResponseEntity<byte[]> entity = null;

		logger.info("FILE NAME: " + fileName);


		try{

			String formatName = fileName.substring(fileName.lastIndexOf(".")+1);

			MediaType mType = MediaUtils.getMediaType(formatName);

			HttpHeaders headers = new HttpHeaders();

			in = new FileInputStream(fileName); 

			if(mType != null){
				headers.setContentType(mType);
			}else{

				fileName = fileName.substring(fileName.indexOf("_")+1);       
				headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
				headers.add("Content-Disposition", "attachment; filename=\""+ 
						new String(fileName.getBytes("UTF-8"), "ISO-8859-1")+"\"");
				
			}

			entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), 
					headers, 
					HttpStatus.CREATED);
		}catch(Exception e){
			e.printStackTrace();
			entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
		}finally{
			in.close();
		}
		return entity;    
	}

	@RequestMapping("/displayVideoFile")
	public String getContentMediaVideo(String fileName, HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		File file = new File(fileName);		
		RandomAccessFile randomFile = new RandomAccessFile(file, "r");
		
		long rangeStart = 0; //요청 범위의 시작 위치
		long rangeEnd = 0; //요청 범위의 끝 위치
		boolean isPart=false; //부분 요청일 경우 true, 전체 요청의 경우 false
		
		try
		{
			long movieSize = randomFile.length();
			String range= request.getHeader("range");
			
			if(range!=null)
			{
				if(range.endsWith("-"))
				{
					range = range+(movieSize-1);
				}
				int idxm = range.trim().indexOf("-"); 
				rangeStart = Long.parseLong(range.substring(6,idxm)); 
				rangeEnd = Long.parseLong(range.substring(idxm+1));
				if(rangeStart > 0)
				{
					isPart=true;
				}
			}
			else
			{
				rangeStart = 0;
				rangeEnd = movieSize - 1;
			}
			long partSize = rangeEnd - rangeStart+1;
			
			response.reset();
			
			response.setStatus(isPart?206:200);
			response.setContentType("video/mp4");
			
			response.setHeader("Content-Range", "bytes "+rangeStart+"-"+rangeEnd+"/"+movieSize); 
			response.setHeader("Accept-Ranges", "bytes"); 
			response.setHeader("Content-Length", ""+partSize);
			
			OutputStream out = response.getOutputStream();
			
			randomFile.seek(rangeStart);
			int bufferSize = 8*1024;
			byte[] buf = new byte[bufferSize];
			do
			{
				int block = partSize > bufferSize ? bufferSize : (int)partSize; 
				int len = randomFile.read(buf, 0, block); 
				out.write(buf, 0, len); 
				partSize -= block;
			}while(partSize>0);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		finally 
		{
			randomFile.close();
		}
		return null;
	}
	
	@ResponseBody
	@RequestMapping("/displayVideoFile2")
	public ResponseEntity<byte[]> displayVideoFile(String fileName,@RequestHeader("Range") String rangeValue) throws Exception
	{
		File f = new File(fileName);
		ResponseEntity<byte[]> entity = null;
		InputStream in = null; 

		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
		headers.set("ETag", fileName);
		headers.set("Accept-Ranges", "bytes");

		try
		{
			rangeValue=rangeValue.trim().substring("bytes=".length());
			Long fileLength = Files.size(Paths.get(String.valueOf(f)));
			Long start, end;

			if (rangeValue.startsWith("-")) {
				end = fileLength - 1;
				start = fileLength - 1 - Long.parseLong(rangeValue.substring("-".length()));
			} else {
				String[] range = rangeValue.split("-");
				start = Long.parseLong(range[0]);
				end = range.length > 1 ? Long.parseLong(range[1]) : fileLength - 1;
			}
			if (end > fileLength - 1) {
				end = fileLength - 1;
			}
			if (start <= end) {
				Long contentLength = end - start + 1;
				headers.setContentLength(contentLength);
				headers.set("Content-Range", "bytes " + start + "-"+ end + "/" + fileLength);
			}
		}
		catch (Exception e) 
		{
			entity = new ResponseEntity(HttpStatus.INTERNAL_SERVER_ERROR);
			return entity;
		}
		in = new FileInputStream(f);
		entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), headers, HttpStatus.PARTIAL_CONTENT);
		in.close();
		return entity;
	}
	
	@RequestMapping(value = "/video", method = RequestMethod.GET) //util의 MediaUtils.java 사용
	  public void getVideo(HttpServletRequest req, HttpServletResponse res,@RequestParam("fileName") String fileName) {
	    
	    
	    // 데이터 조회
	    //FileModel fileModel = fileService.getFileInfo(Integer.parseInt(id));
	    
	    //logger.info("동영상 스트리밍 요청 : " + filePath + fileModel.getSaveFileName());
	    
	    File getFile = new File(fileName);
	    
	    try {
	      // 미디어 처리
	      MultipartFileSender
	        .fromFile(getFile)
	        .with(req)
	        .with(res)
	        .serveResource();
	      
	    } catch (Exception e) {
	      // 사용자 취소 Exception 은 콘솔 출력 제외
	      if (!e.getClass().getName().equals("org.apache.catalina.connector.ClientAbortException")) e.printStackTrace();
	    }
	  }
		@RequestMapping(value = "classTestFinish", method = RequestMethod.GET)
		public void classTestFinish(Model model, HttpServletRequest req, test_resultVO vo3,exam_InfoVO vo4) throws Exception {
				
				String ext_id= req.getParameter("ext_id");
				
				model.addAttribute("ext_id",ext_id);
				
				String test_id = req.getParameter("test_id");
				
				String prob_id1 = test_id + "01";
				String prob_id2 = test_id + "02";
				String prob_id3 = test_id + "03";
				String prob_id4 = test_id + "04";
				String prob_id5 = test_id + "05";
				String prob_id6 = test_id + "06";
				String prob_id7 = test_id + "07";
				String prob_id8 = test_id + "08";
				String prob_id9 = test_id + "09";
				String prob_id10 = test_id + "10";
				String prob_id11 = test_id + "11";
				String prob_id12 = test_id + "12";
				String prob_id13 = test_id + "13";
				String prob_id14 = test_id + "14";
				String prob_id15 = test_id + "15";
				String prob_id16 = test_id + "16";
				String prob_id17 = test_id + "17";
				String prob_id18 = test_id + "18";
				String prob_id19 = test_id + "19";
				String prob_id20 = test_id + "20";
				
				String user_id = req.getParameter("userid");
				
				Calendar cal = Calendar.getInstance();
				SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
				/*System.out.println(df.format(cal.getTime()));*/
				String todayDate = df.format(cal.getTime());
				
				
				
				String qjs1 = req.getParameter("qjs1");
				String qjs2 = req.getParameter("qjs2");
				String qjs3 = req.getParameter("qjs3");
				String qjs4 = req.getParameter("qjs4");
				String qjs5 = req.getParameter("qjs5");
				String qjs6 = req.getParameter("qjs6");
				String qjs7 = req.getParameter("qjs7");
				String qjs8 = req.getParameter("qjs8");
				String qjs9 = req.getParameter("qjs9");
				String qjs10 = req.getParameter("qjs10");
				String qjs11 = req.getParameter("qjs11");
				String qjs12 = req.getParameter("qjs12");
				String qjs13 = req.getParameter("qjs13");
				String qjs14 = req.getParameter("qjs14");
				String qjs15 = req.getParameter("qjs15");
				String qjs16 = req.getParameter("qjs16");
				String qjs17 = req.getParameter("qjs17");
				String qjs18 = req.getParameter("qjs18");
				String qjs19 = req.getParameter("qjs19");
				String qjs20 = req.getParameter("qjs20");
				
				
				
				
				
				//占쏙옙占쏙옙占쏙옙호, 占쏙옙占쏙옙占쏙옙占싱듸옙,占쏙옙占시놂옙짜, 占싻삼옙占쏙옙
				vo3.setProb_id(prob_id1);
				vo3.setUser_id(user_id);
				vo3.setDate_gaze(todayDate);
				vo3.setStu_result(qjs1);
				vo3.setTest_id(test_id);
				
				service6.tcreate(vo3);
				
				vo3.setProb_id(prob_id2);
				vo3.setUser_id(user_id);
				vo3.setDate_gaze(todayDate);
				vo3.setStu_result(qjs2);
				vo3.setTest_id(test_id);
				
				service6.tcreate(vo3);
				
				vo3.setProb_id(prob_id3);
				vo3.setUser_id(user_id);
				vo3.setDate_gaze(todayDate);
				vo3.setStu_result(qjs3);
				vo3.setTest_id(test_id);

				service6.tcreate(vo3);
				
				vo3.setProb_id(prob_id4);
				vo3.setUser_id(user_id);
				vo3.setDate_gaze(todayDate);
				vo3.setStu_result(qjs4);
				vo3.setTest_id(test_id);
				
				service6.tcreate(vo3);
				
				vo3.setProb_id(prob_id5);
				vo3.setUser_id(user_id);
				vo3.setDate_gaze(todayDate);
				vo3.setStu_result(qjs5);
				vo3.setTest_id(test_id);
				
				service6.tcreate(vo3);
				
				vo3.setProb_id(prob_id6);
				vo3.setUser_id(user_id);
				vo3.setDate_gaze(todayDate);
				vo3.setStu_result(qjs6);
				vo3.setTest_id(test_id);
				
				service6.tcreate(vo3);
				
				vo3.setProb_id(prob_id7);
				vo3.setUser_id(user_id);
				vo3.setDate_gaze(todayDate);
				vo3.setStu_result(qjs7);
				vo3.setTest_id(test_id);
				
				service6.tcreate(vo3);
				
				vo3.setProb_id(prob_id8);
				vo3.setUser_id(user_id);
				vo3.setDate_gaze(todayDate);
				vo3.setStu_result(qjs8);
				vo3.setTest_id(test_id);
				
				service6.tcreate(vo3);
				
				vo3.setProb_id(prob_id9);
				vo3.setUser_id(user_id);
				vo3.setDate_gaze(todayDate);
				vo3.setStu_result(qjs9);
				vo3.setTest_id(test_id);
				
				service6.tcreate(vo3);
				
				vo3.setProb_id(prob_id10);
				vo3.setUser_id(user_id);
				vo3.setDate_gaze(todayDate);
				vo3.setStu_result(qjs10);
				vo3.setTest_id(test_id);
				
				service6.tcreate(vo3);
				
				vo3.setProb_id(prob_id11);
				vo3.setUser_id(user_id);
				vo3.setDate_gaze(todayDate);
				vo3.setStu_result(qjs11);
				vo3.setTest_id(test_id);
				
				service6.tcreate(vo3);
				
				vo3.setProb_id(prob_id12);
				vo3.setUser_id(user_id);
				vo3.setDate_gaze(todayDate);
				vo3.setStu_result(qjs12);
				vo3.setTest_id(test_id);
				
				service6.tcreate(vo3);
				
				vo3.setProb_id(prob_id13);
				vo3.setUser_id(user_id);
				vo3.setDate_gaze(todayDate);
				vo3.setStu_result(qjs13);
				vo3.setTest_id(test_id);
				
				service6.tcreate(vo3);
				
				vo3.setProb_id(prob_id14);
				vo3.setUser_id(user_id);
				vo3.setDate_gaze(todayDate);
				vo3.setStu_result(qjs14);
				vo3.setTest_id(test_id);
				
				service6.tcreate(vo3);
				
				vo3.setProb_id(prob_id15);
				vo3.setUser_id(user_id);
				vo3.setDate_gaze(todayDate);
				vo3.setStu_result(qjs15);
				vo3.setTest_id(test_id);
				
				service6.tcreate(vo3);
				
				vo3.setProb_id(prob_id16);
				vo3.setUser_id(user_id);
				vo3.setDate_gaze(todayDate);
				vo3.setStu_result(qjs16);
				vo3.setTest_id(test_id);
				
				service6.tcreate(vo3);
 				
				vo3.setProb_id(prob_id17);
				vo3.setUser_id(user_id);
				vo3.setDate_gaze(todayDate);
				vo3.setStu_result(qjs17);
				vo3.setTest_id(test_id);
				
				service6.tcreate(vo3);
				
				vo3.setProb_id(prob_id18);
				vo3.setUser_id(user_id);
				vo3.setDate_gaze(todayDate);
				vo3.setStu_result(qjs18);
				vo3.setTest_id(test_id);
				
				service6.tcreate(vo3);
				
				vo3.setProb_id(prob_id19);
				vo3.setUser_id(user_id);
				vo3.setDate_gaze(todayDate);
				vo3.setStu_result(qjs19);
				vo3.setTest_id(test_id);
				
				service6.tcreate(vo3);
				
				vo3.setProb_id(prob_id20);
				vo3.setUser_id(user_id);
				vo3.setDate_gaze(todayDate);
				vo3.setStu_result(qjs20);
				vo3.setTest_id(test_id);
				
				service6.tcreate(vo3);
				
				vo4.setTest_id(test_id);
				vo4.setUser_id(user_id);
				vo4.setTest_state("clear");
				service8.test_state_up(vo4);
				
		}
		
		@RequestMapping(value = "classWrongAnswerNote", method = {RequestMethod.GET, RequestMethod.POST})
		public void classWrongAnswerNote(HttpServletRequest req,Model model) throws Exception {
			String test_id = req.getParameter("test_id");
			model.addAttribute("test_id",test_id);
			List<test_InfoVO> listtest = service4.testImage(test_id);
			
			model.addAttribute("listtest1", listtest);
			
			String prob_id1 = test_id + "01";
			String prob_id2 = test_id + "02";
			String prob_id3 = test_id + "03";
			String prob_id4 = test_id + "04";
			String prob_id5 = test_id + "05";
			String prob_id6 = test_id + "06";
			String prob_id7 = test_id + "07";
			String prob_id8 = test_id + "08";
			String prob_id9 = test_id + "09";
			String prob_id10 = test_id + "10";
			String prob_id11 = test_id + "11";
			String prob_id12 = test_id + "12";
			String prob_id13 = test_id + "13";
			String prob_id14 = test_id + "14";
			String prob_id15 = test_id + "15";
			String prob_id16 = test_id + "16";
			String prob_id17 = test_id + "17";
			String prob_id18 = test_id + "18";
			String prob_id19 = test_id + "19";
			String prob_id20 = test_id + "20";
			
			String probid1 = service6.stu_answ(prob_id1);
			String probid2 = service6.stu_answ(prob_id2);
			String probid3 = service6.stu_answ(prob_id3);
			String probid4 = service6.stu_answ(prob_id4);
			String probid5 = service6.stu_answ(prob_id5);
			String probid6 = service6.stu_answ(prob_id6);
			String probid7 = service6.stu_answ(prob_id7);
			String probid8 = service6.stu_answ(prob_id8);
			String probid9 = service6.stu_answ(prob_id9);
			String probid10 = service6.stu_answ(prob_id10);
			String probid11 = service6.stu_answ(prob_id11);
			String probid12 = service6.stu_answ(prob_id12);
			String probid13 = service6.stu_answ(prob_id13);
			String probid14 = service6.stu_answ(prob_id14);
			String probid15 = service6.stu_answ(prob_id15);
			String probid16 = service6.stu_answ(prob_id16);
			String probid17 = service6.stu_answ(prob_id17);
			String probid18 = service6.stu_answ(prob_id18);
			String probid19 = service6.stu_answ(prob_id19);
			String probid20 = service6.stu_answ(prob_id20);
			
			model.addAttribute("probid1",probid1);
			model.addAttribute("probid2",probid2);
			model.addAttribute("probid3",probid3);
			model.addAttribute("probid4",probid4);
			model.addAttribute("probid5",probid5);
			model.addAttribute("probid6",probid6);
			model.addAttribute("probid7",probid7);
			model.addAttribute("probid8",probid8);
			model.addAttribute("probid9",probid9);
			model.addAttribute("probid10",probid10);
			model.addAttribute("probid11",probid11);
			model.addAttribute("probid12",probid12);
			model.addAttribute("probid13",probid13);
			model.addAttribute("probid14",probid14);
			model.addAttribute("probid15",probid15);
			model.addAttribute("probid16",probid16);
			model.addAttribute("probid17",probid17);
			model.addAttribute("probid18",probid18);
			model.addAttribute("probid19",probid19);
			model.addAttribute("probid20",probid20);
			
			String user_id = req.getParameter("user_id");
			
			test_resultVO correctAnswercount = new test_resultVO();
			correctAnswercount.setTest_id(test_id);
			
	
			
			correctAnswercount.setUser_id(user_id);

			int correctcount = service6.correctAnswercount(correctAnswercount);
			
			model.addAttribute("correctcount", correctcount);
			
			String prob_answ1 = service5.correctAnsw(prob_id1);
			String prob_answ2 = service5.correctAnsw(prob_id2);
			String prob_answ3 = service5.correctAnsw(prob_id3);
			String prob_answ4 = service5.correctAnsw(prob_id4);
			String prob_answ5 = service5.correctAnsw(prob_id5);
			String prob_answ6 = service5.correctAnsw(prob_id6);
			String prob_answ7 = service5.correctAnsw(prob_id7);
			String prob_answ8 = service5.correctAnsw(prob_id8);
			String prob_answ9 = service5.correctAnsw(prob_id9);
			String prob_answ10 = service5.correctAnsw(prob_id10);
			String prob_answ11 = service5.correctAnsw(prob_id11);
			String prob_answ12 = service5.correctAnsw(prob_id12);
			String prob_answ13 = service5.correctAnsw(prob_id13);
			String prob_answ14 = service5.correctAnsw(prob_id14);
			String prob_answ15 = service5.correctAnsw(prob_id15);
			String prob_answ16 = service5.correctAnsw(prob_id16);
			String prob_answ17 = service5.correctAnsw(prob_id17);
			String prob_answ18 = service5.correctAnsw(prob_id18);
			String prob_answ19 = service5.correctAnsw(prob_id19);
			String prob_answ20 = service5.correctAnsw(prob_id20);
			
			
			model.addAttribute("prob_answ1",prob_answ1);
			model.addAttribute("prob_answ2",prob_answ2);
			model.addAttribute("prob_answ3",prob_answ3);
			model.addAttribute("prob_answ4",prob_answ4);
			model.addAttribute("prob_answ5",prob_answ5);
			model.addAttribute("prob_answ6",prob_answ6);
			model.addAttribute("prob_answ7",prob_answ7);
			model.addAttribute("prob_answ8",prob_answ8);
			model.addAttribute("prob_answ9",prob_answ9);
			model.addAttribute("prob_answ10",prob_answ10);
			model.addAttribute("prob_answ11",prob_answ11);
			model.addAttribute("prob_answ12",prob_answ12);
			model.addAttribute("prob_answ13",prob_answ13);
			model.addAttribute("prob_answ14",prob_answ14);
			model.addAttribute("prob_answ15",prob_answ15);
			model.addAttribute("prob_answ16",prob_answ16);
			model.addAttribute("prob_answ17",prob_answ17);
			model.addAttribute("prob_answ18",prob_answ18);
			model.addAttribute("prob_answ19",prob_answ19);
			model.addAttribute("prob_answ20",prob_answ20);
			
			
			test_resultVO WrongNote1 = new test_resultVO();
			test_resultVO WrongNote2 = new test_resultVO();
			test_resultVO WrongNote3 = new test_resultVO();
			test_resultVO WrongNote4 = new test_resultVO();
			test_resultVO WrongNote5 = new test_resultVO();
			test_resultVO WrongNote6 = new test_resultVO();
			test_resultVO WrongNote7 = new test_resultVO();
			test_resultVO WrongNote8 = new test_resultVO();
			test_resultVO WrongNote9 = new test_resultVO();
			test_resultVO WrongNote10 = new test_resultVO();
			test_resultVO WrongNote11 = new test_resultVO();
			test_resultVO WrongNote12 = new test_resultVO();
			test_resultVO WrongNote13 = new test_resultVO();
			test_resultVO WrongNote14 = new test_resultVO();
			test_resultVO WrongNote15 = new test_resultVO();
			test_resultVO WrongNote16 = new test_resultVO();
			test_resultVO WrongNote17 = new test_resultVO();
			test_resultVO WrongNote18 = new test_resultVO();
			test_resultVO WrongNote19 = new test_resultVO();
			test_resultVO WrongNote20 = new test_resultVO();

			
			
			WrongNote1.setProb_id(prob_id1);
			WrongNote1.setUser_id(user_id);
			
			WrongNote2.setProb_id(prob_id2);
			WrongNote2.setUser_id(user_id);
			
			WrongNote3.setProb_id(prob_id3);
			WrongNote3.setUser_id(user_id);
			
			WrongNote4.setProb_id(prob_id4);
			WrongNote4.setUser_id(user_id);
			
			WrongNote5.setProb_id(prob_id5);
			WrongNote5.setUser_id(user_id);
			
			WrongNote6.setProb_id(prob_id6);
			WrongNote6.setUser_id(user_id);
			
			WrongNote7.setProb_id(prob_id7);
			WrongNote7.setUser_id(user_id);
			
			WrongNote8.setProb_id(prob_id8);
			WrongNote8.setUser_id(user_id);
			
			WrongNote9.setProb_id(prob_id9);
			WrongNote9.setUser_id(user_id);
			
			WrongNote10.setProb_id(prob_id10);
			WrongNote10.setUser_id(user_id);
			
			WrongNote11.setProb_id(prob_id11);
			WrongNote11.setUser_id(user_id);
			
			WrongNote12.setProb_id(prob_id12);
			WrongNote12.setUser_id(user_id);
			
			WrongNote13.setProb_id(prob_id13);
			WrongNote13.setUser_id(user_id);
			
			WrongNote14.setProb_id(prob_id14);
			WrongNote14.setUser_id(user_id);
			
			WrongNote15.setProb_id(prob_id15);
			WrongNote15.setUser_id(user_id);
			
			WrongNote16.setProb_id(prob_id16);
			WrongNote16.setUser_id(user_id);
			
			WrongNote17.setProb_id(prob_id17);
			WrongNote17.setUser_id(user_id);

			WrongNote18.setProb_id(prob_id18);
			WrongNote18.setUser_id(user_id);
			
			WrongNote19.setProb_id(prob_id19);
			WrongNote19.setUser_id(user_id);
			
			WrongNote20.setProb_id(prob_id20);
			WrongNote20.setUser_id(user_id);
					
			String WrongNotes1 = service6.WrongNote(WrongNote1);
			String WrongNotes2 = service6.WrongNote(WrongNote2);
			String WrongNotes3 = service6.WrongNote(WrongNote3);
			String WrongNotes4 = service6.WrongNote(WrongNote4);
			String WrongNotes5 = service6.WrongNote(WrongNote5);
			String WrongNotes6 = service6.WrongNote(WrongNote6);
			String WrongNotes7 = service6.WrongNote(WrongNote7);
			String WrongNotes8 = service6.WrongNote(WrongNote8);
			String WrongNotes9 = service6.WrongNote(WrongNote9);
			String WrongNotes10 = service6.WrongNote(WrongNote10);
			String WrongNotes11 = service6.WrongNote(WrongNote11);
			String WrongNotes12 = service6.WrongNote(WrongNote12);
			String WrongNotes13 = service6.WrongNote(WrongNote13);
			String WrongNotes14 = service6.WrongNote(WrongNote14);
			String WrongNotes15 = service6.WrongNote(WrongNote15);
			String WrongNotes16 = service6.WrongNote(WrongNote16);
			String WrongNotes17 = service6.WrongNote(WrongNote17);
			String WrongNotes18 = service6.WrongNote(WrongNote18);
			String WrongNotes19 = service6.WrongNote(WrongNote19);
			String WrongNotes20 = service6.WrongNote(WrongNote20);
			
			
			model.addAttribute("WrongNotes1",WrongNotes1);
			model.addAttribute("WrongNotes2",WrongNotes2);
			model.addAttribute("WrongNotes3",WrongNotes3);
			model.addAttribute("WrongNotes4",WrongNotes4);
			model.addAttribute("WrongNotes5",WrongNotes5);
			model.addAttribute("WrongNotes6",WrongNotes6);
			model.addAttribute("WrongNotes7",WrongNotes7);
			model.addAttribute("WrongNotes8",WrongNotes8);
			model.addAttribute("WrongNotes9",WrongNotes9);
			model.addAttribute("WrongNotes10",WrongNotes10);
			model.addAttribute("WrongNotes11",WrongNotes11);
			model.addAttribute("WrongNotes12",WrongNotes12);
			model.addAttribute("WrongNotes13",WrongNotes13);
			model.addAttribute("WrongNotes14",WrongNotes14);
			model.addAttribute("WrongNotes15",WrongNotes15);
			model.addAttribute("WrongNotes16",WrongNotes16);
			model.addAttribute("WrongNotes17",WrongNotes17);
			model.addAttribute("WrongNotes18",WrongNotes18);
			model.addAttribute("WrongNotes19",WrongNotes19);
			model.addAttribute("WrongNotes20",WrongNotes20);

			
		}
		
		@ResponseBody
		@RequestMapping(value = "classWrongAnswerNotes", method = RequestMethod.POST)
		public void classWrongAnswerNotes(HttpServletRequest req,Model model) throws Exception {
			
			String test_id = req.getParameter("test_id");
	
			model.addAttribute("test_id",test_id);
			List<test_InfoVO> listtest = service4.testImage(test_id);
			
			model.addAttribute("listtest1", listtest);
			
			String prob_id1 = test_id + "01";
			String prob_id2 = test_id + "02";
			String prob_id3 = test_id + "03";
			String prob_id4 = test_id + "04";
			String prob_id5 = test_id + "05";
			String prob_id6 = test_id + "06";
			String prob_id7 = test_id + "07";
			String prob_id8 = test_id + "08";
			String prob_id9 = test_id + "09";
			String prob_id10 = test_id + "10";
			String prob_id11 = test_id + "11";
			String prob_id12 = test_id + "12";
			String prob_id13 = test_id + "13";
			String prob_id14 = test_id + "14";
			String prob_id15 = test_id + "15";
			String prob_id16 = test_id + "16";
			String prob_id17 = test_id + "17";
			String prob_id18 = test_id + "18";
			String prob_id19 = test_id + "19";
			String prob_id20 = test_id + "20";
			
			String probid1 = service6.stu_answ(prob_id1);
			String probid2 = service6.stu_answ(prob_id2);
			String probid3 = service6.stu_answ(prob_id3);
			String probid4 = service6.stu_answ(prob_id4);
			String probid5 = service6.stu_answ(prob_id5);
			String probid6 = service6.stu_answ(prob_id6);
			String probid7 = service6.stu_answ(prob_id7);
			String probid8 = service6.stu_answ(prob_id8);
			String probid9 = service6.stu_answ(prob_id9);
			String probid10 = service6.stu_answ(prob_id10);
			String probid11 = service6.stu_answ(prob_id11);
			String probid12 = service6.stu_answ(prob_id12);
			String probid13 = service6.stu_answ(prob_id13);
			String probid14 = service6.stu_answ(prob_id14);
			String probid15 = service6.stu_answ(prob_id15);
			String probid16 = service6.stu_answ(prob_id16);
			String probid17 = service6.stu_answ(prob_id17);
			String probid18 = service6.stu_answ(prob_id18);
			String probid19 = service6.stu_answ(prob_id19);
			String probid20 = service6.stu_answ(prob_id20);
			
			model.addAttribute("probid1",probid1);
			model.addAttribute("probid2",probid2);
			model.addAttribute("probid3",probid3);
			model.addAttribute("probid4",probid4);
			model.addAttribute("probid5",probid5);
			model.addAttribute("probid6",probid6);
			model.addAttribute("probid7",probid7);
			model.addAttribute("probid8",probid8);
			model.addAttribute("probid9",probid9);
			model.addAttribute("probid10",probid10);
			model.addAttribute("probid11",probid11);
			model.addAttribute("probid12",probid12);
			model.addAttribute("probid13",probid13);
			model.addAttribute("probid14",probid14);
			model.addAttribute("probid15",probid15);
			model.addAttribute("probid16",probid16);
			model.addAttribute("probid17",probid17);
			model.addAttribute("probid18",probid18);
			model.addAttribute("probid19",probid19);
			model.addAttribute("probid20",probid20);
			
			
			
			/*   file1: $("#file1").val(),
	    	   testnote1: $("test_Note1").val(),*/

			String file1 =	req.getParameter("file1");
			model.addAttribute("file1", file1); 
			
			
			String user_id = req.getParameter("userid");
			
			String testnote1 =req.getParameter("testnote1");
			String testnote2 =req.getParameter("testnote2");
			String testnote3 =req.getParameter("testnote3");
			String testnote4 =req.getParameter("testnote4");
			String testnote5 =req.getParameter("testnote5");
			String testnote6 =req.getParameter("testnote6");
			String testnote7 =req.getParameter("testnote7");
			String testnote8 =req.getParameter("testnote8");
			String testnote9 =req.getParameter("testnote9");
			String testnote10=req.getParameter("testnote10");
			String testnote11=req.getParameter("testnote11");
			String testnote12 =req.getParameter("testnote12");
			String testnote13 =req.getParameter("testnote13");
			String testnote14 =req.getParameter("testnote14");
			String testnote15 =req.getParameter("testnote15");
			String testnote16 =req.getParameter("testnote16");
			String testnote17 =req.getParameter("testnote17");
			String testnote18 =req.getParameter("testnote18");
			String testnote19 =req.getParameter("testnote19");
			String testnote20 =req.getParameter("testnote20");
			
			
			test_resultVO test1 = new test_resultVO();
			test_resultVO test2 = new test_resultVO();
			test_resultVO test3 = new test_resultVO();
			test_resultVO test4 = new test_resultVO();
			test_resultVO test5 = new test_resultVO();
			test_resultVO test6 = new test_resultVO();
			test_resultVO test7 = new test_resultVO();
			test_resultVO test8 = new test_resultVO();
			test_resultVO test9 = new test_resultVO();
			test_resultVO test10= new test_resultVO();
			test_resultVO test11 = new test_resultVO();
			test_resultVO test12 = new test_resultVO();
			test_resultVO test13 = new test_resultVO();
			test_resultVO test14 = new test_resultVO();
			test_resultVO test15 = new test_resultVO();
			test_resultVO test16 = new test_resultVO();
			test_resultVO test17 = new test_resultVO();
			test_resultVO test18 = new test_resultVO();
			test_resultVO test19 = new test_resultVO();
			test_resultVO test20 = new test_resultVO();
			
			
			test1.setProb_id(prob_id1);
			test1.setUser_id(user_id);
			test1.setW_answ_note_cont(testnote1);
			
			if(testnote1!=null){
			service6.w_answ_note_cont(test1);
			}
			test2.setProb_id(prob_id2);
			test2.setUser_id(user_id);
			test2.setW_answ_note_cont(testnote2);
			if(testnote2!=null){
			service6.w_answ_note_cont(test2);
			}
			test3.setProb_id(prob_id3);
			test3.setUser_id(user_id);
			test3.setW_answ_note_cont(testnote3);
			if(testnote3!=null){
			service6.w_answ_note_cont(test3);
			}
			test4.setProb_id(prob_id4);
			test4.setUser_id(user_id);
			test4.setW_answ_note_cont(testnote4);
			if(testnote4!=null){
			service6.w_answ_note_cont(test4);
			}
			
			test5.setProb_id(prob_id5);
			test5.setUser_id(user_id);
			test5.setW_answ_note_cont(testnote5);
			if(testnote5!=null){
			service6.w_answ_note_cont(test5);
			}
			
			test6.setProb_id(prob_id6);
			test6.setUser_id(user_id);
			test6.setW_answ_note_cont(testnote6);
			if(testnote6!=null){
			service6.w_answ_note_cont(test6);
			}
			
			test7.setProb_id(prob_id7);
			test7.setUser_id(user_id);
			test7.setW_answ_note_cont(testnote7);
			if(testnote7!=null){
			service6.w_answ_note_cont(test7);
			}
			
			test8.setProb_id(prob_id8);
			test8.setUser_id(user_id);
			test8.setW_answ_note_cont(testnote8);
			if(testnote8!=null){
			service6.w_answ_note_cont(test8);
			}
			
			test9.setProb_id(prob_id9);
			test9.setUser_id(user_id);
			test9.setW_answ_note_cont(testnote9);
			if(testnote9!=null){
			service6.w_answ_note_cont(test9);
			}
			
			test10.setProb_id(prob_id10);
			test10.setUser_id(user_id);
			test10.setW_answ_note_cont(testnote10);
			if(testnote10!=null){
			service6.w_answ_note_cont(test10);
			}
			
			test11.setProb_id(prob_id11);
			test11.setUser_id(user_id);
			test11.setW_answ_note_cont(testnote11);
			if(testnote11!=null){
			service6.w_answ_note_cont(test11);
			}
			
			test12.setProb_id(prob_id12);
			test12.setUser_id(user_id);
			test12.setW_answ_note_cont(testnote12);
			if(testnote12!=null){
			service6.w_answ_note_cont(test12);
			}
			
			test13.setProb_id(prob_id13);
			test13.setUser_id(user_id);
			test13.setW_answ_note_cont(testnote13);
			if(testnote13!=null){
			service6.w_answ_note_cont(test13);
			}
			
			test14.setProb_id(prob_id14);
			test14.setUser_id(user_id);
			test14.setW_answ_note_cont(testnote14);
			if(testnote2!=null){
			service6.w_answ_note_cont(test14);
			}
			
			test15.setProb_id(prob_id15);
			test15.setUser_id(user_id);
			test15.setW_answ_note_cont(testnote15);
			if(testnote2!=null){
			service6.w_answ_note_cont(test15);
			}
			
			test16.setProb_id(prob_id16);
			test16.setUser_id(user_id);
			test16.setW_answ_note_cont(testnote16);
			if(testnote16!=null){
			service6.w_answ_note_cont(test16);
			}
			
			test17.setProb_id(prob_id17);
			test17.setUser_id(user_id);
			test17.setW_answ_note_cont(testnote17);
			if(testnote17!=null){
			service6.w_answ_note_cont(test17);
			}
			
			test18.setProb_id(prob_id18);
			test18.setUser_id(user_id);
			test18.setW_answ_note_cont(testnote18);
			if(testnote18!=null){
			service6.w_answ_note_cont(test18);
			}
			test19.setProb_id(prob_id19);
			test19.setUser_id(user_id);
			test19.setW_answ_note_cont(testnote19);
			if(testnote19!=null){
			service6.w_answ_note_cont(test19);
			}
			
			test20.setProb_id(prob_id20);
			test20.setUser_id(user_id);
			test20.setW_answ_note_cont(testnote20);
			if(testnote20!=null){
			service6.w_answ_note_cont(test20);
			}
			
			test_resultVO correctAnswercount = new test_resultVO();
			correctAnswercount.setTest_id(test_id);
			
	
			
			correctAnswercount.setUser_id(user_id);

			int correctcount = service6.correctAnswercount(correctAnswercount);
			
			model.addAttribute("correctcount", correctcount);
			
			test_resultVO WrongNote1 = new test_resultVO();
			test_resultVO WrongNote2 = new test_resultVO();
			test_resultVO WrongNote3 = new test_resultVO();
			test_resultVO WrongNote4 = new test_resultVO();
			test_resultVO WrongNote5 = new test_resultVO();
			test_resultVO WrongNote6 = new test_resultVO();
			test_resultVO WrongNote7 = new test_resultVO();
			test_resultVO WrongNote8 = new test_resultVO();
			test_resultVO WrongNote9 = new test_resultVO();
			test_resultVO WrongNote10 = new test_resultVO();
			test_resultVO WrongNote11 = new test_resultVO();
			test_resultVO WrongNote12 = new test_resultVO();
			test_resultVO WrongNote13 = new test_resultVO();
			test_resultVO WrongNote14 = new test_resultVO();
			test_resultVO WrongNote15 = new test_resultVO();
			test_resultVO WrongNote16 = new test_resultVO();
			test_resultVO WrongNote17 = new test_resultVO();
			test_resultVO WrongNote18 = new test_resultVO();
			test_resultVO WrongNote19 = new test_resultVO();
			test_resultVO WrongNote20 = new test_resultVO();

			
			
			WrongNote1.setProb_id(prob_id1);
			WrongNote1.setUser_id(user_id);
			
			WrongNote2.setProb_id(prob_id2);
			WrongNote2.setUser_id(user_id);
			
			WrongNote3.setProb_id(prob_id3);
			WrongNote3.setUser_id(user_id);
			
			WrongNote4.setProb_id(prob_id4);
			WrongNote4.setUser_id(user_id);
			
			WrongNote5.setProb_id(prob_id5);
			WrongNote5.setUser_id(user_id);
			
			WrongNote6.setProb_id(prob_id6);
			WrongNote6.setUser_id(user_id);
			
			WrongNote7.setProb_id(prob_id7);
			WrongNote7.setUser_id(user_id);
			
			WrongNote8.setProb_id(prob_id8);
			WrongNote8.setUser_id(user_id);
			
			WrongNote9.setProb_id(prob_id9);
			WrongNote9.setUser_id(user_id);
			
			WrongNote10.setProb_id(prob_id10);
			WrongNote10.setUser_id(user_id);
			
			WrongNote11.setProb_id(prob_id11);
			WrongNote11.setUser_id(user_id);
			
			WrongNote12.setProb_id(prob_id12);
			WrongNote12.setUser_id(user_id);
			
			WrongNote13.setProb_id(prob_id13);
			WrongNote13.setUser_id(user_id);
			
			WrongNote14.setProb_id(prob_id14);
			WrongNote14.setUser_id(user_id);
			
			WrongNote15.setProb_id(prob_id15);
			WrongNote15.setUser_id(user_id);
			
			WrongNote16.setProb_id(prob_id16);
			WrongNote16.setUser_id(user_id);
			
			WrongNote17.setProb_id(prob_id17);
			WrongNote17.setUser_id(user_id);

			WrongNote18.setProb_id(prob_id18);
			WrongNote18.setUser_id(user_id);
			
			WrongNote19.setProb_id(prob_id19);
			WrongNote19.setUser_id(user_id);
			
			WrongNote20.setProb_id(prob_id20);
			WrongNote20.setUser_id(user_id);
					
			String WrongNotes1 = service6.WrongNote(WrongNote1);
			String WrongNotes2 = service6.WrongNote(WrongNote2);
			String WrongNotes3 = service6.WrongNote(WrongNote3);
			String WrongNotes4 = service6.WrongNote(WrongNote4);
			String WrongNotes5 = service6.WrongNote(WrongNote5);
			String WrongNotes6 = service6.WrongNote(WrongNote6);
			String WrongNotes7 = service6.WrongNote(WrongNote7);
			String WrongNotes8 = service6.WrongNote(WrongNote8);
			String WrongNotes9 = service6.WrongNote(WrongNote9);
			String WrongNotes10 = service6.WrongNote(WrongNote10);
			String WrongNotes11 = service6.WrongNote(WrongNote11);
			String WrongNotes12 = service6.WrongNote(WrongNote12);
			String WrongNotes13 = service6.WrongNote(WrongNote13);
			String WrongNotes14 = service6.WrongNote(WrongNote14);
			String WrongNotes15 = service6.WrongNote(WrongNote15);
			String WrongNotes16 = service6.WrongNote(WrongNote16);
			String WrongNotes17 = service6.WrongNote(WrongNote17);
			String WrongNotes18 = service6.WrongNote(WrongNote18);
			String WrongNotes19 = service6.WrongNote(WrongNote19);
			String WrongNotes20 = service6.WrongNote(WrongNote20);
			
			
			model.addAttribute("WrongNotes1",WrongNotes1);
			model.addAttribute("WrongNotes2",WrongNotes2);
			model.addAttribute("WrongNotes3",WrongNotes3);
			model.addAttribute("WrongNotes4",WrongNotes4);
			model.addAttribute("WrongNotes5",WrongNotes5);
			model.addAttribute("WrongNotes6",WrongNotes6);
			model.addAttribute("WrongNotes7",WrongNotes7);
			model.addAttribute("WrongNotes8",WrongNotes8);
			model.addAttribute("WrongNotes9",WrongNotes9);
			model.addAttribute("WrongNotes10",WrongNotes10);
			model.addAttribute("WrongNotes11",WrongNotes11);
			model.addAttribute("WrongNotes12",WrongNotes12);
			model.addAttribute("WrongNotes13",WrongNotes13);
			model.addAttribute("WrongNotes14",WrongNotes14);
			model.addAttribute("WrongNotes15",WrongNotes15);
			model.addAttribute("WrongNotes16",WrongNotes16);
			model.addAttribute("WrongNotes17",WrongNotes17);
			model.addAttribute("WrongNotes18",WrongNotes18);
			model.addAttribute("WrongNotes19",WrongNotes19);
			model.addAttribute("WrongNotes20",WrongNotes20);

		
		}
		
		@RequestMapping(value="classSTManagementList", method= RequestMethod.GET)
		public String classSTManagementList(@RequestParam("ext_id") String ext_id,Model model) throws Exception
		{
			
			List<User_InfoVO> info = myPageService.getUserInfo(ext_id);
			model.addAttribute("ext_id",ext_id);
			model.addAttribute("info",info);
			return "classSTManagementList";
		}
		
		@RequestMapping(value = "classSTManagement", method = RequestMethod.GET)
	      public void classSTManagement(@RequestParam("ext_id") String ext_id,@RequestParam("user_id") String user_id,Model model,HttpSession session) throws Exception {
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
	         
	        List<HashMap> ListWeeksCorrect = service6.ListWeeksCorrect(userid,ext_id);
	        

	        session.setAttribute("ListWeeksCorrect", ListWeeksCorrect);
	         
	      }
	     
	      @RequestMapping(value = "classSTManagementAjax", method = RequestMethod.POST)
	      @ResponseBody
	      public List<test_resultVO> classSTManagementAjax(HttpServletRequest req,Model model,HttpSession session) throws Exception {
	         String userid =req.getParameter("user_id");
	         String ext_id = req.getParameter("ext_id");
	         
	         System.out.println(userid +"//"+ext_id);
	       
	         User_InfoVO listProfile = new User_InfoVO();
	         listProfile = service.profile(userid);
	         
	         model.addAttribute("listProfile",listProfile);
	         
	         List<test_resultVO> weekCorrectAnsw = service6.weekCorrectAnsw(userid,ext_id);
	         
	         System.out.println("占싱거는뱄옙占쏙옙:"+weekCorrectAnsw);
	         
	         return weekCorrectAnsw;
	      }
		  	@RequestMapping(value = "classDeval", method = RequestMethod.GET)
			public void classDeval(HttpServletRequest req, Model model) throws Exception {
		  		String user_id =req.getParameter("user_id");
		  		String ext_id = req.getParameter("ext_id");
		  		
		  		model.addAttribute("user_id",user_id);
		  		model.addAttribute("ext_id",ext_id);
		  		
		  		List<String> jindanResiNot = service9.jindanResiNot(ext_id);
		  		model.addAttribute("jindanResiNot",jindanResiNot);
		  		
		  	}

		  	@RequestMapping(value = "classDeval", method = RequestMethod.POST)
			public void classDeval(HttpServletRequest req, Model model, HttpSession session) throws Exception {
		  		String user_id =req.getParameter("user_id");
		  		String ext_id = req.getParameter("ext_id");
		  		
		  		model.addAttribute("user_id",user_id);
		  		model.addAttribute("ext_id",ext_id);
		  		
		  		int length = req.getParameterValues("title").length;
		  		System.out.println(length);
		  		
		  		String[] title = new String[length];
		  		String[] eval_code = new String[length];
		  		jindan_evalVO[] jindan = new jindan_evalVO[length];
		  		
		  		for(int i=0; i<length; i++){
		  			jindan[i] = new jindan_evalVO();
		  			eval_code[i] = new String();
		  			title[i] = new String();
		  			
		  			eval_code[i] = "e"+ext_id+(i+1); 
		  			title[i]=req.getParameterValues("title")[i];
		  			
		  	  		jindan[i].setExt_id(ext_id);
			  		jindan[i].setEval_code(eval_code[i]);
			  		jindan[i].setEval_content(title[i]);

			  		service9.createEval(jindan[i]);
			  		
		  		}
		  		

		  	
		  		List<String> jindanResiNot = service9.jindanResiNot(ext_id);
		  		model.addAttribute("jindanResiNot",jindanResiNot);
				
		  	}
		      
		  	@RequestMapping(value = "/devalResi", method = RequestMethod.GET)
			public void devalResi(Model model, HttpSession session,HttpServletRequest req) throws Exception {
				
				String user_id =req.getParameter("user_id");
		  		String ext_id = req.getParameter("ext_id");
		  		
		  		model.addAttribute("user_id",user_id);
		  		model.addAttribute("ext_id",ext_id);
		  		
		  		
			}
		  	
		  	@RequestMapping(value = "/jindanStart", method = RequestMethod.GET)
			public void jindanStart(Model model, HttpSession session,HttpServletRequest req) throws Exception {
				
				String user_id =req.getParameter("user_id");
		  		String ext_id = req.getParameter("ext_id");
		  		
		  		model.addAttribute("user_id",user_id);
		  		model.addAttribute("ext_id",ext_id);
		  		
		  		List<String> jindancont = service9.jindanContent(ext_id);
		  		model.addAttribute("jindancont",jindancont);
		  		
		  		int count = jindancont.size();
		  		model.addAttribute("count",count);
		  	}
		      
		  	
		  	@RequestMapping(value = "/classDevalfinish", method = RequestMethod.POST)
			public void classDevalfinish(Model model, HttpSession session,HttpServletRequest req) throws Exception {
				
				String user_id =req.getParameter("user_id");
		  		String ext_id = req.getParameter("ext_id");
		  		
		  		model.addAttribute("user_id",user_id);
		  		model.addAttribute("ext_id",ext_id);
		
		  		int count = Integer.parseInt(req.getParameter("count"));
		  		
		  		jindan_resultVO[] intojindan = new jindan_resultVO[count];
		  		String[] jindan = new String[count];
		  		String[] eval_code = new String[count];
		  		for(int i=0; i<count; i++){
		  			intojindan[i] = new jindan_resultVO();
		  			intojindan[i].setExt_id(ext_id);
		  			intojindan[i].setUser_id(user_id);
		  			jindan[i] = new String();
		  			jindan[i] = req.getParameter("chk_info"+i);
		  			intojindan[i].setJindan_result(jindan[i]);
		  			eval_code[i] = new String();
		  			eval_code[i] = "e"+ext_id+(i+1); 
		  			intojindan[i].setEval_code(eval_code[i]);
		  			
		  			service10.createResult(intojindan[i]);
		  		}
		  		
		  
		  	}
}
