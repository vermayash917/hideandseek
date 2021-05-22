package com.example.HIDEANDSEEK;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.IOException;

@WebServlet(name = "Degrave_Servlet", value = "/Degrave_Servlet")

//Setting MAx and min Size for file input
@MultipartConfig(fileSizeThreshold = 1024*1024,maxFileSize = 5*1024*1024)

public class Degrave_Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //target folder path
        String directory = getServletContext().getRealPath("/");
        //upload file
        Part part = request.getPart("file");
        //getting file name
        String file_name = part.getSubmittedFileName();
        //saving in target folder
        part.write(directory+file_name);

        //Degraving message from image
        String message = Image.Degrave(directory+file_name);

        //For deleting file in target folder
        File myObj = new File(directory+file_name);
        if (myObj.delete()) {
            System.out.println("Deleted the file: " + myObj.getName());
        } else {
            System.out.println("Failed to delete the file.");
        }

        //sending data to jsp for setting value
        request.setAttribute("degrave_text",message);
        RequestDispatcher rd = request.getRequestDispatcher("/degrave.jsp");rd.forward(request, response);
    }
}