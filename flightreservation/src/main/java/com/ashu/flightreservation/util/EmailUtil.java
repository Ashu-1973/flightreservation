package com.ashu.flightreservation.util;

import java.io.File;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;

@Component
public class EmailUtil {
	
	@Value("${com.ashu.flightreservation.itinerary.email.body}")
	private  String ITINERARY_BODY;
	
	@Value("${com.ashu.flightreservation.itinerary.email.subject}")
	private String ITINERARY_SUBJECT;
	
	@Autowired
	private JavaMailSender sender;
	
	public void sendItinerary(String toAddress,String filePath) {
		
		MimeMessage message = sender.createMimeMessage();
		try {
		MimeMessageHelper mimeMessageHelper;
		mimeMessageHelper = new MimeMessageHelper(message,true);
		mimeMessageHelper.setTo(toAddress);
		mimeMessageHelper.setSubject(ITINERARY_SUBJECT);
		mimeMessageHelper.setText(ITINERARY_BODY);
		mimeMessageHelper.addAttachment("Itinerary",new File(filePath));
		sender.send(message);
		
	
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		
		
		
	}
	

}
