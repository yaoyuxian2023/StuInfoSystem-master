package com.lc.demo.service;

import com.lc.demo.bean.Student;
import com.lc.demo.bean.Teacher;

import java.util.List;

/**
 * @ClassName TeacherService
 * @Deacription TODO
 * @Author daier
 * @Date 2021/1/6 1:14
 * @Version 1.0
 **/
public interface TeacherService {

    Teacher login(String teaId, String teaPass);

    List<Teacher> getAllTeacher();

    int addTeacher(Teacher teacher);

    int addTeacherHavePass(Teacher teacher);

    Teacher selectById(String teaId);

    int deleTea(String teaId);
}
