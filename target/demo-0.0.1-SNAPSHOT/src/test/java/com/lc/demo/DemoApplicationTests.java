package com.lc.demo;

import com.lc.demo.bean.*;
import com.lc.demo.mapper.*;
import com.lc.demo.service.ResultssService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

@SpringBootTest

@RunWith(SpringJUnit4ClassRunner.class)
public class DemoApplicationTests {

    @Autowired
    private StudentMapper studentMapper ;

    @Autowired
    private AdminMapper adminMapper;

    @Autowired
    private ClassMapper classMapper;

    @Autowired
    private TeacherMapper teacherMapper;

    @Autowired
    private ResultMapper resultMapper;

    @Autowired
    private ResultssService resultssService;
    @Test
    public void contextLoads() {
        resultMapper.insertResult(new Resultss(1,"20181685310372","软件工程",93,"18-2020-1"));
        resultMapper.insertResult(new Resultss(1,"20181685310372","Java实验",92,"18-2020-1"));
        resultMapper.insertResult(new Resultss(1,"20181685310372","数据机构实验",85,"18-2020-1"));
        resultMapper.insertResult(new Resultss(1,"20181685310372","操作系统实验",89,"18-2020-1"));
        resultMapper.insertResult(new Resultss(1,"20181685310372","计算机网络实验",89,"18-2020-1"));
        resultMapper.insertResult(new Resultss(1,"20181685310372","线性代数",90,"18-2020-1"));
        resultMapper.insertResult(new Resultss(1,"20181685310372","大学英语2",88,"18-2020-1"));




        System.out.println(resultssService.selectRankByTermAndStuClass("2020-1","计算机科学与技术3班"));
        System.out.println(studentMapper.selectIdByClass("计算机科学与技术3班"));
        System.out.println(resultMapper.selectRankByTermAndStuId(studentMapper.selectIdByClass("计算机科学与技术3班"),"2020-1"));
        System.out.println(resultssService.selectRankByTerm("2020-1"));
        Map<String, Integer> reamap=new HashMap<>();
        List<Map<String, Integer>> maps = resultMapper.selectResultMap("20181685310372", "2020-1");
        for (Map map:maps) {
            reamap.put((String)map.get("sub_name"),(Integer) map.get("res_num"));
        }
        System.out.println(reamap);
        System.out.println(studentMapper.selectNameById("20181685310373"));

//        List<Rank> ranks = resultMapper.selectRankByTerm("2020-1");
//        for (Rank r :ranks) {
//            Map<String, Integer> reamap=new HashMap<>();
//            List<Map<String, Integer>> maps = resultMapper.selectResultMap(r.getStuId(), r.getResTerm());
//            for (Map map:maps)
//            {
//            reamap.put((String)map.get("sub_name"),(Integer) map.get("res_num"));
//            }
//            r.setStuName(studentMapper.selectNameById(r.getStuId()));
//            r.setResmap(reamap);
//        }
//        System.out.println(ranks);


        System.out.println(resultMapper.selectRankByTerm("2020-1"));
        Map<String, Integer> map=new HashMap<String, Integer>();
        map.put("1",1);
        System.out.println(map.get("2"));
        System.out.println(resultMapper.selectResultByResId(1));
        System.out.println(resultMapper.selectResultByStuIdAndSubName("20181685310372","高等数学"));
        System.out.println(resultMapper.deleteResultById(Integer.parseInt("13")));
        System.out.println(resultMapper.insertResult(new Resultss(1,"测试","测试",22,"测试")));
        System.out.println(resultMapper.selectResultByStuIdAndTerm("20181685310372","2020-1"));
        System.out.println(resultMapper.selectResultByStuId("20181685310372"));
        System.out.println(resultMapper.selectAllResult());
        System.out.println(classMapper.delectClassById("5"));
        System.out.println(classMapper.insertClass(new Classes("5","ceshi")));
        System.out.println(classMapper.selectClassById("1"));
        System.out.println(teacherMapper.deleteTeaById("1111"));
        System.out.println(teacherMapper.selectTeacherByStuId("1111"));
        System.out.println(teacherMapper.selectTeacherByIdAndPass("1111","123"));
        Student student=studentMapper.selectStudentByIdAndPass("20181685310372","123");
        System.out.println(student.getStuId().length());
        System.out.println(studentMapper.selectStudentByIdAndPass("20181685310372","123"));
//        List<Student> list=studentMapper.selectAllStudent();
//        for (Student li:list)
//        {
//            System.out.println(li);
//        }
//        System.out.println(adminMapper.selectAdminByIdAndPass("11258","123"));

        List<Classes> list=classMapper.selectAllClass();
        for (Classes li:list)
        {
            System.out.println(li);
        }
        System.out.println(studentMapper.insertStudent(new Student("1234","1234","1234","1234","1234","1234")));
        System.out.println(studentMapper.selectStudentByStuId("20181685310372"));
        System.out.println(studentMapper.deleteStuById("123"));
        List<Student> stus=studentMapper.selectStuByStuclass("计算机科学与技术3班");
        for (Student stu:stus)
        {
            System.out.println(stu);
        }

        System.out.println(teacherMapper.insertTeacherHavaPass(new Teacher("1112","哈哈","111 ","1","111232")));

        System.out.println(teacherMapper.selectAllTeacher());
    }

}
