package com.lc.demo.service;

import com.lc.demo.bean.Classes;

import java.util.List;

/**
 * @ClassName ClassService
 * @Deacription TODO
 * @Author daier
 * @Date 2021/1/6 22:14
 * @Version 1.0
 **/
public interface ClassService {

    List<Classes> getAllClass();

    Classes selectById(String classId);

    Classes selectByName(String className);

    int deleteById(String classId);

    int addClass(Classes classes);


}
