package cn.com.zc.util;

import java.util.*;

import javax.mail.*;
import javax.mail.internet.*;


public class Mymail{
	private ResourceBundle resources = ResourceBundle
	.getBundle("mail");
	private String SMTPServer ;
	private String from;
	private String subject;
	private String content;
	private String user;
	private String password;
	public Mymail(){
		this.SMTPServer = resources.getString("smtp");
		this.from = resources.getString("mail");
		this.subject = new String();
		this.content = new String();
		this.user = resources.getString("user");
		this.password = resources.getString("password");
	}
	public void sendMailTo(String to,String subject,String contents){
		try
		{
			Properties props = new Properties();
			Session sendMailSession;
			Store store;
			Transport transport;
			Random random = new Random();
			//String mail = "nsti@escience.gov.cn";
			//this.setFrom(mail);
    		//this.setUser(mail);
    		//this.setPassword("bjht888888");
    		//this.setSMTPServer("smtp.qiye.163.com");
    		this.setSubject(subject);
			
    		sendMailSession=Session.getInstance(props, new mailcheck(this.user,this.password));
			props.put("mail.smtp.host", SMTPServer);
			props.setProperty("mail.smtp.auth", "true");
			sendMailSession.setDebug(true);
			MimeMessage newMessage = new MimeMessage(sendMailSession);
			newMessage.setFrom(new InternetAddress(from));
			newMessage.setSubject(subject);
			newMessage.setSentDate(new Date());
			newMessage.setText(contents);
			
			StringTokenizer token=new StringTokenizer(to, ",");
			InternetAddress[] addrArr=new InternetAddress[token.countTokens()];
			int i = 0;
			while(token.hasMoreTokens()){
				addrArr[i] = new InternetAddress(token.nextToken().toString());
				i++;
			}
			
			transport = sendMailSession.getTransport("smtp");
			transport.connect(SMTPServer, user, password);
			newMessage.setRecipients(Message.RecipientType.TO, addrArr);
			transport.send(newMessage);
		}
		catch(Exception e) {
			System.out.println(e);
		}
	}
	
	public static void main(String[] args){
		Mymail mymail = new Mymail();
		mymail.sendMailTo("171831550@qq.com", "", "test");
	}
	
	//****************************************************************************
	//****************************************************************************
	
	public String getSMTPServer(){
		return SMTPServer;
	}
	public void setSMTPServer(String SMTPServer) {
		this.SMTPServer=SMTPServer;
	}
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
