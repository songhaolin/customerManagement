package com.mycom.myapp.service.impl;

import com.mycom.myapp.mapper.CustomerInfoDao;
import com.mycom.myapp.pojo.CustomerInfo;
import com.mycom.myapp.service.CustomerInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Description:
 * @Author: shl
 * @Date: 2023/5/24
 **/
@Service
public class CustomerInfoServiceImpl implements CustomerInfoService {
    @Autowired
    private CustomerInfoDao customerInfoDao;

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return customerInfoDao.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(CustomerInfo customerInfo) {
        return customerInfoDao.insert(customerInfo);
    }

    @Override
    public CustomerInfo selectByPrimaryKey(Integer id) {
        return customerInfoDao.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKey(CustomerInfo customerInfo) {
        return customerInfoDao.updateByPrimaryKey(customerInfo);
    }

    @Override
    public List<CustomerInfo> getCustomerInfoList() {
        return customerInfoDao.getCustomerInfoList();
    }

    @Override
    public List<CustomerInfo> queryCustomerInfoList(CustomerInfo customerInfo) {
        return customerInfoDao.queryCustomerInfoList(customerInfo);
    }
}
