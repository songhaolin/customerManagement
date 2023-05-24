package com.mycom.myapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Description:
 * @Author: shl
 * @Date: 2023/5/24
 **/
@Controller
@RequestMapping("/customerCategory")
public class CustomerCategoryController {


    @RequestMapping("/customerCategory")
    public String toCustomerCategory() {
        return "customerCategory";
    }

}
