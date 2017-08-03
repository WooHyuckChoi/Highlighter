package yjc.wdb.Highlighter;

import java.util.HashMap;

import javax.inject.Inject;

import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import yjc.wdb.Highlighter.service.StudyRoomService;
@Controller
public class StudyRoom2Controller {
	
	private static final Logger logger = LoggerFactory.getLogger(StudyRoomController.class);
	
	@Inject
	private StudyRoomService studyRoomService;
	
	
}
