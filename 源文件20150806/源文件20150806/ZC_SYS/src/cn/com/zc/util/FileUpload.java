package cn.com.zc.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Calendar;
import java.util.List;


public class FileUpload {

	// 上传文件存放路径
	private final static String UPLOADDIR = "/upload";
	// 上传文件集合

	// 执行上传功能
	public void uploadFile(File file,String realPath,String fileName) throws FileNotFoundException, IOException {
		try {
			InputStream in = new FileInputStream(file);
			String dir = realPath;
			File fileLocation = new File(dir);
			// 此处也可以在应用根目录手动建立目标上传目录
			if (!fileLocation.exists()) {
				boolean isCreated = fileLocation.mkdir();
				if (!isCreated) {
					// 目标上传目录创建失败,可做其他处理,例如抛出自定义异常等,一般应该不会出现这种情况。
					return;
				}
			}
			File uploadFile = new File(dir, fileName);
			OutputStream out = new FileOutputStream(uploadFile);
			byte[] buffer = new byte[1024 * 1024];
			int length;
			while ((length = in.read(buffer)) > 0) {
				out.write(buffer, 0, length);
			}
			in.close();
			out.close();
		} catch (FileNotFoundException ex) {
			System.out.println("上传失败!");
			ex.printStackTrace();
		} catch (IOException ex) {
			System.out.println("上传失败!");
			ex.printStackTrace();
		}
	}
	//获取文件名的扩展名
	public String getExtName(String fileName) {
		String[] s;
		if (fileName != null && !fileName.equals("")){
			s = fileName.split("\\.");
			if (s.length <= 1)
				return "";
			else{
				return s[s.length -1];	
			}
		}
		else{
			return "";
		}

	}
	
	//按时间创建并获取逻辑路径
	public String logicPath(String base) {
		Calendar c = Calendar.getInstance();//可以对每个时间域单独修改
		int year = c.get(Calendar.YEAR); 
		int month = c.get(Calendar.MONTH); 
		int date = c.get(Calendar.DATE); 
		int hour = c.get(Calendar.HOUR_OF_DAY); 
		int minute = c.get(Calendar.MINUTE); 
		int second = c.get(Calendar.SECOND);
		String lPath = "/" + year +"/"+ month + "/" + date +"/" + hour +"/" + minute;
		File fileLocation;
		// 此处也可以在应用根目录手动建立目标上传目录
		fileLocation = new File(base);
		if (!fileLocation.exists()) {
			boolean isCreated = fileLocation.mkdir();
			if (!isCreated) {
				return "";
			}
		}
		
		String[] s = lPath.split("/");
		for(String ss:s){
			if (!ss.equals("")){
				base = base + "/" + ss;
				fileLocation = new File(base);
				if (!fileLocation.exists()) {
					boolean isCreated = fileLocation.mkdir();
					if (!isCreated) {
						return "";
					}
				}
			}
		}
		
		return lPath; 
	}
	
	//按时间获取逻辑路径
	public String getLogicPath(String base) {
		Calendar c = Calendar.getInstance();//可以对每个时间域单独修改
		int year = c.get(Calendar.YEAR); 
		int month = c.get(Calendar.MONTH); 
		int date = c.get(Calendar.DATE); 
		int hour = c.get(Calendar.HOUR_OF_DAY); 
		int minute = c.get(Calendar.MINUTE); 
		int second = c.get(Calendar.SECOND);
		String lPath = "/" + year +"/"+ month + "/" + date +"/" + hour +"/" + minute;
		return lPath; 
	}
}