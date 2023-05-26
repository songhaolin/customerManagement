package com.mycom.myapp.mapper;

import com.mycom.myapp.pojo.CustomerInfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CustomerInfoDao {
    int deleteByPrimaryKey(Integer id);

    int insert(CustomerInfo record);

    CustomerInfo selectByPrimaryKey(Integer id);

    int updateByPrimaryKey(CustomerInfo record);

    List<CustomerInfo> getCustomerInfoList();
    List<CustomerInfo> queryCustomerInfoList(CustomerInfo customerInfo);

    int deleteCustomerInfoBatch(@Param("ids") String... ids);

}