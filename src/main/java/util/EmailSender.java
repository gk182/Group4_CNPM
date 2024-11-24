package util;

import java.util.Properties;

import jakarta.mail.Session;
import jakarta.mail.Authenticator;
import jakarta.mail.MessagingException;
import jakarta.mail.PasswordAuthentication;

import jakarta.mail.*;
import jakarta.mail.internet.*;

public class EmailSender {

    // Phương thức gửi email
	 public static void sendEmail(String recipient, String otp) throws MessagingException {
	        String sender = "phamgiakhai278@gmail.com";  // Thay bằng email của bạn
	        String senderPassword = "ndrx hmgh kdyd fuvt"; // Thay bằng mật khẩu ứng dụng email của bạn
	        String host = "smtp.gmail.com";

	        // Cấu hình SMTP server
	        Properties properties = System.getProperties();
	        properties.put("mail.smtp.host", host);
	        properties.put("mail.smtp.port", "587");
	        properties.put("mail.smtp.auth", "true");
	        properties.put("mail.smtp.starttls.enable", "true");

	        // Tạo phiên làm việc SMTP
	        Session session = Session.getInstance(properties, new Authenticator() {
	            @Override
	            protected PasswordAuthentication getPasswordAuthentication() {
	                return new PasswordAuthentication(sender, senderPassword);
	            }
	        });

	        // Tạo email
	        Message message = new MimeMessage(session);
	        message.setFrom(new InternetAddress(sender));
	        message.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
	        message.setSubject("OTP Verification");
	        message.setText("Your OTP code is: " + otp);

	        // Gửi email
	        Transport.send(message);
	    }
	 public static void main(String[] args) {
	        // Địa chỉ email nhận OTP (Thay bằng email thực tế của người nhận)
	        String recipient = "khaipham182@gmail.com";
	        
	        // Mã OTP giả định (Thay bằng mã OTP thực tế)
	        String otp = "123456";

	        try {
	            // Gọi phương thức gửi email
	            EmailSender.sendEmail(recipient, otp);
	            
	            // Thông báo nếu email đã được gửi thành công
	            System.out.println("Email has been sent successfully to " + recipient);
	        } catch (MessagingException e) {
	            // In lỗi nếu không thể gửi email
	            System.err.println("Failed to send email: " + e.getMessage());
	        }
	    }

}
