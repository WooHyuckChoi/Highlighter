package yjc.wdb.Highlighter;

import java.util.HashMap;
import java.util.List;
import java.util.StringTokenizer;

import javax.inject.Inject;
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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.JsonObject;

import yjc.wdb.Highlighter.domain.User_InfoVO;
import yjc.wdb.Highlighter.domain.stu_infoVO;
import yjc.wdb.Highlighter.service.MyPageInfoService;

@Controller
public class MyPageController 
{
	private static final Logger logger = LoggerFactory.getLogger(MyPageController.class);
	
	@Inject
	private MyPageInfoService service;
	
    @RequestMapping(value="myPage", method=RequestMethod.GET)
    public String myPageHome() throws Exception{
        return "myPage";
    }
    
    @RequestMapping(value="modifyMyInfo", method=RequestMethod.GET)
	public String modifyMyInfo(HttpSession session, Model model) throws Exception 
	{
		String user_id=(String) session.getAttribute("id");
		User_InfoVO vo = service.selectUserInfo(user_id);
		String ext_exp = vo.getExt_exp();
		
		StringTokenizer st = new StringTokenizer(ext_exp, ",");
		int count = st.countTokens();
		String[] ext_expArr;
		ext_expArr=new String[count];
		
		for(int i=0; i<count; i++)
		{
			ext_expArr[i] = st.nextToken();
		}
		model.addAttribute("year",ext_expArr[0]);
		model.addAttribute("month",ext_expArr[1]);
		model.addAttribute(service.selectUserInfo(user_id));
		return "modifyMyInfo";
	}
	
	@RequestMapping(value="modifyMyInfo", method=RequestMethod.POST)
	public String modifyMyInfo(User_InfoVO vo, RedirectAttributes rttr, Model model) throws Exception 
	{
		service.updateUserInfo(vo);
		rttr.addFlashAttribute("msg","SUCCESS");
		return "redirect:/myPage";
	}
	
	@RequestMapping(value="attendingLecture", method=RequestMethod.GET)
	public void attendingLecture(HttpSession session, Model model) throws Exception
	{
		String user_id = (String) session.getAttribute("id");
		List<HashMap> list = service.attendingLecture(user_id);
		/*for(int i=0; i<list.size(); i++)
		{
			list.get(i).setExt_id(list.get(i).getExt_id().toString().substring(2,4));
			
		}*/
		for(HashMap i : list){
			i.put("subject", i.get("ext_id").toString().substring(2,4));
		}
		model.addAttribute("list",list);
	}
	
	@RequestMapping(value="endLecture", method=RequestMethod.GET)
	public void endLecture(HttpSession session, Model model) throws Exception
	{
		String user_id = (String) session.getAttribute("id");
		List<HashMap> list = service.endLecture(user_id);
//		for(int i=0; i<list.size(); i++)
//		{
//			list.get(i).setExt_id(list.get(i).getExt_id().toString().substring(2,4));
//		}
		for(HashMap i : list){
			i.put("subject", i.get("ext_id").toString().substring(2,4));
		}
		model.addAttribute("list",list);
	}
	
	@RequestMapping(value="applicationList",method=RequestMethod.GET)
	public void applicationList(HttpSession session, Model model) throws Exception
	{
		String user_id= (String) session.getAttribute("id");
		List<HashMap> list=service.applicationList(user_id);
//		for(int i=0; i<list.size(); i++)
//		{
//			list.get(i).setExt_id(list.get(i).getExt_id().toString().substring(2,4));
//		}
		for(HashMap i : list){
			i.put("subject", i.get("ext_id").toString().substring(2,4));
		}
		model.addAttribute("list",list);
	}
	
    @RequestMapping(value="message", method=RequestMethod.GET)
    public String message(Model model, HttpSession session) throws Exception{
    	String user_id = String.valueOf(session.getAttribute("id"));
	    List<HashMap> messageList = service.selectMesssage(user_id);
	    model.addAttribute("messageList", messageList);
	    
        return "message";
    }
    
    @RequestMapping(value="cal", method=RequestMethod.GET,produces="application/json;charset=utf-8")
	public String calendar(@RequestParam("ext_id") String ext_id,@RequestParam("user_id") String user_id, Model model,HttpSession session) throws Exception
	{
		//String user_id = (String) session.getAttribute("id");
    	System.out.println(ext_id +"and"+user_id);
		String stu_id=user_id;
    	//List<String> userList=service.selectStuId(ext_id);
		//String stu_id=userList.get(0);
		
		stu_infoVO vo = new stu_infoVO();
		vo.setExt_id(ext_id);
		vo.setUser_id(stu_id);
		//json-simple 라이브러리 추가 필요 (JSON객체 생성)
		JSONObject jsonMain = new JSONObject();//JSON객체
		List<stu_infoVO> list=service.calendarList(vo);//DB에 저장된 데이터들을 리스트로 받아온다
		JSONArray jArray = new JSONArray(); // json배열
		for(int i=0; i<list.size();i++)
		{	
			stu_infoVO sInfo = list.get(i);
			JSONObject row = new JSONObject();// json객체.put("변수명",값)
			row.put("title", sInfo.getLearn_att());
			row.put("start", sInfo.getPost_date());
			// 배열에 추가
            // json배열.add(인덱스,json객체)
			jArray.add(i,row);
		}
		jsonMain.put("sendData",jArray);
		model.addAttribute("ext_id",ext_id);
		model.addAttribute("user_id",stu_id);
		model.addAttribute("json",jsonMain.get("sendData"));
		return "calendar";
	}
	
	@ResponseBody
	@RequestMapping(value="cal", method= RequestMethod.POST)
	public String calendar(@RequestBody JSONObject json,HttpSession session,@RequestParam("ext_id") String ext_id,@RequestParam("user_id") String user_id) throws Exception
	{
		//String user_id = (String) session.getAttribute("id");
		//String stu_id=service.selectStuId(ext_id);
		
		//List<String> userList=service.selectStuId(ext_id);
		//String stu_id=userList.get(0);
		
		String stu_id=user_id;
		
		stu_infoVO vo = new stu_infoVO();
		
		vo.setExt_id(ext_id);
		vo.setUser_id(stu_id);
		vo.setPost_date(json.get("start").toString());
		vo.setLearn_att(json.get("title").toString());
		service.insertCalendar(vo);
		return "calendar";
	}
	
	@ResponseBody
	@RequestMapping(value="calModify", method=RequestMethod.POST)
	public String calModify(@RequestParam("ext_id") String ext_id,@RequestBody JSONObject json) throws Exception
	{
		System.out.println(json.get("title")+","+json.get("start"));
		List<String> userList=service.selectStuId(ext_id);
		String stu_id=userList.get(0);
		
		stu_infoVO vo = new stu_infoVO();
		vo.setExt_id(ext_id);
		vo.setLearn_att(json.get("title").toString());
		vo.setPost_date(json.get("start").toString());
		vo.setUser_id(stu_id);
		
		service.modifyTitle(vo);
		return "calendar";
	}
	
	@ResponseBody
	@RequestMapping(value="calDelete", method=RequestMethod.POST)
	public String calDelete(@RequestParam("ext_id") String ext_id, @RequestBody JSONObject json) throws Exception
	{
		//String stu_id = service.selectStuId(ext_id);
		List<String> userList=service.selectStuId(ext_id);
		String stu_id=userList.get(0);
		
		stu_infoVO vo = new stu_infoVO();
		vo.setExt_id(ext_id);
		vo.setUser_id(stu_id);
		vo.setPost_date(json.get("start").toString());
		
		service.deleteList(vo);
		return "calendar";
	}
	
}