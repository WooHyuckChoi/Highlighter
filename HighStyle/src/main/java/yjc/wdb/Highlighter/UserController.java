package yjc.wdb.Highlighter;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import yjc.wdb.Highlighter.domain.App_ClassVO;
import yjc.wdb.Highlighter.domain.EvaVO;
import yjc.wdb.Highlighter.domain.Eva_TeacherVO;
import yjc.wdb.Highlighter.domain.Ext_InfoVO;
import yjc.wdb.Highlighter.domain.Ext_TimetableVO;
import yjc.wdb.Highlighter.domain.PageMaker;
import yjc.wdb.Highlighter.domain.User_InfoVO;
import yjc.wdb.Highlighter.domain.privateSearchCriteria;
import yjc.wdb.Highlighter.service.App_ClassSerivce;
import yjc.wdb.Highlighter.service.CarrerService;
import yjc.wdb.Highlighter.service.EvaService;
import yjc.wdb.Highlighter.service.Eva_TeacherService;
import yjc.wdb.Highlighter.service.Ext_InfoService;
import yjc.wdb.Highlighter.service.User_InfoService;
import yjc.wdb.Highlighter.service.test_InfoService;
import yjc.wdb.bbs.util.uploadReviewFileUtils;

@Controller
public class UserController {
	private static final Logger logger =
			LoggerFactory.getLogger(UserController.class);
	
	@Inject User_InfoService service;
	@Inject Ext_InfoService service2;
	@Inject CarrerService service3;
	@Inject App_ClassSerivce service4;
	@Inject test_InfoService service5;
	//진단평가 때문에 추가 한것
	@Inject EvaService service6;
	@Inject Eva_TeacherService service7;
		
		@RequestMapping(value = "/eva", method = RequestMethod.GET)
		public void evaGET()throws Exception{
			
		}
		@RequestMapping(value = "/eva_finish", method = RequestMethod.POST)
		public void evaPOST(EvaVO board, User_InfoVO eva_board, RedirectAttributes rttr)throws Exception{
			
			service6.regist(board);
			service6.eva_update(eva_board);
		}
		
		@RequestMapping(value = "/eva_read", method = RequestMethod.GET)
		public void eva_readGET(HttpSession session, Model model)throws Exception{
			
			String user_id=(String) session.getAttribute("id");
			model.addAttribute("EvaVO",service6.read(user_id));
		}
		
		@RequestMapping(value = "/eva_modify", method = RequestMethod.GET)
		public void eva_modifyGET()throws Exception{
				
		}
		@RequestMapping(value = "/eva_modify", method = RequestMethod.POST)
		public String eva_modifyPOST(EvaVO board, HttpSession session)throws Exception{
			
			String user_id = (String) session.getAttribute("id");
			board.setUser_id(user_id);
			service6.modify(board);
			
			return "redirect:/eva_read";
		}
		//진단평가 강사용
		@RequestMapping(value = "/eva_teacher", method = RequestMethod.GET)
		public void eva_teacherGET()throws Exception{
			
		}
		
		@RequestMapping(value = "/eva_teacher_finish", method = RequestMethod.POST)
		public void eva_teacherPOST(Eva_TeacherVO board, RedirectAttributes rttr)throws Exception{
			
			service7.regist(board);
		}
		/////////////////////////////////
	
	@Resource(name = "uploadPath")
	private String uploadPath;

	/* ȸ�� ��� �� ȸ�� ���� ���� â  */
	@RequestMapping(value = "/selectRegister", method = RequestMethod.GET)
	public void selectRegister()throws Exception{
	}
	
	/* ���� ȸ�� ���� */
	@RequestMapping(value = "/teacherRegister", method = RequestMethod.GET)
	public void teacherRegisterGET()throws Exception{
		logger.info("teacherRegisterGET..................");
	}
	@RequestMapping(value ="/teacherRegister", method = RequestMethod.POST)
	public String teacherRegisterPOST(User_InfoVO vo, Model model, MultipartFile file)throws Exception{
		logger.info("teacherRegisterPOST..................");
		logger.info(vo.toString());
		
		logger.info("originalName: "+ file.getOriginalFilename());
		logger.info("size: " + file.getSize());
		logger.info("contextType: " + file.getContentType());
		logger.info("server FileName" + file.getName());
		
		String savedName=
				uploadReviewFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes());
		
		model.addAttribute("savedName", savedName);
		
		vo.setProf_photo(savedName);
		
		service.regist(vo);
		model.addAttribute("result", "success");
		
		return "redirect:selectRegister";
	}
	
	/* �л� ȸ�� ���� */
	@RequestMapping(value = "/studentRegister", method = RequestMethod.GET)
	public void studentRegisterGET()throws Exception{
		logger.info("studentRegisterGET..................");
	}
	@RequestMapping(value ="/studentRegister", method = RequestMethod.POST)
	public String studentRegisterPOST(User_InfoVO vo, Model model, MultipartFile file)throws Exception{
		logger.info("studentRegisterPOST..................");
		logger.info(vo.toString());
		
		logger.info("originalName: "+ file.getOriginalFilename());
		logger.info("size: " + file.getSize());
		logger.info("contextType: " + file.getContentType());
		logger.info("server FileName" + file.getName());
		
		String savedName=
				uploadReviewFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes());
		
		model.addAttribute("savedName", savedName);

		vo.setProf_photo(savedName);
		
		service.regist(vo);
		model.addAttribute("result", "success");
		return "redirect:selectRegister";
	}
	
	
	/* �кθ� ȸ�� ���� */
	@RequestMapping(value = "/parentRegister", method = RequestMethod.GET)
	public void parentRegisterGET()throws Exception{
		logger.info("parentRegisterGET..................");
	}
	@RequestMapping(value ="/parentRegister", method = RequestMethod.POST)
	public String parentRegisterPOST(User_InfoVO vo, Model model)throws Exception{
		logger.info("parentRegisterPOST..................");
		logger.info(vo.toString());
		
		service.regist(vo);
		model.addAttribute("result", "success");
		
		return "redirect:selectRegister";
	}
	
	/* ���̵� �ߺ� Ȯ�� */
	@RequestMapping(value = "/checkId")
	public void checkid(HttpServletRequest req, HttpServletResponse res, ModelMap model )throws Exception{
		PrintWriter out = res.getWriter();
		try{
			String paramid = (req.getParameter("id") == null)?"":String.valueOf(req.getParameter("id"));
			
			User_InfoVO vo = new User_InfoVO();
			vo.setUser_id(paramid);
			int result = service.checkID(vo);
			
			out.print(result);
			out.flush();
			out.close();
			}catch(Exception e){
				e.printStackTrace();
			}
	}
	
	/* �α���  */
	@RequestMapping(value="/login")
	public void login(HttpServletRequest req, HttpServletResponse res, HttpSession session)throws Exception{
		PrintWriter out = res.getWriter();
		try{
			String paramid = (req.getParameter("user_id") == null)?"":String.valueOf(req.getParameter("user_id"));
			String parampw = (req.getParameter("user_pw") == null)?"":String.valueOf(req.getParameter("user_pw"));
			User_InfoVO vo = new User_InfoVO();
			vo.setUser_id(paramid);
			vo.setUser_pw(parampw);
			//System.out.println(paramid+parampw);
			int result = service.login(vo);
			//System.out.println(result);
			if(result == 1){
				session.setAttribute("id", paramid);
			}
			User_InfoVO user_info = service.user_grade(paramid);
			session.setAttribute("user_grade", user_info.getUser_grade());
			session.setAttribute("user_name", user_info.getUser_name());
			
			//System.out.println("���:"+session.getAttribute("user_grade"));
			out.print(result);
			out.flush();
			out.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public void logout(HttpSession session)throws Exception{
		session.invalidate();
	}
	
	@RequestMapping(value ="/privateSearch", method = RequestMethod.GET)
	public void privateSearch(@ModelAttribute("cri") privateSearchCriteria cri, Model model, HttpSession session)throws Exception{
		logger.info(cri.toString());
		List<HashMap>list = service2.listAll(cri);
		//System.out.println(list);
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		/*System.out.println(service2.countPage(cri));*/
		pageMaker.setTotalCount(service2.countPage(cri));
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("list",list);
		System.out.println("�߾�"+list);
	}
	@RequestMapping(value ="/privateSearch", method = RequestMethod.POST)
	public void privateSearch2(HttpServletRequest req, @ModelAttribute("cri") privateSearchCriteria cri, Model model, HttpSession session)throws Exception{
		/* �˻� �� */
		String onoff = (req.getParameter("onoff") == null)?"":String.valueOf(req.getParameter("onoff"));
		String pg = (req.getParameter("pg") == null)?"":String.valueOf(req.getParameter("pg"));
		String subject = (req.getParameter("subject") == null)?"":String.valueOf(req.getParameter("subject"));
		String location1 = (req.getParameter("location1") == null)?"":String.valueOf(req.getParameter("location1"));
		String location2 = (req.getParameter("location2") == null)?"":String.valueOf(req.getParameter("location2"));
		String college = (req.getParameter("college") == null)?"":String.valueOf(req.getParameter("college"));
		String str_tuit_fees = (req.getParameter("str_tuit_fees") == null)?"0":String.valueOf(req.getParameter("str_tuit_fees"));
		String end_tuit_fees = (req.getParameter("end_tuit_fees") == null)?"0":String.valueOf(req.getParameter("end_tuit_fees"));
		//int str_tuit_fees = Integer.parseInt(req.getParameter("str_tuit_fees"));
		//int end_tuit_fees = Integer.parseInt(req.getParameter("end_tuit_fees"));
		String ext_obj = (req.getParameter("ext_obj") == null)?"":String.valueOf(req.getParameter("ext_obj"));
		String carrer = (req.getParameter("carrer") == null)?"":String.valueOf(req.getParameter("carrer"));
		String ext_exp = (req.getParameter("ext_exp") == null)?"":String.valueOf(req.getParameter("ext_exp"));
		/*String ext_ext_y = (req.getParameter("ext_ext_y") == null)?"":String.valueOf(req.getParameter("ext_ext_y"));
		String ext_exp_m = (req.getParameter("ext_exp_m") == null)?"":String.valueOf(req.getParameter("ext_exp_m"));*/
		String gender = (req.getParameter("gender") == null)?"":String.valueOf(req.getParameter("gender"));
		String ext_way = (req.getParameter("ext_way") == null)?"":String.valueOf(req.getParameter("ext_way"));
		String class_lev = (req.getParameter("class_lev") == null)?"":String.valueOf(req.getParameter("class_lev"));
		String easySearch = (req.getParameter("easySearch") == null)?"":String.valueOf(req.getParameter("easySearch"));
		//System.out.println("�¿���:"+onoff);
		//System.out.println("���α׷�:"+pg);
		//System.out.println("����:"+subject);
		//System.out.println("����1:"+location1);
		//System.out.println("����2:"+location2);
		//System.out.println("����:"+college);
		//System.out.println("������:"+str_tuit_fees);
		//System.out.println("������:"+end_tuit_fees);
		//System.out.println("���ܴ��:"+ext_obj);
		//System.out.println("�ڰ�������:"+carrer);
		//System.out.println("���ܰ�¿���:"+ext_exp);
		//System.out.println("��:"+ext_ext_y);
		//System.out.println("����:"+ext_ext_y);
		//System.out.println("����:"+gender);
		System.out.println("����˻� : "+easySearch);
		/* DB���� �̾ƿ� ���� ���� */
		List<HashMap>list = service2.listAll(cri);
		System.out.println("���� �̾ƺ�:"+list);
		/* �� ���� */
		for(HashMap i : list){
			int add = 0;
			//System.out.println("�̰� ������"+i.get("pg"));
			i.put("score", add);
			if(!(i.get("score").equals("-1"))){
				/* �¿������ο��� */
				if(!(onoff.equals("n"))){
					if(i.get("onoff").equals(onoff)){
						String cc = i.get("score").toString();
						int c = Integer.parseInt(cc);
						add = c+1;
						i.put("score", add);
					}
					else{i.put("score", "-1");
					}
					System.out.print("<�¿�������>");
					System.out.print(i.get("score")+"/");
					
				}
			}
			if(!(i.get("score").equals("-1"))){
				/* ���α׷쿩�� */
				if(!(pg.equals("n") || pg.equals(""))){
					if(i.get("pg").equals(pg)){
						String cc = i.get("score").toString();
						int c = Integer.parseInt(cc);
						add = c+1;
						i.put("score", add);
					}
					else{i.put("score", "-1");}
					System.out.print("<���α׷����>");
					System.out.print(i.get("score")+"/");
				}
			}
			if(!(i.get("score").equals("-1"))){
				// ����  
				if(!(subject.equals("n"))){
					if(i.get("subject").equals(subject)){
						String cc = i.get("score").toString();
						int c = Integer.parseInt(cc);
						add = c+1;
						i.put("score", add);
					}
					else{i.put("score", "-1");}
					System.out.print("<�������>");
					System.out.print(i.get("score")+"/");
				}
			}
			if(!(i.get("score").equals("-1"))){
				//������������ 
				//System.out.println((String) i.get("class_poss_area")+"���� ���� ���� DB");
				if(!(location1.equals(location2))){
					if(!(location1.equals(""))||!(location2.equals(""))){
						if ((i.get("class_poss_area").toString()).matches(".*"+location1+".*")){
							String cc = i.get("score").toString();
							int c = Integer.parseInt(cc);
							add = c+1;
							i.put("score", add);
						}
						else{
							if (((String) i.get("class_poss_area")).matches(".*"+location2+".*")){
								String cc = i.get("score").toString();
								int c = Integer.parseInt(cc);
								add = c+1;
								i.put("score", add);
							}
							else{i.put("score", "-1");}
						}
						//System.out.println("����1����:"+i.get("score"));
					}
					System.out.print("<��������>");
					System.out.print(i.get("score")+"/");
				}
				if((location1.equals(location2))&&(!(location1.equals("")))){
						if (((String) i.get("class_poss_area")).matches(".*"+location1+".*")){
							String cc = i.get("score").toString();
							int c = Integer.parseInt(cc);
							add = c+1;
							i.put("score", add);
						}
						else{i.put("score", "-1");}
						//System.out.println("����3����:"+i.get("score"));
					System.out.print("<��������>");
					System.out.print(i.get("score")+"/");
				}
			}
			if(!(i.get("score").equals("-1"))){
				// ���� �� 
				if(!(college.equals(""))){ // college �� �޾ƿ� 
					if ( ( ( i.get("college").toString() ).replaceAll("\\p{Z}","") ).matches(".*"+(college.replaceAll("\\p{Z}", ""))+".*")){
						String cc = i.get("score").toString();
						int c = Integer.parseInt(cc);
						add = c+1;
						i.put("score", add);
					}
					else{i.put("score", "-1");}
					System.out.print("<���ж���>");
					System.out.print(i.get("score")+"/");
				}
			}
			if(!(i.get("score").equals("-1"))){	
			/* String gggg = i.get("tuit_fees").toString();*/
			
			 /*int c = Integer.valueOf(gggg);*/
			 System.out.println(str_tuit_fees+"dfdf"+end_tuit_fees);
				 //������ 
			 	if(!(easySearch.equals("y"))){
			 		System.out.println("�̰� y�� �ƴϾ�");
					if((Integer.parseInt(str_tuit_fees) != 0) && (str_tuit_fees != null)){
						if(str_tuit_fees.equals(end_tuit_fees)){
							String tuit = i.get("tuit_fees").toString();
							if( (Integer.parseInt(str_tuit_fees) <= (Integer.parseInt(tuit)))&&( (Integer.parseInt(tuit)) <= Integer.parseInt(end_tuit_fees))){
								String cc = i.get("score").toString();
								int c = Integer.parseInt(cc);
								add = c+1;
								i.put("score", add);
							}
							else{i.put("score", "-1");}
						}
						if(!(str_tuit_fees.equals(end_tuit_fees))) {
							String tuit = i.get("tuit_fees").toString();
							if( (Integer.parseInt(str_tuit_fees) <= (Integer.parseInt(tuit) ) )&&( (Integer.parseInt(tuit)) <= Integer.parseInt(end_tuit_fees))){
								String cc = i.get("score").toString();
								int c = Integer.parseInt(cc);
								add = c+1;
								i.put("score", add);
							}
							else{i.put("score", "-1");}
						}
						
						System.out.print("<���������>");
						System.out.print(i.get("score")+"/");
					}
			 	}
			 	if(easySearch.equals("y")){
			 		System.out.println("�̰� y��");
			 		if((str_tuit_fees != "0") && (str_tuit_fees != null)){
						if(str_tuit_fees.equals(end_tuit_fees)){
							String tuit = i.get("tuit_fees").toString();
							if((Integer.parseInt(str_tuit_fees) <= (Integer.parseInt(tuit)))&&( (Integer.parseInt(tuit)) <= Integer.parseInt(end_tuit_fees))){
								String cc = i.get("score").toString();
								int c = Integer.parseInt(cc);
								add = c+1;
								i.put("score", add);
							}
							else{i.put("score", "-1"); System.out.println("�ϰ� ���� �ֿ�");}
						}
						if(!(str_tuit_fees.equals(end_tuit_fees))) {
							String tuit = i.get("tuit_fees").toString();
							if( (Integer.parseInt(str_tuit_fees) <= (Integer.parseInt(tuit) ) )&&( (Integer.parseInt(tuit)) <= Integer.parseInt(end_tuit_fees))){
								String cc = i.get("score").toString();
								int c = Integer.parseInt(cc);
								add = c+1;
								i.put("score", add);
							}
							else{i.put("score", "-1");}
						}
						
						System.out.print("<���������>");
						System.out.print(i.get("score")+"/");
					}
			 	}
			}	
			if(!(i.get("score").equals("-1"))){	
				 //���� ��� 
				if(!(ext_obj.equals("n"))&&!(ext_obj.equals(""))){
					if (i.get("ext_obj").equals(ext_obj)){
							String cc = i.get("score").toString();
							int c = Integer.parseInt(cc);
							add = c+1;
							i.put("score", add);
					}
					else{i.put("score", "-1");}
					System.out.print("<���ܴ�����>");
					System.out.print(i.get("score")+"/");
				}
			}
			if(!(i.get("score").equals("-1"))){
				 //���� ��� ����  
				if(!(ext_exp.equals(""))){
					if (!(i.get("ext_exp").equals(""))&&!(i.get("ext_exp").equals("0,0"))){
						String cc = i.get("score").toString();
						int c = Integer.parseInt(cc);
						add = c+1;
						i.put("score", add);

					}
					else{i.put("score", "-1");}
					System.out.print("<���ܰ�¶���>");
					System.out.print(i.get("score")+"/");
				}
			}
			if(!(i.get("score").equals("-1"))){
				 //�ڰ��� ���� 
				if(!(carrer.equals(""))){
					int good = service3.listCount(i.get("user_id").toString());
					//System.out.println("�̰� ���ͺ�"+good);
					if(Integer.valueOf(service3.listCount((String) i.get("user_id")))!= 0){
						String cc = i.get("score").toString();
						int c = Integer.parseInt(cc);
						add = c+1;
						i.put("score", add);
					}
					else{i.put("score", "-1");}
					System.out.print("<�ڰ�������>");
					System.out.print(i.get("score")+"/");
				}
			}
			if(!(i.get("score").equals("-1"))){	
			 //���� 
				if(!(gender.equals("n"))&&!(gender.equals(""))){
					if (i.get("gender").equals(gender)){
						String cc = i.get("score").toString();
						int c = Integer.parseInt(cc);
						add = c+1;
						i.put("score", add);

					}
					else{i.put("score", "-1");}
					System.out.print("<��������>");
					System.out.print(i.get("score")+"/");
				}
			}
			System.out.println("");
		}
		System.out.println("");
		System.out.print("<�� ����>");
		for(HashMap i : list){
			System.out.print(i.get("score")+"/");
		}
		//System.out.println(list);
		System.out.println("");
		    int i=0, j;
		    HashMap tempdata;
		    
		    List<HashMap<String, String>> c = new ArrayList<HashMap<String,String>>();
		    int s = 0;
		    while(true){
		    	int temp = 0;
		    	int a = Integer.parseInt(String.valueOf(list.get(i).get("score")));
		      for (j = 1; j < list.size(); j++) {
		    	int b = Integer.parseInt( String.valueOf(list.get(j).get("score")));
		        if (a < b) {
		        	temp = j;
		        }
		      }
		      if(list.size()==1){
		    	  HashMap<String, String> list3 = list.get(temp);
		    	  String list2 = String.valueOf(list3.get("score"));
		    	  if(list2 != "-1"){
		    		  c.add(list.get(0));
		    	  }
		      }
		      if(list.size()!=1){
		    	  HashMap<String, String> list3 = list.get(temp);
		    	  String list2 = String.valueOf(list3.get("score"));
		    	  if(list2 != "-1"){
		    		  c.add(s, list.get(temp));
		    	  }
		      }
		      s++;
		      list.remove(temp);
		      temp = 0;
		      if(list.size()<1){
		    	  break;
		      }
		    }
		    int listcount = 0;
		    for (int k = 0; k < c.size(); k++) {
		      System.out.println(String.valueOf(c.get(k)));
		      listcount++;
		    }


		//
		logger.info(cri.toString());
		//((HashMap<String, Object>) list.get(1)).put("score","11");
		//HashMap a = list.get(1);
		//System.out.println(a);
		
		//String b = (String) a.get("college");
		//System.out.println("������"+b);
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		/*System.out.println(service2.countPage(cri));*/
		pageMaker.setTotalCount(service2.countPage(cri));
		System.out.println(pageMaker);
	/*	model.addAttribute("pageMaker", pageMaker);*/
		model.addAttribute("list",list);
		session.setAttribute("c",c);
		session.setAttribute("pageMaker", pageMaker);
		session.setAttribute("listcount", listcount);
		/*session.setAttribute("result", "result");*/
		/*return "privateSearch";*/
		System.out.println("�̰ű��� ��?");
	}
	@RequestMapping(value ="/privateSearch2", method = RequestMethod.GET)
	public void privateSearch3(HttpServletRequest req, @ModelAttribute("cri") privateSearchCriteria cri, Model model)throws Exception{
		model.addAttribute("result", "result");
	}
	@RequestMapping(value ="/ApplicationClass", method = RequestMethod.GET)
	public void ApplicationClass(@RequestParam(value="ext_id", defaultValue="-1") String ext_id,
			@RequestParam(value="user_id", defaultValue="-1") String user_id, Model model)throws Exception{
		
		model.addAttribute("ext_id", ext_id);
		/* ���� ���� �ҷ����� */
		String T_Image =service5.TImage(ext_id);
		model.addAttribute("T_Image",T_Image);
		
		User_InfoVO aaa = service.read(user_id);
		model.addAttribute("user_info", aaa);
		
		/* ���� ��� */
		String a = aaa.getBirth_date();
		int year = Integer.parseInt(a.substring(0, 4)); 
		int month = Integer.parseInt(a.substring(5, 7));
		int day = Integer.parseInt(a.substring(8, 10));
		Calendar cal= Calendar.getInstance ();
		cal.set(Calendar.YEAR, year);
		cal.set(Calendar.MONTH, month-1);
		cal.set(Calendar.DATE, day);
		Calendar now = Calendar.getInstance ();

		 int age = now.get(Calendar.YEAR) - cal.get(Calendar.YEAR);
		    if (  (cal.get(Calendar.MONTH) > now.get(Calendar.MONTH))
		            || (    cal.get(Calendar.MONTH) == now.get(Calendar.MONTH) 
		                    && cal.get(Calendar.DAY_OF_MONTH) > now.get(Calendar.DAY_OF_MONTH)   )   
		    ){
		        age--;
		    }
		    aaa.setBirth_date(String.valueOf(age));
		/* ���� ��� ��*/
		    
		/* ���� ���� �ҷ����� */
		Ext_InfoVO bbb = service2.read(ext_id);
		model.addAttribute("ext_info", bbb);
		
		//System.out.println(bbb.getExt_id());
		//��.�������� ���� ����
		String onoff = bbb.getExt_id().substring(0,1);
		model.addAttribute("onoff",onoff);
		//����.�׷� ���� ���� ����
		String pg = bbb.getExt_id().substring(1,2);
		model.addAttribute("pg", pg);
		//���� ���� ����
		String subject = bbb.getExt_id().substring(2,4);
		model.addAttribute("subject",subject);
		
		//������ ���� ���� Ƚ�� �˾Ƴ���
		int classCount = service.classCount(user_id);
		model.addAttribute("classCount", classCount);
	}
	
	
	
	@RequestMapping(value="/appClass", method=RequestMethod.POST)
	@ResponseBody
	//public String app_class(@RequestParam Map<String, String> map )throws Exception{
	public String app_class(@RequestBody JSONObject json, Model model)throws Exception{
		System.out.println("���� ���ƽ��ϴ�");
		System.out.println(json.toString());
		
		String ext_id = json.get("ext_id").toString();
		String user_id = json.get("user_id").toString();
		List end = (ArrayList) json.get("endArr");
		
		
		
		List endStr = new ArrayList();
		List endNumber = new ArrayList();
		for(int i = 0; i < end.size(); i++){
			String str = end.get(i).toString().substring(0, 1);
			String str2 = end.get(i).toString().substring(1);
			endStr.add(str);
			endNumber.add(str2);
		}
		
		System.out.println(endStr.toString() + "   "+ endNumber.toString());
		
		List start = (ArrayList) json.get("startArr");
		
		List startStr = new ArrayList();
		List startNumber = new ArrayList();
		for(int i = 0; i < start.size(); i++){
			String str = start.get(i).toString().substring(0, 1);
			String str2 = start.get(i).toString().substring(1);
			startStr.add(str);
			startNumber.add(str2);
		}
		
		System.out.println(startStr.toString() + "   "+ startNumber.toString());
		
		for(int i = 0; i < start.size(); i++){
			Ext_TimetableVO timetable = new Ext_TimetableVO();
			timetable.setExt_id(ext_id);
			timetable.setUser_id(user_id);
			timetable.setDay_week(startStr.get(i).toString());
			timetable.setClass_str_time(Integer.parseInt(startNumber.get(i).toString()));
			timetable.setClass_end_time(Integer.parseInt(endNumber.get(i).toString()));
			service.ext_table_create(timetable);
		}
		
		/* ���� ��û ���̺� ���*/
		App_ClassVO app_class = new App_ClassVO();
		app_class.setExt_id(ext_id);
		app_class.setUser_id(user_id);
		service4.appClass_create(app_class);
		
		
	//	System.out.println(asd.get(0).toString() + axx.get(0).toString());
	
		
		/*System.out.println(map.get("str"));
		System.out.println(map.get("startArr"));
		System.out.println(map.get("endArr"));
		System.out.println(map.get("arrlength"));
		System.out.println(map.get("user_id"));*/
		
		//System.out.println("g����"+json);
		
		/*String user_id = req.getParameter("user_id");
		System.out.println("user_id");
		
		JSONObject json= new JSONObject();
		json = req.getParameter();
		System.out.println(json.get("user_id"));*/
		/*return "ApplicationClass";*///+user_id;
		return "success";
	}
	
	@RequestMapping(value="/tutoringRegister", method=RequestMethod.GET)
	public void tutoringRegisterGET() throws Exception{
		
	}
	
	@RequestMapping(value="/tutoringRegister", method=RequestMethod.POST)
	@ResponseBody
	public void tutoringRegisterPOST(HttpServletRequest req) throws Exception{
		
		Ext_InfoVO vo = new Ext_InfoVO();
		Ext_TimetableVO tVo = new Ext_TimetableVO();
		
		String[] startArr = req.getParameterValues("startArr");
		String[] endArr = req.getParameterValues("endArr");
		int arrlength = Integer.parseInt(req.getParameter("arrlength"));
		//System.out.println("������ �ð�ǥ ���� : " + arrlength);
		String[] timeArr = new String[arrlength];
		//System.out.println(startArr[0]);
		//System.out.println(endArr[0]);
		for(int i=0; i<arrlength; i++){
			//System.out.print("���ǽ��� �ð� : " + startArr[0].substring((i + (5*i) + 2), (i+(5*(i+1)))) + " ");
			//System.out.println("�������� �ð� : " + endArr[0].substring((i + (5*i) + 2), (i+(5*(i+1)))));
			timeArr[i] = startArr[0].substring((i + (5*i) + 2), (i+(5*(i+1)))) + endArr[0].substring((i + (5*i) + 3), (i+(5*(i+1))));
		}
		
		for(int i=0; i<timeArr.length; i++){
		 System.out.println(timeArr[i]);	 
		}
		
		HttpSession session = req.getSession();
		String user_id = String.valueOf(session.getAttribute("id"));
		
		String number = String.valueOf(service.ext_id_select(vo));
		if(number == null){
			number = "000";
		}else{
			number = String.valueOf(Integer.parseInt(number)+1);
				if(number.length() == 1){
					number = "00" + number;
				}else if(number.length() == 2){
					number = "0" + number;
				}
		}
		
		String ext_id = req.getParameter("TutoringCode") + number;
		vo.setExt_id(ext_id);
		vo.setUser_id(user_id);
		vo.setClass_poss_area(req.getParameter("class_poss_area"));
		vo.setExt_obj(req.getParameter("ext_obj"));
		vo.setClass_lev(req.getParameter("class_lev"));
		vo.setExt_way(req.getParameter("ext_way"));
		vo.setIntro_class(req.getParameter("intro_class"));
		vo.setTuit_fees(Integer.parseInt(req.getParameter("tuit_fees")));
		//int period = Integer.parseInt(req.getParameter("period"));
		
		service.ext_create(vo);
		
		tVo.setUser_id(user_id);
		tVo.setExt_id(ext_id);
		//System.out.println("ȭ��");
		for(int i=0; i<timeArr.length; i++){
			String day_week;
			int class_str_time;
			int class_end_time;
			
			day_week = timeArr[i].substring(0, 1);
			class_str_time = Integer.parseInt(timeArr[i].substring(1, 3));
			class_end_time = Integer.parseInt(timeArr[i].substring(3, 5));
			tVo.setDay_week(day_week);
			tVo.setClass_str_time(class_str_time);
			tVo.setClass_end_time(class_end_time);
			service.ext_table_create(tVo);
		}	
	}
	

	
}
