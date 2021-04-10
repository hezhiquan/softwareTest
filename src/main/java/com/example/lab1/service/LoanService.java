package com.example.lab1.service;

import com.example.lab1.entity.Customer;
import com.example.lab1.entity.Loan;
import com.example.lab1.entity.RepayPlan;

import java.util.HashMap;
import java.util.List;

public interface LoanService  {
    String autoRepay();
    Customer findCustomerByIdNumber(String idNumber);
    List<Loan> findLoansByCustomerCode(String customerCode);
    RepayPlan findRepayPlanById(int id);
    List<RepayPlan> findRepayPlansByIouNum(String iouNum);
    HashMap<String,String> repayPart(String iouNum, double repayAmount);
    List<RepayPlan> findUnPayPlans(String iouNum);
    String repayFine(String iouNum);
    HashMap<String,String> repayAll(String iouNum);
    boolean payFineOfCard(String accountNum);
}
