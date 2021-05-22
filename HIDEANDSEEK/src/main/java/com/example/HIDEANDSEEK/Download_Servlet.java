package com.example.HIDEANDSEEK;


import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.annotation.*;
import javax.servlet.http.Part;
import java.io.*;
import java.util.Properties;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "Download_Servlet", value = "/Download_Servlet")

//Setting MAx and min Size for file input
@MultipartConfig(fileSizeThreshold = 1024*1024,maxFileSize = 5*1024*1024)

public class Download_Servlet extends HttpServlet {

    //Initalizing Variables
    String  email="",name="",msg="";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //getting input text
        String text=request.getParameter("engrave_text");

        //target folder path
        String directory = getServletContext().getRealPath("/");

        //upload file
        Part part = request.getPart("file");

        //getting file name
        String file_name = part.getSubmittedFileName();

        //saving in target folder
        part.write(directory+file_name);

        //Engrave Image
        Image.Engrave(directory+file_name,text,directory+file_name);

        //to check if download or share button is pressed
        String check_button = request.getParameter("button_name");

        if (check_button.equals("Download")){

            //For Downloading Image
            PrintWriter out = response.getWriter();
            response.setContentType("APPLICATION/OCTET-STREAM");
            response.setHeader("Content-Disposition","attachment; filename=\"" + file_name + "\"");
            FileInputStream fileInputStream = new FileInputStream(directory + file_name);
            int i;
            while ((i=fileInputStream.read()) != -1) {
                out.write(i);
            }
            fileInputStream.close();
            out.close();

            //For deleting file in target folder
            File myObj = new File(directory+file_name);
            if (myObj.delete()) {
                System.out.println("Deleted the file: " + myObj.getName());
            } else {
                System.out.println("Failed to delete the file.");
            }
            response.reset();
            response.setHeader("Refresh", "1; URL=engrave.jsp");
        }
        else if(check_button.equals("Share")){

            //getting input email
            email=request.getParameter("user_email");

            //getting entered name
            name=request.getParameter("name");

            PrintWriter out = response.getWriter();
            response.setContentType("text/html");

            //body message to be present in mail
            msg = "<p>Hi "+name + " has sent you a secret message engraved in the image .To see the message go to hideandseek.com and degarve it</p>";

            final String username = "hideandseek.message@gmail.com";//default sending email id
            final String password = "hide.seek";//its  password

            //Creating instance of properties class
            Properties props = new Properties();
            //Mail  smpt authentication
            props.put("mail.smtp.auth", true);
            //clearing security
            props.put("mail.smtp.starttls.enable", true);
            //setting up gmail host(key, smpt server of gmail)
            props.put("mail.smtp.host", "smtp.gmail.com");
            //smtp port
            props.put("mail.smtp.port", "587");

            //creating session of gmail server
            Session session = Session.getInstance(props,
                    new javax.mail.Authenticator() {
                        @Override
                        protected PasswordAuthentication getPasswordAuthentication() {
                            return new PasswordAuthentication(username, password);
                        }
                    });
            try {
                // Create a default MimeMessage object.
                Message message = new MimeMessage(session);

                // Set From: header field of the header.
                message.setFrom(new InternetAddress(username));

                // Set To: header field of the header.
                message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));

                // Set Subject: header field
                message.setSubject("Secret Message from "+name);

                //to set multiple type of data
                Multipart multipart = new MimeMultipart("related");

                // first part (the html part adding to body)
                BodyPart messageBodyPart = new MimeBodyPart();
                String htmlText = msg;
                messageBodyPart.setContent(htmlText, "text/html");
                // add it
                multipart.addBodyPart(messageBodyPart);

                // second part (the image)
                MimeBodyPart attachPart = new MimeBodyPart();
                attachPart.attachFile(directory+file_name);

                // add image to the multipart
                multipart.addBodyPart(attachPart);

                // put everything together
                message.setContent(multipart);

                //out.println("Sending");
                Transport.send(message);

                //printing sent message
                out.println("<center><h2 style='color:red;'>Email Sent Successfully.</h2>");
                out.println("Thank you "+name+", your image with engraved message has been sent to "+email+".</center>");

                //For refreshing after 5 seconds to previous page
                response.setHeader("Refresh", "5; URL=engrave.jsp");

            } catch (Exception e) {
                out.println(e);
            }

            //For deleting file in target folder
            File myObj = new File(directory+file_name);
            if (myObj.delete()) {
                System.out.println("Deleted the file: " + myObj.getName());
            } else {
                System.out.println("Failed to delete the file.");
            }
        }
    }
}
