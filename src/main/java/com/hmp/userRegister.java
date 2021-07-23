package com.hmp;
import com.hmp.beans.UserInfo;
import com.hmp.dao.UserRegisterDAO;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
@WebServlet("/register")
public class userRegister extends HttpServlet {
    public void service(HttpServletRequest request, HttpServletResponse response) throws IOException {
        UserInfo userinfo = new UserInfo();
        userinfo.setFirstName(request.getParameter("fName"));
        userinfo.setLastName(request.getParameter("lName"));
        userinfo.setEmail(request.getParameter("email"));
        userinfo.setPhone(request.getParameter("phone"));
        userinfo.setDateOfBirth(request.getParameter("dob"));
        userinfo.setUserName(request.getParameter("userId"));
        String pass1 = request.getParameter("pass1");
        String pass2 = request.getParameter("pass2");
   if(pass1.equals(pass2)){
            userinfo.setPassword(pass1);
        }
   else
   {
       System.out.println("Password does not Match!");
       System.exit(0);
   }
        UserRegisterDAO reg = new UserRegisterDAO();
        reg.conn(userinfo);
        PrintWriter out = response.getWriter();
        out.println("Successfully Saved! Now you can login!");
    }
}
