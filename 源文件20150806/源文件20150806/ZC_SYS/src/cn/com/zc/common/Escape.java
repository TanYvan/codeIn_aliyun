package cn.com.zc.common;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

/************************
 * 
 * 解决中文乱码问题，在前台访问的时候参数格式为escape（参数），后台直接调用本文件的unescape即可解码
 * @author haohaiyang
 *
 */
/** 
MODIFY BEGIN HAOHAIYANG,ADD,      
PICC201304-IMS-010,解码页面往后台传参时乱码的问题
*/
/** 
   MODIFY BY GUOYONGGANG,UPD,      
   PICC201304-IMS-010,原来的方法有局限。例如“主管会计岗/会计核算岗”经过js端escape和java端的unescape就把反斜杠给过滤掉了，现在修改方法
   2013-6-8
*/
public class Escape {
	public static String escape(String src) {
		int i;
		char j;
		StringBuffer tmp = new StringBuffer();
		tmp.ensureCapacity(src.length() * 6);
		for (i = 0; i < src.length(); i++) {
			j = src.charAt(i);
			if (Character.isDigit(j) || Character.isLowerCase(j)
					|| Character.isUpperCase(j))
				tmp.append(j);
			else if (j < 256) {
				tmp.append("%");
				if (j < 16)
					tmp.append("0");
				tmp.append(Integer.toString(j, 16));
			} else {
				tmp.append("%u");
				tmp.append(Integer.toString(j, 16));
			}
		}
		return tmp.toString();
	}

	public static String unescape(String src) {
		StringBuffer tmp = new StringBuffer();
		tmp.ensureCapacity(src.length());
		int lastPos = 0, pos = 0;
		char ch;
		while (lastPos < src.length()) {
			pos = src.indexOf("%", lastPos);
			if (pos == lastPos) {
				if (src.charAt(pos + 1) == 'u') {
					ch = (char) Integer.parseInt(src
							.substring(pos + 2, pos + 6), 16);
					tmp.append(ch);
					lastPos = pos + 6;
				} else {
					ch = (char) Integer.parseInt(src
							.substring(pos + 1, pos + 3), 16);
					tmp.append(ch);
					lastPos = pos + 3;
				}
			} else {
				if (pos == -1) {
					tmp.append(src.substring(lastPos));
					lastPos = src.length();
				} else {
					tmp.append(src.substring(lastPos, pos));
					lastPos = pos;
				}
			}
		}
		return tmp.toString();
	}
	public static String decode_utf8(String arg){
		String r = "";
		try {
			 r = URLDecoder.decode(arg, "utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return r;
	}
    public static void main(String[] args) {
        String stest = "中文1234 abcd[]()<+>,.~";
        System.out.println(stest);
        System.out.println(escape(stest));
        System.out.println(Escape.unescape(escape(stest)));
        String s = "你好";
        String s1="%u4E3B%u7BA1%u4F1A%u8BA1%u5C97/%u4F1A%u8BA1%u6838%u7B97%u5C97";
        System.out.println(escape(s));
        System.out.println(Escape.unescape(s1));
        
    }
}


