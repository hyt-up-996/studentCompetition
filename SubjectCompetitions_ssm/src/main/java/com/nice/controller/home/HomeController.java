package com.nice.controller.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 文件名：HomeController
 * 创建者: ZWB
 * 创建时间：2020/2/1310:22
 * 描述：TODO
 */

@Controller
public class HomeController {

    @RequestMapping(value = "/")
    public String index(){

        return "Home/index";
    }


}
