package yjc.wdb.Highlighter;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import yjc.wdb.Highlighter.domain.App_ClassVO;
import yjc.wdb.Highlighter.domain.Ext_InfoVO;
import yjc.wdb.Highlighter.domain.Ext_TimetableVO;
import yjc.wdb.Highlighter.service.App_ClassSerivce;
import yjc.wdb.Highlighter.service.Ext_InfoService;
import yjc.wdb.Highlighter.service.Ext_TimetableService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Inject
	private Ext_InfoService service;
	
	@Inject
	private App_ClassSerivce service2;
	
	@Inject
	private Ext_TimetableService service3;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpSession session) {
		logger.info("Welcome home! The client locale is {}.", locale);
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate );
		
		/* �׻� home.jsp ��� �� ${id}�� �ִ��� ���� ��*/
		String user_id = String.valueOf(session.getAttribute("id"));
		/* ���� ��� ��ư (����� ���� �α�)*/
		//System.out.println("���� ���̵� : "+user_id);
		
		
		/* session���� ${id}���� �� ���� side�� DB���� �ҷ��� */
		if(user_id != "null"){
			logger.info("���� �α��� �� ........................");
			try {
				String user_grade = session.getAttribute("user_grade").toString();
				//System.out.println("���:"+user_grade);
			/* ***************���� home���� ��� NAV ����*********************/
				if(user_grade.equals("teacher")){
					logger.info("��� : teacher.......................");
					/* ȸ���� �����ϴ� ���� ���� ���� ��� ����*/
					List<HashMap> list = service.onGoingExt(user_id);
					
					//System.out.println("����:"+list);
					/* �����ڵ忡�� ���� ���� �� ����*/
					for(HashMap i : list){
						if(!(((i.get("count_Stu")).toString()).equals("0"))){
							String ext_id = (i.get("ext_id")).toString();
							String subject = ext_id.substring(2,4);
							if(subject.matches("01"))
								i.put("subject", "����");
							if(subject.matches("02"))
								i.put("subject", "����");
							if(subject.matches("03"))
								i.put("subject", "����");
							model.addAttribute("homeList", list);
						}
					}
						
				
					/* ���� ���� ���� ���� ����*/
					Ext_InfoVO appClassOne = service2.appClassOne(user_id);
					
					//System.out.println("���� ���� ���� ���� ���� :"+appClassOne);
					/* �����ڵ忡�� ���� ���� �� ����*/
					String ext_id = "";
					if(appClassOne != null){
						ext_id = appClassOne.getExt_id();
						String subject = ext_id.substring(2,4);
						if(subject.matches("01"))
							appClassOne.setSubject("����");
						if(subject.matches("02"))
							appClassOne.setSubject("����");
						if(subject.matches("03"))
							appClassOne.setSubject("����");
					}
					model.addAttribute("appClassOne", appClassOne);
					//System.out.println("���� ���� ����:"+appClassOne);
					
					/* ���� ���� ���� ���ǿ� ���� �л��� ��û ��� */
					List<HashMap> appClassList = service2.listAll(user_id);
					//System.out.println("�л� ��û ���:"+appClassList);
					model.addAttribute("appClassList", appClassList);
				
				}
			/* ***************���� home���� ��� NAV ���� ��*********************/
			
			/* ***************���� home���� ��� NAV ����*********************/
			if(user_grade.equals("student")){	
				List<HashMap> onGoingExt_Stu = service.onGoingExt_Stu(user_id);
				
				for(HashMap i : onGoingExt_Stu){
					String ext_id =(i.get("ext_id")).toString();
					String subject = ext_id.substring(2,4);
					//System.out.println(subject);
					if(subject.matches("01"))
						i.put("subject", "����");
					if(subject.matches("02"))
						i.put("subject", "����");
					if(subject.matches("03"))
						i.put("subject", "����");
				}
				
				model.addAttribute("onGoingExt_Stu", onGoingExt_Stu);
				
				//System.out.println("�̰�"+onGoingExt_Stu);
				/* �л��� ���� ��û�� ��� */
				List<HashMap> appClassList_Stu = service2.appClassList_Stu(user_id);
				
				model.addAttribute("appClassList_Stu",appClassList_Stu);
			}	
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return "home";
	}
	
	private String subString(String ext_id, int i, int j) {
		// TODO Auto-generated method stub
		return null;
	}
	@RequestMapping(value = "/nav", method = RequestMethod.GET)
	public String nav()throws Exception{
		
		return "nav";
	}
	/* �л�_���� ��û ��� */
	@RequestMapping(value = "/cancelClass", method = RequestMethod.POST)
	@ResponseBody
	public String cancelClass(HttpServletRequest req, HttpSession session)throws Exception{
		String ext_id = req.getParameter("ext_id");
		System.out.println("���� �ڵ�:"+ext_id);
		logger.info("cancelClass......................");
		App_ClassVO vo = new App_ClassVO();
		vo.setExt_id(ext_id);
		vo.setUser_id(String.valueOf(session.getAttribute("id")));
		service2.cancelClass(vo);
		
		/* ���� ��ҽ�, ��û�� ���� �ð�ǥ�� �ִ��� Ȯ�� �� ���� */
		Ext_TimetableVO vo2 = new Ext_TimetableVO();
		vo2.setExt_id(ext_id);
		vo2.setUser_id(String.valueOf(session.getAttribute("id")));
		int timetableyn = service3.cancelClassCount(vo2);
		
		if(timetableyn != 0){
			service3.deleteTimetable(vo2);
		}
		
		return "success";
	}
	/* ����_���� ���� */
	@RequestMapping(value = "/acceptClass", method = RequestMethod.POST)
	@ResponseBody
	public String acceptClass(HttpServletRequest req, HttpSession session)throws Exception{
		String user_id = req.getParameter("user_id");
		String ext_id = req.getParameter("ext_id");
		//System.out.println("���̵�:"+user_id);
		//System.out.println("���� �ڵ�:"+ext_id);
		logger.info("acceptClass......................");
		
		/* ���� ���� */
		App_ClassVO vo = new App_ClassVO();
		vo.setUser_id(user_id);
		vo.setExt_id(ext_id);
		service2.acceptClass(vo);
		
		/* ���� ���� �� ���� ������, �ٷ� ���� ���� */
		Ext_InfoVO vo2 = new Ext_InfoVO();
		String subject = ext_id.substring(1,2);
		if(subject.matches("1")){
			vo2.setExt_id(ext_id);
			service.acceptPrivateClass(vo2);
		}
		return "success";
	}
	
	/* ����_������� */
	@RequestMapping(value = "/cancelAcceptClass", method = RequestMethod.POST)
	@ResponseBody
	public String cancelAcceptClass(HttpServletRequest req, HttpSession session)throws Exception{
		String user_id = req.getParameter("user_id");
		String ext_id = req.getParameter("ext_id");
		logger.info("cancelAcceptClass......................");
		App_ClassVO vo = new App_ClassVO();
		vo.setUser_id(user_id);
		vo.setExt_id(ext_id);
		service2.cancelAcceptClass(vo);
		
		return "success";
	}
	
	/* �ӽ� �ð� �ο� */
	@RequestMapping(value = "/giveTime", method = RequestMethod.POST)
	@ResponseBody
	public String giveTime(HttpServletRequest req, HttpSession session)throws Exception{
		String ext_id = req.getParameter("ext_id");
		System.out.println("ext_id : "+ ext_id);
		logger.info("giveTime......................");
		Ext_InfoVO vo2 = new Ext_InfoVO();
		vo2.setExt_id(ext_id);
		service.acceptPrivateClass(vo2);
		return "success";
	}
}
