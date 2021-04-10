package com.example.lab1.dao;

import com.example.lab1.entity.CustomerStockBuy;
import com.example.lab1.entity.CustomerStockBuyExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CustomerStockBuyMapper {
    int countByExample(CustomerStockBuyExample example);

    int deleteByExample(CustomerStockBuyExample example);

    int insert(CustomerStockBuy record);

    int insertSelective(CustomerStockBuy record);

    List<CustomerStockBuy> selectByExample(CustomerStockBuyExample example);

    int updateByExampleSelective(@Param("record") CustomerStockBuy record, @Param("example") CustomerStockBuyExample example);

    int updateByExample(@Param("record") CustomerStockBuy record, @Param("example") CustomerStockBuyExample example);
}