package yjc.wdb.bbs.util;

import java.io.File;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.FileCopyUtils;

public class uploadReviewFileUtils 
{
	private static final Logger logger=
			LoggerFactory.getLogger(uploadReviewFileUtils.class);
	
	public static String uploadFile(String uploadPath, String originalName, byte[] fileData) throws Exception
	{
		//UUID uid = UUID.randomUUID();
		
		String savedName=originalName;
		//String savedName=originalName;
		
		String savedPath = calcPath(uploadPath);
		//String savedPath=uploadPath;
		
		File target= new File(savedPath,savedName);
		//File target= new File(savedPath,savedName);
		
		if(target.getParentFile().exists()==false)
		{
			target.getParentFile().mkdirs();
		}
		FileCopyUtils.copy(fileData, target);
		
		return savedPath+File.separator+savedName;
	}
	private static String calcPath(String uploadPath)
	{
		Calendar cal= Calendar.getInstance();
		
		String yearPath= File.separator+cal.get(Calendar.YEAR);
		
		String monthPath=new DecimalFormat("00").format(cal.get(Calendar.MONTH)+1);
		
		String datePath=new DecimalFormat("00").format(cal.get(Calendar.DATE));
		
		String realPath=uploadPath+yearPath+monthPath+datePath;
		
		return realPath;
	}
}
