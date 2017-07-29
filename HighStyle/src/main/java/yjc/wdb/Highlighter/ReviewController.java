package yjc.wdb.Highlighter;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import yjc.wdb.Highlighter.domain.reviewVO;
import yjc.wdb.Highlighter.service.ReviewService;
import yjc.wdb.bbs.util.uploadReviewFileUtils;

@Controller
public class ReviewController 
{
	private static final Logger logger=LoggerFactory.getLogger(ReviewController.class);
	@Inject
	private ReviewService service;
	
	@Resource(name="uploadPath")
	private String uploadPath;
	
	@RequestMapping(value="uploadVideo", method=RequestMethod.GET)
	public String uploadVideoGET(Model model,HttpSession session,@RequestParam("ext_id") String ext_id) throws Exception
	{
		//String ext_id=(String) session.getAttribute("ext_id");
		model.addAttribute("ext_id",ext_id);
		System.out.println("�ʼ� �����Ҽ�����"+ext_id);
		int countPostId=service.selectPostId(ext_id);
		String postId="";
		if(countPostId>0)
		{
			postId=service.getPostId(ext_id); //P110111500
			String p1=postId.substring(0,8);
			System.out.println(p1);
			
			String p2=postId.substring(8,10);
			System.out.println(p2);
			
			int p3=Integer.parseInt(p2);
			String p4="";
			if(p3<10)
			{
				p3++;
				p4=0+Integer.toString(p3);
				System.out.println(p4);
			}
			
			postId=p1+p4;
			System.out.println(postId);
			
			model.addAttribute("postId",postId);
			return "uploadVideo";
		}
		else if(countPostId==0)
		{
			postId="P"+ext_id+"00"; //post_id
			System.out.println(postId);
			model.addAttribute("postId",postId);
			return "uploadVideo";
		}
		return "uploadVideo";
	}
	
	@RequestMapping(value="/uploadVideo", method=RequestMethod.POST)
	public String uploadVideoPOST(reviewVO vo,MultipartFile file,Model model,HttpSession session,@RequestParam("ext_id") String ext_id) throws Exception
	{
		
		String user_id = (String) session.getAttribute("id");
		String savedName=
				uploadReviewFileUtils.uploadFile
				(uploadPath, file.getOriginalFilename(), file.getBytes());
		model.addAttribute("savedName",savedName);
		
		vo.setAtt_file(savedName);
		vo.setUser_id(user_id);
		System.out.println(vo.getAtt_file());
		//service.postingPostId(vo);
		service.postingItem(vo);
		return "redirect:/listAll?ext_id="+ext_id;
	}
	
	@RequestMapping(value="listAll", method=RequestMethod.GET)
	public String reviewList(Model model,HttpSession session, @RequestParam("ext_id") String ext_id) throws Exception
	{
		System.out.println(session.getAttribute("id"));
		
		//System.out.println(session.getAttribute("ext_id"));
		model.addAttribute("list",service.listAll(ext_id));
		model.addAttribute("ext_id",ext_id);
		System.out.println("��� ��� ����� ����Ʈ�� �̻�"+ext_id);
		return "reviewList";
	}
	
	@RequestMapping(value="boardDetail", method=RequestMethod.GET)
	public ModelAndView boardDetail(@RequestParam String post_id) throws Exception
	{
		//fileName을 모델에 담아서 streamView를 반환
		ModelAndView mav=new ModelAndView();
		mav.setViewName("/boardDetail");
		mav.addObject("dto",service.listOne(post_id));
		return mav;
	}
	
		/*@ResponseBody
	    @RequestMapping("/displayFile")
	    public ResponseEntity<byte[]>  displayFile(@RequestParam("fileName") String fileName) throws Exception{
	      
	      InputStream in = null; 
	      ResponseEntity<byte[]> entity = null;
	      
	      logger.info("FILE NAME: " + fileName);
	     
	       
	      try{
	         
	        String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
	         
	        MediaType mType = MediaUtils.getMediaType(formatName);
	         
	        HttpHeaders headers = new HttpHeaders();
	         
	        in = new FileInputStream(uploadPath+fileName); 
	         
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
     }*/
	     
}
