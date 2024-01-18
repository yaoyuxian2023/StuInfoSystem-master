package com.lc.demo.service;

import com.lc.demo.bean.Student;

import java.util.List;

/**
 * @ClassName StudentService
 * @Deacription TODO
 * @Author daier
 * @Date 2021/1/4 23:50
 * @Version 1.0
 **/
public interface StudentService {
     Student login(String stuId,String stuPass);

     List<Student> getAllStudent();

     int addStudent(Student student);

     int addStudentHavePass(Student student);

     Student selectById(String stuId);

     int deleStu(String stuId);

     List<Student> seleStuByClassName(String stuClass);
}
