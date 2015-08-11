package cn.com.zc.common;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public class StringUtils extends org.apache.commons.lang.StringUtils
/*     */ {
	   public static String newString(String value, int length)
	   {
	/*  34 */     StringBuffer buffer = new StringBuffer();
	/*  35 */     if (value == null) {
	/*  36 */       return null;
	     }
	/*  38 */     for (int i = 0; i < length; ++i) {
	/*  39 */       buffer.append(value);
	     }
	/*  41 */     return buffer.toString();
	   }
	 
	   public static String newString(char ch, int length)
	   {
	/*  58 */     return newString(String.valueOf(ch), length);
	   }
	 
	   public static String copyString(String str, int copyTimes)
	   {
	/*  76 */     StringBuffer buffer = new StringBuffer();
	/*  77 */     if (str == null) {
	/*  78 */       return null;
	     }
	/*  80 */     for (int i = 0; i < copyTimes; ++i) {
	/*  81 */       buffer.append(str);
	     }
	/*  83 */     return buffer.toString();
	   }
	 
	   public static int getBytesLength(String str)
	   {
	/* 100 */     if (str == null) {
	/* 101 */       return -1;
	     }
	/* 103 */     return str.getBytes().length;
	   }
	 
	   public static int indexOf(String str, String subStr, int startIndex, int occurrenceTimes)
	   {
	/* 128 */     int foundCount = 0;
	/* 129 */     int index = startIndex;
	/* 130 */     int substrLength = subStr.length();
	/* 131 */     if (occurrenceTimes <= 0)
	/* 132 */       return -1;
	/* 133 */     if (str.length() - 1 < startIndex)
	/* 134 */       return -1;
	/* 135 */     if (subStr.equals(""))
	/* 136 */       return 0;
	/* 137 */     while (foundCount < occurrenceTimes) {
	/* 138 */       index = str.indexOf(subStr, index);
	/* 139 */       if (index == -1)
	/* 140 */         return -1;
	/* 141 */       ++foundCount;
	/* 142 */       index += substrLength;
	     }
	/* 144 */     return (index - substrLength);
	   }
	 
	   public static int indexOf(String str, String subStr, int occurrenceTimes)
	   {
	/* 166 */     return indexOf(str, subStr, 0, occurrenceTimes);
	   }
	 
	   public static int indexOf(String str, String subStr, int fromIndex, boolean caseSensitive)
	   {
	/* 193 */     if (!(caseSensitive)) {
	/* 194 */       return str.toLowerCase().indexOf(subStr.toLowerCase(), fromIndex);
	     }
	/* 196 */     return str.indexOf(subStr, fromIndex);
	   }
	 
	   public static String replace(String str, String searchStr, String replaceStr, boolean caseSensitive)
	   {
	/* 225 */     String result = "";
	/* 226 */     int i = 0;
	/* 227 */     int j = 0;
	/* 228 */     if (str == null) {
	/* 229 */       return null;
	     }
	/* 231 */     if (str.equals("")) {
	/* 232 */       return "";
	     }
	/* 234 */     if ((searchStr == null) || (searchStr.equals(""))) {
	/* 235 */       return str;
	     }
	/* 237 */     if (replaceStr == null) {
	/* 238 */       replaceStr = "";
	     }
	/* 240 */     while ((j = indexOf(str, searchStr, i, caseSensitive)) > -1) {
	/* 241 */       result = result + str.substring(i, j) + replaceStr;
	/* 242 */       i = j + searchStr.length();
	     }
	/* 244 */     result = result + str.substring(i, str.length());
	/* 245 */     return result;
	   }
	 
	   public static String replace(String str, String searchStr, String replaceStr)
	   {
	/* 272 */     return replace(str, searchStr, replaceStr, true);
	   }
	 
	   public static String replace(String str, char searchChar, String replaceStr)
	   {
	/* 298 */     return replace(str, searchChar + "", replaceStr, true);
	   }
	 
	   public static String replace(String str, int beginIndex, String replaceStr)
	   {
	/* 317 */     String result = null;
	/* 318 */     if (str == null) {
	/* 319 */       return null;
	     }
	/* 321 */     if (replaceStr == null) {
	/* 322 */       replaceStr = "";
	     }
	/* 324 */     result = str.substring(0, beginIndex) + replaceStr + str.substring(beginIndex + replaceStr.length());
	 
	/* 326 */     return result;
	   }
	 
	   public static String[] split(String originalString, int splitByteLength)
	   {
	/* 363 */     ArrayList list = new ArrayList();
	/* 364 */     String strText = "";
	/* 365 */     byte[] arrByte = null;
	/* 366 */     int intStartIndex = 0;
	/* 367 */     int intEndIndex = 0;
	/* 368 */     int index = 0;
	/* 369 */     int fixCount = 0;
	/* 370 */     String[] arrReturn = null;
	 
	/* 372 */     if (originalString == null) {
	/* 373 */       return new String[0];
	     }
	/* 375 */     if (originalString.equals("")) {
	/* 376 */       return new String[0];
	     }
	/* 378 */     if (originalString.trim().equals("")) {
	/* 379 */       return new String[] { "" };
	     }
	/* 381 */     if (splitByteLength <= 1) {
	/* 382 */       return new String[] { originalString };
	     }
	 
	/* 385 */     arrByte = originalString.getBytes();
	/* 386 */     intEndIndex = 0;
	     while (true)
	     {
	/* 389 */       intStartIndex = intEndIndex;
	/* 390 */       intEndIndex = intStartIndex + splitByteLength;
	 
	/* 392 */       if (intStartIndex >= arrByte.length) {
	         break;
	       }
	 
	/* 396 */       if (intEndIndex > arrByte.length) {
	/* 397 */         intEndIndex = arrByte.length;
	/* 398 */         strText = new String(arrByte, intStartIndex, intEndIndex - intStartIndex);
	 
	/* 400 */         list.add(strText);
	/* 401 */         break;
	       }
	 
	/* 404 */       fixCount = 0;
	/* 405 */       strText = new String(arrByte, intStartIndex, intEndIndex - intStartIndex);
	 
	/* 407 */       byte[] bytes = strText.getBytes();
	/* 408 */       if (bytes.length < splitByteLength) {
	/* 409 */         intEndIndex = intStartIndex + bytes.length;
	       }
	/* 411 */       for (index = intEndIndex - 1; (index >= intStartIndex) && 
	/* 412 */         (arrByte[index] != bytes[(index - intStartIndex)]); --index)
	       {
	/* 414 */         ++fixCount;
	       }
	 
	/* 421 */       if (fixCount > 0) {
	/* 422 */         if (fixCount >= intEndIndex) {
	/* 423 */           fixCount = 0;
	/* 424 */           System.out.println("split length " + splitByteLength + " is too small.");
	         }
	 
	/* 427 */         intEndIndex -= fixCount;
	 
	/* 430 */         strText = new String(arrByte, intStartIndex, intEndIndex - intStartIndex);
	       }
	 
	/* 433 */       list.add(strText);
	     }
	 
	/* 436 */     arrReturn = new String[list.size()];
	/* 437 */     list.toArray(arrReturn);
	 
	/* 439 */     return arrReturn;
	   }
	 
	   public static String[] split(String originalString, String delimiterString)
	   {
	/* 473 */     int index = 0;
	/* 474 */     String[] returnArray = null;
	/* 475 */     int length = 0;
	 
	/* 477 */     if ((originalString == null) || (delimiterString == null) || (originalString.equals("")))
	     {
	/* 479 */       return new String[0];
	     }
	 
	/* 482 */     if ((originalString.equals("")) || (delimiterString.equals("")) || (originalString.length() < delimiterString.length()))
	     {
	/* 484 */       return new String[] { originalString };
	     }
	 
	/* 487 */     String strTemp = originalString;
	/* 488 */     while ((strTemp != null) && (!(strTemp.equals("")))) {
	/* 489 */       index = strTemp.indexOf(delimiterString);
	/* 490 */       if (index == -1) {
	         break;
	       }
	/* 493 */       ++length;
	/* 494 */       strTemp = strTemp.substring(index + delimiterString.length());
	     }
	/* 496 */     returnArray = new String[++length];
	 
	/* 498 */     for (int i = 0; i < length - 1; ++i) {
	/* 499 */       index = originalString.indexOf(delimiterString);
	/* 500 */       returnArray[i] = originalString.substring(0, index);
	/* 501 */       originalString = originalString.substring(index + delimiterString.length());
	     }
	 
	/* 504 */     returnArray[(length - 1)] = originalString;
	/* 505 */     return returnArray;
	   }
	 
	   public static String rightTrim(String str)
	   {
	/* 520 */     if (str == null) {
	/* 521 */       return "";
	     }
	/* 523 */     int length = str.length();
	/* 524 */     for (int i = length - 1; i >= 0; --i) {
	/* 525 */       if (str.charAt(i) != ' ') {
	         break;
	       }
	/* 528 */       --length;
	     }
	/* 530 */     return str.substring(0, length);
	   }
	 
	   public static String leftTrim(String str)
	   {
	/* 545 */     if (str == null) {
	/* 546 */       return "";
	     }
	/* 548 */     int start = 0;
	/* 549 */     int i = 0; for (int n = str.length(); i < n; ++i) {
	/* 550 */       if (str.charAt(i) != ' ') {
	         break;
	       }
	/* 553 */       ++start;
	     }
	/* 555 */     return str.substring(start);
	   }
	 
	   public static String absoluteTrim(String str)
	   {
	/* 569 */     String result = replace(str, " ", "");
	/* 570 */     return result;
	   }
	 
	   public static String lowerCase(String str, int beginIndex, int endIndex)
	   {
	/* 590 */     StringBuffer buffer = new StringBuffer();
	/* 591 */     buffer.append(str.substring(0, beginIndex));
	/* 592 */     buffer.append(str.substring(beginIndex, endIndex).toLowerCase());
	/* 593 */     buffer.append(str.substring(endIndex));
	/* 594 */     return buffer.toString();
	   }
	 
	   public static String upperCase(String str, int beginIndex, int endIndex)
	   {
	/* 614 */     StringBuffer buffer = new StringBuffer();
	/* 615 */     buffer.append(str.substring(0, beginIndex));
	/* 616 */     buffer.append(str.substring(beginIndex, endIndex).toUpperCase());
	/* 617 */     buffer.append(str.substring(endIndex));
	/* 618 */     return buffer.toString();
	   }
	 
	   public static String lowerCaseFirstChar(String iString)
	   {
	/* 633 */     String newString = iString.substring(0, 1).toLowerCase() + iString.substring(1);
	 
	/* 635 */     return newString;
	   }
	 
	   public static String upperCaseFirstChar(String iString)
	   {
	/* 650 */     String newString = iString.substring(0, 1).toUpperCase() + iString.substring(1);
	 
	/* 652 */     return newString;
	   }
	 
	   public static int timesOf(String str, String subStr)
	   {
	/* 669 */     int foundCount = 0;
	/* 670 */     if (subStr.equals("")) {
	/* 671 */       return 0;
	     }
	/* 673 */     int fromIndex = str.indexOf(subStr);
	/* 674 */     while (fromIndex != -1) {
	/* 675 */       ++foundCount;
	/* 676 */       fromIndex = str.indexOf(subStr, fromIndex + subStr.length());
	     }
	/* 678 */     return foundCount;
	   }
	 
	   public static int timesOf(String str, char ch)
	   {
	/* 695 */     int foundCount = 0;
	/* 696 */     int fromIndex = str.indexOf(ch);
	/* 697 */     while (fromIndex != -1) {
	/* 698 */       ++foundCount;
	/* 699 */       fromIndex = str.indexOf(ch, fromIndex + 1);
	     }
	/* 701 */     return foundCount;
	   }
	 
	   public static Map<String, String> toMap(String str, String splitString)
	   {
	/* 716 */     Map map = Collections.synchronizedMap(new HashMap());
	 
	/* 718 */     String[] values = split(str, splitString);
	/* 719 */     for (int i = 0; i < values.length; ++i) {
	/* 720 */       String tempValue = values[i];
	/* 721 */       int pos = tempValue.indexOf("=");
	/* 722 */       String key = "";
	/* 723 */       String value = "";
	/* 724 */       if (pos > -1) {
	/* 725 */         key = tempValue.substring(0, pos);
	/* 726 */         value = tempValue.substring(pos + splitString.length());
	       } else {
	/* 728 */         key = tempValue;
	       }
	/* 730 */       map.put(key, value);
	     }
	/* 732 */     return map;
	   }
	 
	   public static String native2ascii(String str)
	   {
	/* 745 */     char[] ca = str.toCharArray();
	/* 746 */     StringBuffer buffer = new StringBuffer(ca.length * 6);
	/* 747 */     for (int x = 0; x < ca.length; ++x) {
	/* 748 */       char a = ca[x];
	/* 749 */       if (a > 255)
	/* 750 */         buffer.append("\\u").append(Integer.toHexString(a));
	       else {
	/* 752 */         buffer.append(a);
	       }
	     }
	/* 755 */     return buffer.toString();
	   }
	 
	   public static Map<String, String> sortEnglishNumberWord(Map<String, String> map)
	   {
	/* 766 */     Map resultMap = new LinkedHashMap(0);
	/* 767 */     Map tempMap = new LinkedHashMap(0);
	 
	/* 769 */Set<String> keys = map.keySet();
	 
	/* 771 */     int s = 2147483647;
	/* 772 */     for (String key : keys) {
	/* 773 */       if (key.indexOf("One") > -1)
	/* 774 */         tempMap.put(Integer.valueOf(1), key);
	/* 775 */       else if (key.indexOf("Two") > -1)
	/* 776 */         tempMap.put(Integer.valueOf(2), key);
	/* 777 */       else if (key.indexOf("Three") > -1)
	/* 778 */         tempMap.put(Integer.valueOf(3), key);
	/* 779 */       else if (key.indexOf("Four") > -1)
	/* 780 */         tempMap.put(Integer.valueOf(4), key);
	/* 781 */       else if (key.indexOf("Five") > -1)
	/* 782 */         tempMap.put(Integer.valueOf(5), key);
	/* 783 */       else if (key.indexOf("Six") > -1)
	/* 784 */         tempMap.put(Integer.valueOf(6), key);
	/* 785 */       else if (key.indexOf("Seven") > -1)
	/* 786 */         tempMap.put(Integer.valueOf(7), key);
	/* 787 */       else if (key.indexOf("Eight") > -1)
	/* 788 */         tempMap.put(Integer.valueOf(8), key);
	/* 789 */       else if (key.indexOf("Nine") > -1)
	/* 790 */         tempMap.put(Integer.valueOf(9), key);
	       else {
	/* 792 */         tempMap.put(Integer.valueOf(s), key);
	       }
	/* 794 */       --s;
	     }
	 
	/* 798 */     Set keyNum = tempMap.keySet();
	/* 799 */     Object[] num_obj = keyNum.toArray();
	/* 800 */     Integer[] nums = new Integer[num_obj.length];
	/* 801 */     Integer tempInt = Integer.valueOf(0);
	/* 802 */     for (int i = 0; i < num_obj.length; ++i) {
	/* 803 */       nums[i] = new Integer(num_obj[i].toString());
	     }
	/* 805 */     for (int i = 0; i < nums.length; ++i) {
	/* 806 */       for (int j = 0; j < nums.length - i - 1; ++j) {
	/* 807 */         if (nums[j].intValue() > nums[(j + 1)].intValue()) {
	/* 808 */           tempInt = nums[j];
	/* 809 */           nums[j] = nums[(j + 1)];
	/* 810 */           nums[(j + 1)] = tempInt;
	         }
	       }
	     }
	 
	/* 815 */     for (Integer num : nums) {
	/* 816 */       resultMap.put(tempMap.get(num), map.get(tempMap.get(num)));
	     }
	/* 818 */     return resultMap;
	   }
	 }
