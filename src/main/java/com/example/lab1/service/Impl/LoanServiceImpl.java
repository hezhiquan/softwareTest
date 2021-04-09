package com.example.lab1.service.Impl;


import com.example.lab1.Util.HttpUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;

import java.util.HashMap;


@Service
public class LoanServiceImpl implements com.example.lab1.service.LoanService {


    @Override
    public String autoRepay() {

        System.out.println(112);
        return "";
    }

    /**
     * 初始化账户 读取 查询客户账户 接口数据，将用户信息存到用户表，将用户的银行卡存到余额表
     */
    public void initAccount(){
//        MultiValueMap<String,String> params=new LinkedMultiValueMap<>();
//        params.add("pageNum","0");
//        params.add("pageSize","0");
//        params.add("params","");
//        MultiValueMap<String,String> header=new MultiValueMap<String,String>;
//        header.add("login")
//        HttpUtil.get("http://10.176.122.174:8012/loan",params,header);
    }

}
