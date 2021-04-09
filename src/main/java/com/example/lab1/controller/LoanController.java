package com.example.lab1.controller;

import com.example.lab1.service.LoanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
public class LoanController {
    @Autowired
    private LoanService loanService;


    @GetMapping("/hello")
    public ResponseEntity<?> hello(){
        return ResponseEntity.ok("hello 1234567890 冲动");
    }
    //自动归还贷款
    @GetMapping("/autoRepay")
    public Map<String,Object> autoRepay(){
        Map<String,Object> res=new HashMap<>();
        String msg=loanService.autoRepay();
        res.put("message",msg);
        return res;
    }
}
