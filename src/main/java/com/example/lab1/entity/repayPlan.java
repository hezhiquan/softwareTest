package com.example.lab1.entity;

import java.util.Date;

public class RepayPlan {
    private int id;
    private String iouNum;
    private Date createTime;
    private double planNum;
    private double planAmount;
    private double planPrincipal;
    private double planInterest;
    private Date planDate;
    private double remainAmount;
    private double remainPrincipal;
    private double remainInterest;
    private double fine;
    private int status;

    public RepayPlan(int id, String iouNum, Date createTime, double planNum, double planAmount, double planPrincipal, double planInterest, Date planDate, double remainAmount, double remainPrincipal, double remainInterest, double fine, int status) {
        this.id = id;
        this.iouNum = iouNum;
        this.createTime = createTime;
        this.planNum = planNum;
        this.planAmount = planAmount;
        this.planPrincipal = planPrincipal;
        this.planInterest = planInterest;
        this.planDate = planDate;
        this.remainAmount = remainAmount;
        this.remainPrincipal = remainPrincipal;
        this.remainInterest = remainInterest;
        this.fine = fine;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getIouNum() {
        return iouNum;
    }

    public void setIouNum(String iouNum) {
        this.iouNum = iouNum;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public double getPlanNum() {
        return planNum;
    }

    public void setPlanNum(double planNum) {
        this.planNum = planNum;
    }

    public double getPlanAmount() {
        return planAmount;
    }

    public void setPlanAmount(double planAmount) {
        this.planAmount = planAmount;
    }

    public double getPlanPrincipal() {
        return planPrincipal;
    }

    public void setPlanPrincipal(double planPrincipal) {
        this.planPrincipal = planPrincipal;
    }

    public double getPlanInterest() {
        return planInterest;
    }

    public void setPlanInterest(double planInterest) {
        this.planInterest = planInterest;
    }

    public Date getPlanDate() {
        return planDate;
    }

    public void setPlanDate(Date planDate) {
        this.planDate = planDate;
    }

    public double getRemainAmount() {
        return remainAmount;
    }

    public void setRemainAmount(double remainAmount) {
        this.remainAmount = remainAmount;
    }

    public double getRemainPrincipal() {
        return remainPrincipal;
    }

    public void setRemainPrincipal(double remainPrincipal) {
        this.remainPrincipal = remainPrincipal;
    }

    public double getRemainInterest() {
        return remainInterest;
    }

    public void setRemainInterest(double remainInterest) {
        this.remainInterest = remainInterest;
    }

    public double getFine() {
        return fine;
    }

    public void setFine(double fine) {
        this.fine = fine;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
    @Override
    public String toString(){
        return "iouNum is "+iouNum+" planDate is "+planDate+" remainAmount is "+remainAmount+" fine is "+fine+" status is"+status;
    }
}
