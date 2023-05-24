package com.mycom.myapp.service;

import com.mycom.myapp.pojo.CustomerInfo;

import java.util.List;

public interface CustomerInfoService {
    int deleteByPrimaryKey(Integer id);

    int insert(CustomerInfo record);

    CustomerInfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKey(CustomerInfo record);

    List<CustomerInfo> getCustomerInfoList();
    List<CustomerInfo> queryCustomerInfoList(CustomerInfo customerInfo);

}
