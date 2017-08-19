package yjc.wdb.Highlighter;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.collections.SynchronizedStack;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import yjc.wdb.Highlighter.domain.Diag_EvalVO;
import yjc.wdb.Highlighter.domain.Ext_InfoVO;
import yjc.wdb.Highlighter.domain.PageMaker;
import yjc.wdb.Highlighter.domain.user_SearchLogVO;
import yjc.wdb.Highlighter.service.MatchingService;
import yjc.wdb.Highlighter.service.MatchingServiceImpl;

@Controller
public class MatchingController {
	private static final Logger logger =
			LoggerFactory.getLogger(MatchingController.class);
	
	@Inject
	private MatchingService matchingService;
	
	@RequestMapping(value = "/matchingPage", method = RequestMethod.GET)
	public void matchingPage(HttpSession session, Model model)throws Exception{
		String user_id = String.valueOf(session.getAttribute("id"));
		//System.out.println(user_id);
		String user_grade = String.valueOf(session.getAttribute("user_grade"));
		//System.out.println(user_grade);
		if(user_grade.equals("student")){
			List<HashMap> studentTimetable = matchingService.studentTimetable(user_id);
			//System.out.println(studentTimetable);
			
			if(!(studentTimetable.isEmpty())) {
				
				List<String> removeTimetable = compareTimetable(studentTimetable);
				//System.out.println(removeTimetable);
				
				if(!(removeTimetable.isEmpty())) {
					
					List<HashMap<String, String>> removedList = matchingService.removedList(removeTimetable);  //유저에게 필요없는 정보 제외한 결과
										
					List<user_SearchLogVO> userSearchLog = matchingService.userSearchLog(user_id); //유저 검색 기록
	
					if(!(userSearchLog.isEmpty())) {
						List<HashMap<String,String>> weightScore = compareSearchLog(removedList, userSearchLog); //유저 검색 기록에 따라 가중치 부여
						
						/*
						for(HashMap z : weightScore) {
							System.out.println(z.get("ext_id")+":"+z.get("score"));
						}
						*/
						List<HashMap<String, String>> sortScore = sortScore(weightScore); //점수 순대로 정렬
//						for(HashMap k : sortScore) {
//							System.out.println(k.get("ext_id")+":"+k.get("score"));
//						}
						
						List<HashMap<String, String>> userExtLog = compareExtLog(sortScore, user_id);
//						for(HashMap k : userExtLog) {
//							System.out.println(k.get("ext_id")+":"+k.get("score"));
//						}
//						System.out.println("-------------------------------------------------");
						List<HashMap<String,String>> sortUserExtLog = sortScore(userExtLog);
						for(HashMap s : sortUserExtLog) {
							//System.out.println(s.get("ext_id")+":"+s.get("score")+":"+s.get("mark"));
							if(s.get("mark") != null) {
								int score = Integer.parseInt(String.valueOf(s.get("score")))+10;
								s.put("score", score);
							}
							//System.out.println(s.get("ext_id")+":"+s.get("score")+","+s.get("extCount"));
							
						}
						List<HashMap<String, String>> result = sortScore(sortUserExtLog);
						Collections.reverse(result);
						int count = 0;
						List<HashMap<String, String>> fitMatching = new ArrayList();
						for(HashMap kk : result) {
							//System.out.println(kk.get("ext_id")+":"+kk.get("score"));
							if(count >= 4) {
								break;
							}
							fitMatching.add(kk);
							count++;
						}
						model.addAttribute("fitMatching", fitMatching);
						//System.out.println(fitMatching);
					}
					
				
				}
//				else {
//					List<user_SearchLogVO> userSearchLog = matchingService.userSearchLog(user_id); //유저 검색 기록
//					if(!(userSearchLog.isEmpty())) {
//						List<HashMap> weightScore = compareSearchLog(removedList, userSearchLog); //유저 검색 기록에 따라 가중치 부여
//					}
//				}
			}
//			List<HashMap> privateTimetable = matchingService.privateTimetable();
//			System.out.println(privateTimetable);
			
			
		}
		
	}
	
	/* ------------------------------------유저에게 필요 없는 정보 제외 -----------------------------------*/
	public List<String> compareTimetable(List<HashMap> studentTimetable)throws Exception{

		//System.out.println("학생:"+studentTimetable);
		List<HashMap> privateTimetable = matchingService.privateTimetable();
		//System.out.println("강사:"+privateTimetable);
		
		//List<HashMap<String, String>> removeTimetable = new ArrayList<HashMap<String,String>>();
		List<String> removeTimetable = new ArrayList<String>();

		for(HashMap i : privateTimetable) {
			
			Loof1 : for(HashMap j : studentTimetable) {
				String stuDay_weeks = String.valueOf(j.get("day_weeks")); //학생 시간표 : 요일
				String priDay_weeks = String.valueOf(i.get("day_weeks"));  //과외 LIST 시간표 : 요일
			
				if(stuDay_weeks.equals(priDay_weeks)){
					String priClass_str_time = String.valueOf(i.get("class_str_time"));
					String priClass_end_time = String.valueOf(i.get("class_end_time"));
					String[] stuClass_str_time = String.valueOf(j.get("class_str_time")).split(",");
					String[] stuClass_end_time = String.valueOf(j.get("class_end_time")).split(",");
					
					int min_time = 0;
					int max_time = 0;
					min_time = Integer.parseInt(stuClass_str_time[0]);
					for(int k = 1; k < stuClass_str_time.length; k++) {
						
						if(min_time >  Integer.parseInt(stuClass_str_time[k])) {
							min_time = Integer.parseInt(stuClass_str_time[k]);
						} 
					}
					max_time = Integer.parseInt(stuClass_end_time[0]);
					for(int z = 1; z < stuClass_end_time.length; z++) {
						
						if(max_time < Integer.parseInt(stuClass_end_time[z])) {
							max_time = Integer.parseInt(stuClass_end_time[z]);
						} 
					}
					//System.out.println(priDay_weeks+min_time+":"+max_time);
					
					for(int k2 = min_time; k2 <= max_time; k2++) {
						for(int k3 = Integer.parseInt(priClass_str_time); k3 <= Integer.parseInt(priClass_end_time); k3++) {
							if(k2 == k3) {
								String ext_id = String.valueOf(i.get("ext_id"));
								//HashMap<String, String> a = new HashMap<String, String>();
								//a.put("ext_id", ext_id);
								removeTimetable.add(ext_id);
								break Loof1;
							}
						}
					}
				}
			}
		
		}
		//System.out.println(removeTimetable.toString());
		//System.out.println(removeTimetable.size());	
		
		return removeTimetable;
	}
	
	/* ------------------------------------ 유저 검색 기록에 따라 가중치 부여  -----------------------------------*/
	public List<HashMap<String,String>> compareSearchLog(List<HashMap<String,String>> removedList, List<user_SearchLogVO> userSearchLog)throws Exception{
		for(HashMap j : removedList) {
			String ext_id = String.valueOf(j.get("ext_id"));
			int score = 0;
			String[] class_poss_area = (String.valueOf(j.get("class_poss_area"))).split(",");
			
			for(user_SearchLogVO k : userSearchLog) {
				if(ext_id.substring(0,1).equals(k.getOnoff())) {
					//System.out.println(ext_id.substring(0,1)+","+k.getOnoff()+"온/오프라인");
					score++;
				}
				if(ext_id.substring(1,2).equals(k.getPg())) {
					//System.out.println(ext_id.substring(1,2)+","+k.getPg()+"개인/그룹");
					score++;
				}
				if(ext_id.substring(2,4).equals(k.getSubject())) {
					//System.out.println(ext_id.substring(2,4)+","+k.getSubject()+"과목");
					score++;
				}
				if(class_poss_area.length == 2) {
					String[] class_poss_area2 = class_poss_area[0].split("/");
					String area = class_poss_area2[0]+class_poss_area2[1];
					String[] class_poss_area3 = class_poss_area[1].split("/");
					String area2 = class_poss_area3[0]+class_poss_area3[1];
					if(area.equals(k.getLocation1()) || area.equals(k.getLocation2())) {
						score++;
					}
					if(area2.equals(k.getLocation1()) || area2.equals(k.getLocation2())) {
						score++;
					}
				}
				if(class_poss_area.length == 1) {
					String[] class_poss_area4 = (String.valueOf(j.get("class_poss_area"))).split("/");
					if(class_poss_area4.length == 2) {
						String area3 = class_poss_area4[0]+class_poss_area4[1];
//						System.out.println(area3);
						if(area3.equals(k.getLocation1()) || area3.equals(k.getLocation2())) {
							score++;
						}
					}
					
				}
				
				String college = String.valueOf(j.get("college"));
				String college2 = String.valueOf(k.getCollege());
				
				if((!(college.equals(""))) && (!(college2.equals("")))){ // college �� �޾ƿ� 
					if ((college.replaceAll("\\p{Z}","") ).matches(".*"+(college2.replaceAll("\\p{Z}", ""))+".*")){
						//System.out.println("와싿"+k.getCollege()+","+j.get("college"));
						score++;
					}
					else {
						//System.out.println("왜왜왜"+k.getCollege()+","+j.get("college"));
					}
				}
				
				String tuit_fees = String.valueOf(j.get("tuit_fees"));
				int tuit_fees2 = Integer.parseInt(tuit_fees);
				
				String str_tuit_fees = String.valueOf(k.getStr_tuit_fees());
				int str_tuit_fees2 = Integer.parseInt(str_tuit_fees);
				
				String end_tuit_fees = String.valueOf(k.getEnd_tuit_fees());
				int end_tuit_fees2 = Integer.parseInt(end_tuit_fees);
				
				if(tuit_fees2 != 0) {
					if(end_tuit_fees2 != 0) {
						if((str_tuit_fees2 <= tuit_fees2) && (tuit_fees2 <= end_tuit_fees2)) {
							//System.out.println(str_tuit_fees2+"~"+tuit_fees2+"~"+end_tuit_fees2);
							score++;
						}
					}
				}
				
				String ext_obj = String.valueOf(j.get("ext_obj"));
				String ext_obj2 = k.getExt_obj();
				
				if(ext_obj.equals(ext_obj2)) {
					//System.out.println(ext_obj+","+ext_obj2);
					score++;
				}
				
				if(k.getCarrer_yn().equals("on")) {
					int carrerCount = matchingService.carrerYN(ext_id);
					
					if(carrerCount != 0) {
						//System.out.println("자격증 갯수:"+carrerCount);
						score++;
					}
				}

				//System.out.println(ext_id+":"+j.get("ext_exp"));
				
				if(k.getExt_exp() != null) {
					if(j.get("ext_exp") != null) {
						score++;
					}
				}
				
				if(!(k.getGender().equals("n"))) {
					if(k.getGender().equals(j.get("gender"))) {
						score++;
						//System.out.println(k.getGender()+","+j.get("gender"));
					}
				}
				
				if(!(k.getExt_obj().equals("n"))) {
					if(k.getExt_obj().equals(j.get("ext_obj"))) {
						score++;
						//System.out.println(k.getExt_obj()+","+j.get("ext_obj"));
					}
				}
				
				if(!(k.getClass_lev().equals("n"))) {
					if(k.getClass_lev().equals(j.get("class_lev"))) {
						score++;
						//System.out.println(k.getClass_lev()+","+j.get("class_lev"));
					}
				}
				
			}
			j.put("score", score);
		}
		
		return removedList;
	}
	
	public List<HashMap<String, String>> sortScore(List<HashMap<String,String>> weightScore)throws Exception{
		
		int i=0, j;
	    HashMap tempdata;
	    
	    List<HashMap<String, String>> sortScore = new ArrayList<HashMap<String,String>>();
	    int s = 0;
	    while(true){
	    	int a = Integer.parseInt(String.valueOf(weightScore.get(i).get("score")));
	    	int temp = 0;
	      for (j = 1; j < weightScore.size(); j++) {
	    	int b = Integer.parseInt( String.valueOf(weightScore.get(j).get("score")));
	    	//System.out.println(a+":"+b);
	        if (a > b) {
	        	temp = j;
	        	a = b;
	        }
	      }
	      if(weightScore.size()==1){
	    	  HashMap<String, String> list3 = weightScore.get(temp);
	    	  String list2 = String.valueOf(list3.get("score"));
	    	  if(list2 != "-1"){
	    		  sortScore.add(weightScore.get(0));
	    	  }
	      }
	      if(weightScore.size()!=1){
	    	  HashMap<String, String> list3 = weightScore.get(temp);
	    	  String list2 = String.valueOf(list3.get("score"));
	    	  if(list2 != "-1"){
	    		  sortScore.add(s, weightScore.get(temp));
	    	  }
	      }
	      s++;
	      weightScore.remove(temp);
	      temp = 0;
	      if(weightScore.size()<1){
	    	  break;
	      }
	    }
	    
	    /*
	    System.out.println("----------------------------------------------");
	    int listcount = 0;
	    for (int k = 0; k < sortScore.size(); k++) {
	      System.out.println(sortScore.get(k).get("ext_id")+":"+String.valueOf(sortScore.get(k).get("score")));
	      listcount++;
	    }
	    */
		return sortScore;
	}
	
	public List<HashMap<String,String>> compareExtLog(List<HashMap<String, String>> sortScore, String user_id)throws Exception{
		
		List<Ext_InfoVO> userExtLog = matchingService.userExtLog(user_id);
		
		if(!(userExtLog.isEmpty())) {
			
			for(HashMap j : sortScore) {
				String ext_id = String.valueOf(j.get("ext_id"));
				int score = 0;
				String[] class_poss_area = (String.valueOf(j.get("class_poss_area"))).split(",");
				
				for(Ext_InfoVO k : userExtLog) {
					String[] location = (String.valueOf(k.getClass_poss_area())).split(",");
					
					if(ext_id.substring(0,1).equals((k.getExt_id()).substring(0,1))) {
						//System.out.println(ext_id.substring(0,1)+","+k.getOnoff()+"온/오프라인");
						score+=1;
					}
					if(ext_id.substring(1,2).equals((k.getExt_id()).substring(1,2))) {
						//System.out.println(ext_id.substring(1,2)+","+k.getPg()+"개인/그룹");
						score+=1;
					}
					if(ext_id.substring(2,4).equals((k.getExt_id()).substring(2,4))) {
						//System.out.println(ext_id.substring(2,4)+","+k.getSubject()+"과목");
						score+=1;
					}
					if(class_poss_area.length == 2) {
						String[] class_poss_area2 = class_poss_area[0].split("/");
						String area = class_poss_area2[0]+class_poss_area2[1];
						String[] class_poss_area3 = class_poss_area[1].split("/");
						String area2 = class_poss_area3[0]+class_poss_area3[1];
						
						if(location.length == 2) {
							String[] location2 = location[0].split("/");
							String loc = location2[0]+location2[1];
							String[] location3 = location[1].split("/");
							String loc2 = location3[0]+location3[1];
							
							if(area.equals(loc) || area.equals(loc2)) {
								score+=1;
							}
							if(area2.equals(loc) || area2.equals(loc2)) {
								score+=1;
							}
						}
						
						else {
							String[] location2 = location[0].split("/");
							if(location2.length == 2) {
								String loc = location2[0]+location2[1];
								
								if(area.equals(loc) || area2.equals(loc)) {
									score+=1;
								}
							}
						}
					}
					if(class_poss_area.length == 1) {
						String[] class_poss_area2 = class_poss_area[0].split("/");
						if(class_poss_area2.length == 2) {
							String area = class_poss_area2[0]+class_poss_area2[1];
							
							if(location.length == 2) {
								String[] location2 = location[0].split("/");
								String loc = location2[0]+location2[1];
								String[] location3 = location[1].split("/");
								String loc2 = location3[0]+location3[1];
								
								if(area.equals(loc) || area.equals(loc2)) {
									score+=1;
								}
							}
							
							else {
								String[] location2 = location[0].split("/");
								if(location2.length == 2) {
									String loc = location2[0]+location2[1];
									
									if(area.equals(loc)) {
										score+=1;
									}
								}
							}
						}
					}
					
					
					String tuit_fees = String.valueOf(j.get("tuit_fees"));
					int tuit_fees2 = Integer.parseInt(tuit_fees);
					
					String tuit_fees3 = String.valueOf(k.getTuit_fees());
					int tuit_fees4 = Integer.parseInt(tuit_fees3);
					
					if(tuit_fees2 != 0) {
						if(tuit_fees2 == tuit_fees4) {
							//System.out.println(str_tuit_fees2+"~"+tuit_fees2+"~"+end_tuit_fees2);
							score+=1;
						}
					}
					
					String ext_obj = String.valueOf(j.get("ext_obj"));
					String ext_obj2 = k.getExt_obj();
					
					if(ext_obj.equals(ext_obj2)) {
						//System.out.println(ext_obj+","+ext_obj2);
						score+=1;
					}
								
					if(!(k.getExt_obj().equals("n"))) {
						if(k.getExt_obj().equals(j.get("ext_obj"))) {
							score+=1;
							//System.out.println(k.getExt_obj()+","+j.get("ext_obj"));
						}
					}
					
					if(!(k.getClass_lev().equals("n"))) {
						if(k.getClass_lev().equals(j.get("class_lev"))) {
							score+=1;
							//System.out.println(k.getClass_lev()+","+j.get("class_lev"));
						}
					}
					
				}
				int score2 = Integer.parseInt(String.valueOf(j.get("score")));
				j.put("score", score2+score);
				//System.out.println(j.get("score")+":"+score);
			}
		}
		return sortScore;
	}
	
	public List<HashMap<String,String>> carrerWeight(List<HashMap<String, String>> sortUserExtLog)throws Exception{
		
		return sortUserExtLog;
	}
	
	@RequestMapping(value = "/evalCheck", method = RequestMethod.GET)
	@ResponseBody
	public int evalCheck(HttpSession session)throws Exception{
		String user_grade = String.valueOf(session.getAttribute("user_grade"));
		String user_id = String.valueOf(session.getAttribute("id"));
		
		int evalCheck = matchingService.evalCheck(user_id);
		//System.out.println(evalCheck);
		return evalCheck;
	}
	
	@RequestMapping(value = "/DiagnosticEval", method = RequestMethod.GET)
	public void DiagnosticEval(HttpSession session)throws Exception{
		session.setAttribute("DiagnosticEval", "fail");
	}
	
	@RequestMapping(value = "/DiagnosticEval", method = RequestMethod.POST)
	public String DiagnosticEvalPost(HttpSession session, Diag_EvalVO diag_evalVO)throws Exception{
		
		String user_id = String.valueOf(session.getAttribute("id"));
		int evalCheck = matchingService.evalCheck(user_id);
		
		if(evalCheck == 1){
			matchingService.deleteEval(user_id);
		}
		diag_evalVO.setUser_id(user_id);
		matchingService.registerEval(diag_evalVO);
		
		session.setAttribute("DiagnosticEval", "success");
		
		return "DiagnosticEval";
	}
	
	@RequestMapping(value="diagEvalResult", method = RequestMethod.GET)
	public void diagEvalResult(HttpSession session, Model model)throws Exception{
		String user_id = String.valueOf(session.getAttribute("id"));
		
		Diag_EvalVO selectEval = matchingService.selectEval(user_id); //유저 진단 평가 기록 
		
		String user_grade = String.valueOf(session.getAttribute("user_grade"));
		
		if(user_grade.equals("student")){
			List<HashMap> studentTimetable = matchingService.studentTimetable(user_id);
			//System.out.println(studentTimetable);
			
			if(!(studentTimetable.isEmpty())) {
				
				List<String> removeTimetable = compareTimetable(studentTimetable);
				//System.out.println(removeTimetable);
				
				if(!(removeTimetable.isEmpty())) {
					
					List<HashMap<String, String>> removedList = matchingService.removedList(removeTimetable);  //유저에게 필요없는 정보 제외한 결과
		
						/* 유저 진단 평가 기록 변수 저장 : 쓰기 귀찮으니깡 */
						String onoff = selectEval.getOnoff();
						String pg = selectEval.getStu_count();
						String subject = selectEval.getSubject();
						String location1 = selectEval.getAddr();
						String private_date_time = selectEval.getPrivate_date_time();
						String ext_obj = selectEval.getSchool();
						String gender = selectEval.getGender();
						String ext_way = selectEval.getExt_way();
						String class_count = selectEval.getClass_count();
						String class_time = selectEval.getClass_time();
						String day_week = selectEval.getDay_week();
				
						/* 가중치 부여 */
						for(HashMap i : removedList){
							int add = 0;
							i.put("score", add);
							
							// 온.오프라인
							if(onoff == "무관"){
								if(i.get("onoff").equals(onoff)){
									String cc = i.get("score").toString();
									int c = Integer.parseInt(cc);
									add = c+2;
									i.put("score", add);
								}
							}
							if(onoff != "무관"){
								if(i.get("onoff").equals("1")){
									String cc = i.get("score").toString();
									int c = Integer.parseInt(cc);
									add = c+2;
									i.put("score", add);
								}
								else{
									String cc = i.get("score").toString();
									int c = Integer.parseInt(cc);
									add = c+1;
									i.put("score", add);
								}
							}
							/*System.out.print("<온.오프라인>");
							System.out.print(i.get("score")+"/");*/
							
							// 개인.그룹
							if(pg != "무관"){
								if(i.get("pg").equals(pg)){
									String cc = i.get("score").toString();
									int c = Integer.parseInt(cc);
									add = c+2;
									i.put("score", add);
								}
							}
							if(pg == "무관"){
								if(i.get("pg").equals("1")){
									String cc = i.get("score").toString();
									int c = Integer.parseInt(cc);
									add = c+2;
									i.put("score", add);
								}
								else{
									String cc = i.get("score").toString();
									int c = Integer.parseInt(cc);
									add = c+1;
									i.put("score", add);
								}
							}
							/*System.out.print("<개인.그룹라인>");
							System.out.print(i.get("score")+"/");*/
							
							// 과목
							if(i.get("subject").equals(subject)){
								String cc = i.get("score").toString();
								int c = Integer.parseInt(cc);
								add = c+1;
								i.put("score", add);
							}
							/*System.out.print("<과목라인>");
							System.out.print(i.get("score")+"/");*/
								
							//지역
							if(!(i.get("onoff").equals("1"))){
								if ((i.get("class_poss_area").toString()).matches(".*"+location1+".*")){
									String cc = i.get("score").toString();
									int c = Integer.parseInt(cc);
									add = c+1;
									i.put("score", add);
								}
								/*System.out.print("<지역라인>");
								System.out.print(i.get("score")+"/");*/
							}
							
							//과외 대상
							if (i.get("ext_obj").equals(ext_obj)){
								String cc = i.get("score").toString();
								int c = Integer.parseInt(cc);
								add = c+1;
								i.put("score", add);
							}
							/*System.out.print("<과외 대상>");
							System.out.print(i.get("score")+"/");*/
				
							//성별
							if(gender != "무관"){
								if (i.get("gender").equals(gender)){
									String cc = i.get("score").toString();
									int c = Integer.parseInt(cc);
									add = c+1;
									i.put("score", add);
								}	
							}
							/*System.out.print("<성별>");
							System.out.print(i.get("score")+"/");*/
			
							SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
					        Date str_class_date = df.parse(String.valueOf(i.get("str_class_date")));
					        Date private_date_time2 = df.parse(private_date_time);
					        int str_date = str_class_date.compareTo(private_date_time2);
							if(str_date == 1 || str_date == 0){
								String cc = i.get("score").toString();
								int c = Integer.parseInt(cc);
								add = c+1;
								i.put("score", add);
							}
							else{
								add = -1;
								i.put("score", add);
							}
							/*System.out.print("<과외 시작 시간>");
							System.out.print(i.get("score")+"/");*/
							//System.out.println("");
						}
						
						/*List*/
						List<String> selectTimetable = new ArrayList<String>();
						for(HashMap k : removedList){
							/*System.out.print(k.get("score")+"/");*/
							selectTimetable.add(String.valueOf(k.get("ext_id")));
						}
						
						//System.out.println("하잇:"+selectTimetable);
						List<HashMap<String, String>> evalAfterTimetable = matchingService.evalAfterTimetable(selectTimetable);
						//System.out.println("하잇"+evalAfterTimetable);
						
						for(HashMap k : removedList){
							for(HashMap g : evalAfterTimetable){
								
								String ext_id = String.valueOf(k.get("ext_id"));
								String ext_id2 = String.valueOf(g.get("ext_id"));
								//System.out.println("0번"+ext_id + "/"+ext_id2);
								if(ext_id.equals(ext_id2)){
									//System.out.println("1번");
									String[] week = (String.valueOf(selectEval.getDay_week())).split(",");
									for(int a = 0; a < week.length; a++){
										//System.out.println("2번"+week[a]+"/"+g.get("day_weeks"));
										if(week[a].equals(String.valueOf(g.get("day_weeks")))){
											//System.out.println("3번");
											int class_str_time = Integer.parseInt(String.valueOf(g.get("class_str_time")));
											
											String[] private_time = (String.valueOf(selectEval.getPrivate_time()).split(","));
											for(int b = 0; b < private_time.length; b++){		
												//System.out.println("4번");
												if(private_time[b].equals("아침")){
													//System.out.println("5번");
													if(class_str_time < 9){
														//System.out.println("5번0");
														String getScore = String.valueOf(k.get("score"));
														int getScore1 = Integer.parseInt(getScore);
														//System.out.println(k.get("ext_id")+"/"+getScore);
														getScore1+=10;
														k.put("score", getScore1);
														
													}
												}
												else if(private_time[b].equals("오전")){
													if(9 <= class_str_time && class_str_time < 12){
														//System.out.println("5번1");
														String getScore = String.valueOf(k.get("score"));
														int getScore1 = Integer.parseInt(getScore);
														getScore1+=10;
														//System.out.println(k.get("ext_id")+"/"+getScore);
														k.put("score", getScore1);
													}
												}
												else if(private_time[b] == "이른 오후"){	
													if(12 <= class_str_time && class_str_time < 15){
														//System.out.println("5번2");
														String getScore = String.valueOf(k.get("score"));
														int getScore1 = Integer.parseInt(getScore);
														getScore1+=10;
														//System.out.println(k.get("ext_id")+"/"+getScore);
														k.put("score", getScore1);
													}
												}
												else if(private_time[b].equals("오후")){
													if(15 <= class_str_time && class_str_time < 18){
														//System.out.println("5번3");
														String getScore = String.valueOf(k.get("score"));
														int getScore1 = Integer.parseInt(getScore);
														getScore1+=10;
														//System.out.println(k.get("ext_id")+"/"+getScore);
														k.put("score", getScore1);
													}
												}
												else if(private_time[b].equals("저녁")){
													if(18 <= class_str_time && class_str_time < 21){
														//System.out.println("5번4");
														String getScore = String.valueOf(k.get("score"));
														int getScore1 = Integer.parseInt(getScore);
														getScore1+=10;
														//System.out.println(k.get("ext_id")+"/"+getScore);
														k.put("score", getScore1);
													}
												}
												else{
													if(21 <= class_str_time){
														//System.out.println("5번5");
														String getScore = String.valueOf(k.get("score"));
														int getScore1 = Integer.parseInt(getScore);
														getScore1+=10;
														//System.out.println(k.get("ext_id")+"/"+getScore);
														k.put("score", getScore1);
													}
												}
												
												
											}
										}
									}
								}
							}
						}
						//System.out.println("");
						for(HashMap k : removedList){
							//System.out.print(k.get("score")+"/");
							//selectTimetable.add(String.valueOf(k.get("ext_id")));
						}
						//System.out.println("");
						    int v=0, j;
						    HashMap tempdata;
						    
						    List<HashMap<String, String>> diagEvalList = new ArrayList<HashMap<String,String>>();
						    int s = 0;
						    while(true){
						    	int temp = 0;
						    	int a = Integer.parseInt(String.valueOf(removedList.get(v).get("score")));
						      for (j = 1; j < removedList.size(); j++) {
						    	int b = Integer.parseInt( String.valueOf(removedList.get(j).get("score")));
						        if (a > b) {
						        	temp = j;
						        	a = b;
						        }
						      }
						      if(removedList.size()==1){
						    	  HashMap<String, String> list3 = removedList.get(temp);
						    	  String list2 = String.valueOf(list3.get("score"));
						    	  if(list2 != "-1"){
						    		  diagEvalList.add(removedList.get(0));
						    	  }
						      }
						      if(removedList.size()!=1){
						    	  HashMap<String, String> list3 = removedList.get(temp);
						    	  String list2 = String.valueOf(list3.get("score"));
						    	  if(list2 != "-1"){
						    		  diagEvalList.add(s, removedList.get(temp));
						    	  }
						      }
						      s++;
						      removedList.remove(temp);
						      temp = 0;
						      if(removedList.size()<1){
						    	  break;
						      }
						      if(diagEvalList.size()==6){
						    	  break;
						      }
						    }
						    int listcount = 0;
						    Collections.reverse(diagEvalList);
						    for (int k = 0; k < diagEvalList.size(); k++) {
						      System.out.print(String.valueOf(diagEvalList.get(k).get("score"))+"/");
						      listcount++;
						    }
						    
						model.addAttribute("selectExt",removedList);
						session.setAttribute("diagEvalList",diagEvalList);
						session.setAttribute("listcount", listcount);
				}
			}
		}
	}
}
