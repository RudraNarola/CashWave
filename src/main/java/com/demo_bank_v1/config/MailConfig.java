package com.demo_bank_v1.config;

import org.springframework.context.annotation.Bean;
import org.springframework.mail.javamail.JavaMailSenderImpl;

import java.util.Properties;

public class MailConfig {
    @Bean
    public static JavaMailSenderImpl getMailConfig(){
        JavaMailSenderImpl emailConfig = new JavaMailSenderImpl();
        // for Set Properties:
        Properties props = emailConfig.getJavaMailProperties();
        props.put("mail.transport.protocol","smtp");
        props.put("mail.smtp.auth","true");
        props.put("mail.smtp.starttls.enable",true);
        props.put("mail.debug","true");

        // Set Mail Credentials:
        emailConfig.setHost("localhost");
        emailConfig.setPort(25);
        emailConfig.setUsername("zoro@shadow.com");
        emailConfig.setPassword("zoro123");
        return emailConfig;

    }

    //end
}
