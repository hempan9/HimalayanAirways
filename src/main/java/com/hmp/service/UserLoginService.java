package com.hmp.service;
import com.hmp.beans.UserInfo;
import com.hmp.dao.UserLoginDAO;
import java.util.List;
public class UserLoginService {
    private UserLoginDAO userDAO;
    public UserLoginService(){
        userDAO =new UserLoginDAO();
    }
    public UserInfo getUserByUserName(String userName){
        List<UserInfo> availableUsers = userDAO.getUserName();
        for (UserInfo user : availableUsers){
            if (user.getUserName().equalsIgnoreCase(userName.toLowerCase())){
                return user;
            }
        }
        return null;
    }
    public boolean authenticateUser(UserInfo usr, String userName, String password){
        if(usr!=null){
            if (usr.getUserName().toLowerCase().equals(userName.toLowerCase())&&usr.getPassword().equals(password))
                return true;
        }
        return false;

    }
}
