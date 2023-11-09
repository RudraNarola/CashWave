package com.demo_bank_v1.mailMessenger;

import com.demo_bank_v1.config.MailConfig;
import jakarta.mail.MessagingException;
import jakarta.mail.internet.MimeMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;

public class MailMessenger {
    public static void htmlEmailMessenger(String from,String toMail,String subject,String body) throws MessagingException {
        //Get Mail Config:
        JavaMailSender sender = MailConfig.getMailConfig();
        //Set Mine Message:
        MimeMessage message = sender.createMimeMessage();
        //Set Mme Message Helper:
        MimeMessageHelper htmlMessage = new MimeMessageHelper(message,true);
        // Set Mail properties
        htmlMessage.setTo(toMail);
        htmlMessage.setFrom(from);
        htmlMessage.setSubject(subject);
        htmlMessage.setText(body,true);
        // Send Message:
        sender.send(message);

    }
    //End of HTMl Email Message method
}
