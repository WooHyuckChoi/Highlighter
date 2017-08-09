package yjc.wdb.Highlighter;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MatchingController {
	private static final Logger logger =
			LoggerFactory.getLogger(MatchingController.class);
	
	@RequestMapping(value = "/matchingPage", method = RequestMethod.GET)
	public void matchingPage()throws Exception{
		
	}
	@RequestMapping(value = "/sibal", method = RequestMethod.GET)
	public void sibal()throws Exception{
		
	}
}
