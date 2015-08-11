package cn.com.zc.util;

import java.util.Date;  
import java.util.Properties;  
import java.util.StringTokenizer;  
 
import javax.mail.Authenticator;  
import javax.mail.Transport;  
import javax.mail.Message.RecipientType;  
import javax.mail.PasswordAuthentication;  
import javax.mail.Session;  
import javax.mail.internet.InternetAddress;  
import javax.mail.internet.MimeMessage;  
import javax.swing.JOptionPane;  

public class mailcheck extends Authenticator {
	 private String user;  
	    private String pwd;  
	 
	    public mailcheck(String user, String pwd) {  
	        this.user = user;  
	        this.pwd = pwd;  
	    }  
	 
	    @Override 
	    protected PasswordAuthentication getPasswordAuthentication() {  
	        return new PasswordAuthentication(user, pwd);  
	    }  
}
