package yjc.wdb.Highlighter;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

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
import yjc.wdb.Highlighter.service.LectureEvaluationService;


@Controller
public class LectureEvaluationController {

	@Inject LectureEvaluationService service;
	
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
	
}