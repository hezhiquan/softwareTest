package com.example.lab1.entity;

public class Card {
    private int id;
    private double balance;
    private String customerCode;
    private String accountNum;
    private String password;

    @Override
    public String toString() {
        return "Card{" +
                "id=" + id +
                ", balance=" + balance +
                ", customerCode='" + customerCode + '\'' +
                ", accountNum='" + accountNum + '\'' +
                ", password='" + password + '\'' +
                '}';
    }

    public Card(int id, double balance, String customerCode, String accountNum, String password) {
        this.id = id;
        this.balance = balance;
        this.customerCode = customerCode;
        this.accountNum = accountNum;
        this.password = password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    public String getCustomerCode() {
        return customerCode;
    }

    public void setCustomerCode(String customerCode) {
        this.customerCode = customerCode;
    }

    public String getAccountNum() {
        return accountNum;
    }

    public void setAccountNum(String accountNum) {
        this.accountNum = accountNum;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
