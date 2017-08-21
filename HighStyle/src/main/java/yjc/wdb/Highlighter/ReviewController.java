package yjc.wdb.Highlighter;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import yjc.wdb.Highlighter.domain.reviewVO;
import yjc.wdb.Highlighter.domain.thumb_infoVO;
import yjc.wdb.Highlighter.service.ReviewService;
import yjc.wdb.Highlighter.service.StudyRoomService;
import yjc.wdb.Highlighter.service.test_InfoService;
import yjc.wdb.bbs.util.MediaUtils;
import yjc.wdb.bbs.util.MultipartFileSender;
import yjc.wdb.bbs.util.uploadReviewFileUtils;

@Controller
public class ReviewController 
{
	private static final Logger logger=LoggerFactory.getLogger(ReviewController.class);
	@Inject
	private ReviewService reviewService;
	@Inject
	private StudyRoomService studyRoomService;
	@Inject
	private test_InfoService test_InfoService;
	
	@Resource(name="uploadPath")
	private String uploadPath;
	
	@RequestMapping(value="uploadVideo", method=RequestMethod.GET)
	public String uploadVideoGET(Model model,HttpSession session,@RequestParam("ext_id") String ext_id) throws Exception
	{
		//String ext_id=(String) session.getAttribute("ext_id");
		model.addAttribute("ext_id",ext_id);
		
		int countPostId=reviewService.selectPostId(ext_id);
		String postId="";
		if(countPostId>0)
		{
			postId=reviewService.getPostId(ext_id); //P110111500
			String p1=postId.substring(0,8);
			System.out.println(p1);
			
			String p2=postId.substring(8,10);
			System.out.println(p2);
			
			int p3=Integer.parseInt(p2);
			String p4="";
			if(p3<9)
			{
				p3++;
				p4=0+Integer.toString(p3);
				System.out.println(p4);
			}
			else
			{
				p3++;
				p4=Integer.toString(p3);
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
		reviewService.postingItem(vo);
		return "redirect:/listAll?ext_id="+ext_id;
	}
	
	@RequestMapping(value="listAll", method=RequestMethod.GET) // 다시보기 게시판 리스트
	public String reviewList(Model model,HttpSession session, @RequestParam("ext_id") String ext_id) throws Exception
	{	
		model.addAttribute("TImage",test_InfoService.TImage(ext_id));
		model.addAttribute("user_id", session.getAttribute("id"));
		model.addAttribute("list",reviewService.listAll(ext_id));
		model.addAttribute("ext_id",ext_id);
		//return "reviewList";
		return "reviewListPage";
	}
	
	/*@RequestMapping(value="boardDetail", method=RequestMethod.GET)
	public ModelAndView boardDetail(@RequestParam String post_id) throws Exception
	{
		//fileName을 모델에 담아서 streamView를 반환
		ModelAndView mav=new ModelAndView();
		mav.setViewName("/boardDetail");
		mav.addObject("dto",service.listOne(post_id));
		return mav;
	}*/
	
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

//	@RequestMapping("/displayVideoFile") 이거 시스템적 에러!
//	public String getContentMediaVideo(String fileName, HttpServletRequest request, HttpServletResponse response) throws Exception
//	{
//		File file = new File(fileName);		
//		RandomAccessFile randomFile = new RandomAccessFile(file, "r");
//		
//		long rangeStart = 0; //요청 범위의 시작 위치
//		long rangeEnd = 0; //요청 범위의 끝 위치
//		boolean isPart=false; //부분 요청일 경우 true, 전체 요청의 경우 false
//		
//		try
//		{
//			long movieSize = randomFile.length();
//			String range= request.getHeader("range");
//			
//			if(range!=null)
//			{
//				if(range.endsWith("-"))
//				{
//					range = range+(movieSize-1);
//				}
//				int idxm = range.trim().indexOf("-"); 
//				rangeStart = Long.parseLong(range.substring(6,idxm)); 
//				rangeEnd = Long.parseLong(range.substring(idxm+1));
//				if(rangeStart > 0)
//				{
//					isPart=true;
//				}
//			}
//			else
//			{
//				rangeStart = 0;
//				rangeEnd = movieSize - 1;
//			}
//			long partSize = rangeEnd - rangeStart+1;
//			
//			response.reset();
//			
//			response.setStatus(isPart?206:200);
//			response.setContentType("video/mp4");
//			
//			response.setHeader("Content-Range", "bytes "+rangeStart+"-"+rangeEnd+"/"+movieSize); 
//			response.setHeader("Accept-Ranges", "bytes"); 
//			response.setHeader("Content-Length", ""+partSize);
//			
//			OutputStream out = response.getOutputStream();
//			
//			randomFile.seek(rangeStart);
//			int bufferSize = 8*1024;
//			byte[] buf = new byte[bufferSize];
//			do
//			{
//				int block = partSize > bufferSize ? bufferSize : (int)partSize; 
//				int len = randomFile.read(buf, 0, block); 
//				out.write(buf, 0, len); 
//				partSize -= block;
//			}while(partSize>0);
//		}
//		catch(Exception e)
//		{
//			e.printStackTrace();
//		}
//		finally 
//		{
//			randomFile.close();
//		}
//		return null;
//	}
	
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
	
	@RequestMapping(value="/boardDetail", method=RequestMethod.GET)
	public ModelAndView thumb(@RequestParam String post_id,HttpSession session,@RequestParam("ext_id") String ext_id) throws Exception
	{
		String user_id = (String) session.getAttribute("id");
		//회원 등급
		String user_grade = studyRoomService.selectGrade(user_id);
		
		//fileName을 모델에 담아서 streamView를 반환
		ModelAndView mav=new ModelAndView();
		mav.setViewName("thumbNail");
		mav.addObject("dto",reviewService.listOne(post_id));
		mav.addObject("thumb_info",reviewService.selectAllThumbInfo(post_id));
		mav.addObject("user_grade",user_grade);
		mav.addObject("ext_id",ext_id);
		return mav;
	}
	
	@ResponseBody
	@RequestMapping(value="/thumb", method=RequestMethod.POST)
	public Object thumb(@RequestBody JSONObject json) throws Exception
	{	
		//String curT = json.get("curT").toString();
		String curT2 = String.valueOf(json.get("curT"));
		int curT = Integer.parseInt(curT2);
		System.out.println(curT2);
		String location = json.get("location").toString();
		String destination = json.get("destination").toString();
		System.out.println("추출시간 : "+curT+"\n"+"추출할 영상 : "+location+"\n"+"저장할 지역 : "+destination);
		
		//섬네일 번호 만들자!
		String post_id = json.get("post_id").toString();
		System.out.println(post_id);
		
		thumb_infoVO thumbVO=new thumb_infoVO();
		int thumbCount = reviewService.selectThumbId(post_id);
		thumb_infoVO thumbInfo = reviewService.thumb_infoOne(post_id);
		String thumb_id="";
		if(thumbCount>0)
		{
			String t1 = thumbInfo.getThumb_id().substring(0,10); //앞에 게시코드 부분
			String t2 = thumbInfo.getThumb_id().substring(10,12); //뒤에 00~09까지 증가해야하는 부분
			int t3 = Integer.parseInt(t2); //t2를 숫자로 형변환
			String t4 = ""; // 숫자로 형변환시 00은 0이되고 01은 1이 되므로 앞에 0을 붙여서 다시 만든 t3
			if(t3<9)
			{
				t3++;
				t4=0+Integer.toString(t3);
			}
			else
			{
				t3++;
				t4=Integer.toString(t3);
			}
			thumb_id=t1+t4;
		}
		else if(thumbCount==0)
		{
			thumb_id=post_id+"00";
			
		}
		//System.out.println("안뽑힘?"+thumb_id);
		//섬네일 번호 끝
		if(curT != 0 && location != null && destination!=null)
		{
			String result = uploadReviewFileUtils.extractImage(location, curT, destination,post_id);
			
			//DB등록
			thumbVO.setThumb_id(thumb_id);
			thumbVO.setPost_id(post_id);
			thumbVO.setThumb_name(result);
			thumbVO.setThumb_time(curT);
			thumbVO.setThumb_memo(null);
			reviewService.insertThumbInfo(thumbVO);
			//끝
			//return result;
			return result;
		}
		return null;	
	}
}
