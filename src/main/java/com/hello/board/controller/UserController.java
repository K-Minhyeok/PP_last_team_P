package com.hello.board.controller;

import com.hello.board.config.UserVO;
import com.hello.board.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/login")
public class UserController {

    @Autowired
    UserService service;

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @PostMapping("/loginOk")
    public String loginCheck(HttpSession session, UserVO vo) {
        String returnUrl = "";
        if(session.getAttribute("login") != null) {
            session.removeAttribute("login");
        }


        UserVO loginVO = service.getUser(vo);

        if(loginVO != null) {
            System.out.println("로그인 성공");
            session.setAttribute("login", loginVO);
            returnUrl = "redirect:/board/posts";
        } else {
            System.out.println("로그인 실패");
            returnUrl = "redirect:/login/login";
        }

        return returnUrl;
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/login/login";
    }
}
