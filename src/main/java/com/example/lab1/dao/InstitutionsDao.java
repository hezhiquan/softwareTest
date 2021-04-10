package com.example.lab1.dao;

import com.example.lab1.entity.Institution;

public interface InstitutionsDao {
    Institution findByName(String name);
}
