package com.nice.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/*
 *项目名: SubjectCompetitions
 *文件名: AdminController
 *创建者: ZWB
 *创建时间:2020/2/11 15:33
 *描述: TODO

 */
@Controller
public class AdminController {
    /**
     * 直接跳转到后台页面
     * 中间会有一个拦截器再拦截是否登录，没有登陆直接跳转登陆页面，登陆后跳转后台
     */
    @RequestMapping("/admin")
    public  String index(){

        return "Admin/admin";
    }

    /**
     * 登陆页面显示
     *
     */
    @RequestMapping("/login")
    public String loginPage(){

        return "Admin/login";
    }
}
