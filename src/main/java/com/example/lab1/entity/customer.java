package com.example.lab1.entity;

public class Customer {
    private int id;
    private String code;
    private String name;
    private String idNumber;

    public Customer(int id, String code, String name, String idNumber) {
        this.id = id;
        this.code = code;
        this.name = name;
        this.idNumber = idNumber;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getIdNumber() {
        return idNumber;
    }

    public void setIdNumber(String idNumber) {
        this.idNumber = idNumber;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "id=" + id +
                ", code='" + code + '\'' +
                ", name='" + name + '\'' +
                ", idNumber='" + idNumber + '\'' +
                '}';
    }
}
