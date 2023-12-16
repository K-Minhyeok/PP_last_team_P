package com.hello.board.service;

import com.hello.board.config.UserVO;
import com.hello.board.dao.UserDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    UserDAO userDAO;

    public UserVO getUser(UserVO userVO) {
        System.out.println("!!");
        return userDAO.getUser(userVO);
    }
}
