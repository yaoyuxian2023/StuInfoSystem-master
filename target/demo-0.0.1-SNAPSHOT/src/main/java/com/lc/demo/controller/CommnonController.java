package com.lc.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * @ClassName CommnonController
 * @Deacription TODO
 * @Author daier
 * @Date 2023
 * @Version 1.0
 **/
@Controller
public class CommnonController {

    @RequestMapping("/logout")
    public String logout(HttpSession session)
    {
        session.invalidate();
        return "redirect:/index.html";
    }

}