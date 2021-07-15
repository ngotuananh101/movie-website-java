/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tuananh.api;

import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;

/**
 *
 * @author ngotu
 */
public class SendMail {

    final String user = "no-reply@netfi.me";//change accordingly  
    final String password = "HuongAnh1509";//change accordingly  

    String to = "ngotuananh2101@gmail.com";//change accordingly  

    //Get the session object  
    public Session getSession() {
        Properties prop = new Properties();
        prop.put("mail.smtp.auth", true);
        prop.put("mail.smtp.starttls.enable", "true");
        prop.put("mail.smtp.host", "mail.netfi.me");
        prop.put("mail.smtp.port", "587");
        prop.put("mail.smtp.ssl.trust", "mail.netfi.me");

        Session session = Session.getDefaultInstance(prop,
                new javax.mail.Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(user, password);
            }
        });
        return session;
    }

    //Compose the message  
    public int Send(String mail, String subject, String content) {
        try {
            MimeMessage message = new MimeMessage(getSession());
            message.setFrom(new InternetAddress(user));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            message.setSubject(subject);
            message.setContent(content, "text/html");

            //send the message  
            Transport.send(message);
            return 1;

        } catch (MessagingException e) {
            return 0;

        }
    }
}
