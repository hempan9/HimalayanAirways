package com.hmp;


import com.hmp.service.UserLoginService;
import net.bytebuddy.implementation.bind.annotation.DefaultMethod;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
@WebServlet("/login")

public class LoginServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String userId = request.getParameter("uId");
        String userPass = request.getParameter("uPass");
        UserLoginService userLoginService = new UserLoginService();
        PrintWriter out = response.getWriter();
        if (userLoginService.authenticateUser(userLoginService.getUserByUserName(userId),userId,userPass)){
            //response.sendRedirect("/LoginSuccess");
            out.println("Credential Matched! \nWelcome to himalaya Airways.");

        }
        else{
            //response.sendRedirect("/LoginError");
            out.println("Error! Username or password Incorrect");
        }
    }

}
