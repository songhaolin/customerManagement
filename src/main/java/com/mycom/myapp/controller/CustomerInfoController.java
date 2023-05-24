package com.mycom.myapp.controller;

import com.mycom.myapp.pojo.CustomerInfo;
import com.mycom.myapp.service.CustomerInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @Description:
 * @Author: shl
 * @Date: 2023/5/24
 **/
@Controller
@RequestMapping("/customerInfo")
public class CustomerInfoController {

    @Autowired
    private CustomerInfoService customerInfoService;

    @RequestMapping("/toCustomerInfo")
    public String toCustomerInfo(Model model) {
        List<CustomerInfo> infoList = customerInfoService.getCustomerInfoList();
        model.addAttribute("infoList",infoList);
        return "customerInfo";
    }

    @RequestMapping("/queryCustomerInfo")
    public String queryCustomerInfo(CustomerInfo customerInfo , Model model) {

        List<CustomerInfo> infoList = customerInfoService.queryCustomerInfoList(customerInfo);
        model.addAttribute("infoList",infoList);
        return "customerInfo";
    }

}
