package yjc.wdb.Highlighter;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.RandomAccessFile;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import yjc.wdb.Highlighter.domain.reviewVO;
import yjc.wdb.Highlighter.service.ReviewService;
import yjc.wdb.bbs.util.MediaUtils;
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
		model.addAttribute("list",service.listAll(ext_id));
		model.addAttribute("ext_id",ext_id);
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

	@RequestMapping("/displayVideoFile")
	public String getContentMediaVideo(String fileName, HttpServletRequest request, HttpServletResponse response) throws Exception
	{
		File file = new File(fileName);		
		RandomAccessFile randomFile = new RandomAccessFile(file, "r");
		
		long rangeStart = 0; //요청 범위의 시작 위치
		long rangeEnd = 0; //요청 범위의 끝 위치
		boolean isPart=false; //부분 요청일 경우 true, 전체 요청의 경우 false
		
		try
		{
			long movieSize = randomFile.length();
			String range= request.getHeader("range");
			
			if(range!=null)
			{
				if(range.endsWith("-"))
				{
					range = range+(movieSize-1);
				}
				int idxm = range.trim().indexOf("-"); 
				rangeStart = Long.parseLong(range.substring(6,idxm)); 
				rangeEnd = Long.parseLong(range.substring(idxm+1));
				if(rangeStart > 0)
				{
					isPart=true;
				}
			}
			else
			{
				rangeStart = 0;
				rangeEnd = movieSize - 1;
			}
			long partSize = rangeEnd - rangeStart+1;
			
			response.reset();
			
			response.setStatus(isPart?206:200);
			response.setContentType("video/mp4");
			
			response.setHeader("Content-Range", "bytes "+rangeStart+"-"+rangeEnd+"/"+movieSize); 
			response.setHeader("Accept-Ranges", "bytes"); 
			response.setHeader("Content-Length", ""+partSize);
			
			OutputStream out = response.getOutputStream();
			
			randomFile.seek(rangeStart);
			int bufferSize = 8*1024;
			byte[] buf = new byte[bufferSize];
			do
			{
				int block = partSize > bufferSize ? bufferSize : (int)partSize; 
				int len = randomFile.read(buf, 0, block); 
				out.write(buf, 0, len); 
				partSize -= block;
			}while(partSize>0);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		finally 
		{
			randomFile.close();
		}
		return null;
	}
	
	/*@ResponseBody
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
	  }*/
}
