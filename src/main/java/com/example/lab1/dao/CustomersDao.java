package com.example.lab1.dao;

import com.example.lab1.entity.Customer;

public interface CustomersDao {
    Customer findCustomerByIdNumber(String idNumber);
    Customer findCustomerByCode(String code);

}
