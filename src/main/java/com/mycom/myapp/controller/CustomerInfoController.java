package com.mycom.myapp.controller;

import com.mycom.myapp.pojo.CustomerInfo;
import com.mycom.myapp.service.CustomerInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
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
        return "customerInfo/customerInfo";
    }

    @RequestMapping("/queryCustomerInfo")
    public String queryCustomerInfo(CustomerInfo customerInfo , Model model) {
        List<CustomerInfo> infoList = customerInfoService.queryCustomerInfoList(customerInfo);
        model.addAttribute("infoList",infoList);
        return "customerInfo/customerInfo";
    }

    @RequestMapping("/toUpdateOrAddCustomerInfo")
    public String toUpdateOrAddCustomerInfo(CustomerInfo customerInfo,Model model) {
        CustomerInfo customerInfo1 = customerInfoService.selectByPrimaryKey(customerInfo.getId());
        model.addAttribute("customerInfo",customerInfo1);
        return "customerInfo/updateOrAddCustomerInfo";
    }

    @RequestMapping("/updateOrAddCustomerInfo")
    public String updateCustomerInfo(CustomerInfo customerInfo , Model model) {
        int i = 0;
        if (customerInfo.getId()==null){
             i = customerInfoService.insert(customerInfo);
        }else {
            i = customerInfoService.updateByPrimaryKey(customerInfo);
        }
        if (i>0) {
            model.addAttribute("customerInfo", customerInfo);
            model.addAttribute("errormessage", "操作成功！");
            return "customerInfo/updateOrAddCustomerInfo";
        }else {
            model.addAttribute("customerInfo", customerInfo);
            model.addAttribute("errormessage", "操作失败");
            return "customerInfo/updateOrAddCustomerInfo";
        }
    }

    @RequestMapping("/deleteCustomerInfo")
    public String deleteCustomerInfo(CustomerInfo customerInfo , Model model) {
        int i = customerInfoService.deleteByPrimaryKey(customerInfo.getId());
        return toCustomerInfo(model);

    }
    @RequestMapping("/deleteCustomerInfoBatch")
    public String deleteCustomerInfoBatch(Model model, String... ids) {
        if (!StringUtils.isEmpty(ids)){
            customerInfoService.deleteCustomerInfoBatch(ids);
        }
        return toCustomerInfo(model);
    }

}
