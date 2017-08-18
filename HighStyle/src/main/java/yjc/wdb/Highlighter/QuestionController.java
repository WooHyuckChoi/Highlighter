package yjc.wdb.Highlighter;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import yjc.wdb.Highlighter.domain.Criteria;
import yjc.wdb.Highlighter.domain.PageMaker;
import yjc.wdb.Highlighter.domain.QuestionVO;
import yjc.wdb.Highlighter.service.QuestionService;


@Controller
@RequestMapping("/*")
public class QuestionController {
	
	private static final Logger logger = LoggerFactory.getLogger(QuestionController.class);
	
	@Inject
	private QuestionService service;
	
	//�Խ��� �ۼ� ��
	@RequestMapping(value = "/question_register", method = RequestMethod.GET)
	public void registerGET(QuestionVO board, Model model)throws Exception{
		
		SimpleDateFormat  formatter03 = new SimpleDateFormat("yyyyMMdd");
		String todate03 =  formatter03.format(new Date());
		
		int count = service.count();
		
		String question_id;
		String select_question_id = service.select_question_id();
		String question_id_str1;
		
		if(count==0){
			question_id = todate03 + "00";
			
			model.addAttribute("question_id",question_id);
		}
		
		if(count > 0){
			question_id_str1 = select_question_id.substring(0,8); //��¥ ¥����
			String question_id_str2 = select_question_id.substring(8,10); // 00�κ� ¥����
			
			if(todate03.equals(question_id_str1)){
				
				int question_id_str3 = Integer.parseInt(question_id_str2);
				
				if(question_id_str3 < 9){
					
					question_id_str3++;
					
					String question_id_str3_2 = 0+Integer.toString(question_id_str3);
					
					question_id = question_id_str1 + question_id_str3_2;
					
				}
				
				else{
					question_id_str3++;
				
					String question_id_str4 = Integer.toString(question_id_str3);
				
					question_id = question_id_str1 + question_id_str4;
				}
				model.addAttribute("question_id",question_id);
			}
			
			else{
				question_id = todate03 + "00";
				
				model.addAttribute("question_id",question_id);
			}
		}
	}
	
	@RequestMapping(value = "/question_register", method = RequestMethod.POST)
	public String registPOST(QuestionVO board, RedirectAttributes rttr)throws Exception{
		
		service.regist(board);
		
		return "redirect:/question_listPage";
	}
	
	@RequestMapping(value="/question_listCri", method = RequestMethod.GET)
	public void listAll(Criteria cri, Model model)throws Exception{
		
		model.addAttribute("list",service.listCriteria(cri));
	}
	
	@RequestMapping(value="/question_listPage", method = RequestMethod.GET)
	public void listPage(@ModelAttribute("cri") Criteria cri, Model model)throws Exception{
		
		model.addAttribute("list",service.listCriteria(cri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		
		pageMaker.setTotalCount(service.listCountCriteria(cri));
		
		model.addAttribute("pageMaker",pageMaker);
	}
	
	@RequestMapping(value="/question_readPage", method = RequestMethod.GET)
	public void read(@RequestParam("question_id") String question_id, @RequestParam("user_name") String user_name, @ModelAttribute("cri") Criteria cri, Model model)throws Exception{
		
		QuestionVO Question = service.read(question_id, user_name);
		model.addAttribute("QuestionVO", Question);
		
		//model.addAttribute(service.read(question_id));
	}
	
	@RequestMapping(value="/question_remove", method = RequestMethod.POST)
	public String remove(@RequestParam("question_id") String question_id, Criteria cri, RedirectAttributes rttr)throws Exception{
		
		service.remove(question_id);
		
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		
		return "redirect:/question_listPage";
	}
	
	@RequestMapping(value="/question_modify", method = RequestMethod.GET)
	public void modifyGET(String question_id, String user_name, @ModelAttribute("cri") Criteria cri, Model model)throws Exception {
		
		model.addAttribute("list",service.read(question_id, user_name));
	}
	
	@RequestMapping(value="/question_modify", method = RequestMethod.POST)
	public String modifyPOST(QuestionVO board, Criteria cri, RedirectAttributes rttr)throws Exception {
		
		service.modify(board);
		
		rttr.addAttribute("page", cri.getPage());
		rttr.addAttribute("perPageNum", cri.getPerPageNum());
		
		return "redirect:/question_listPage";
	}
	
	//�̿���
	@RequestMapping(value="/how_teacher", method = RequestMethod.GET)
	public void how_teacher()throws Exception{
		
	}
	
	@RequestMapping(value="/how_student", method = RequestMethod.GET)
	public void how_student()throws Exception{
		
	}
	
	@RequestMapping(value="/how_parents", method = RequestMethod.GET)
	public void how_parents()throws Exception{
		
	}
	
	@RequestMapping(value="/introduce", method = RequestMethod.GET)
	public void introduce()throws Exception{
		
	}
}