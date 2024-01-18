package com.lc.demo.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lc.demo.bean.*;
import com.lc.demo.service.AdminService;
import com.lc.demo.service.ClassService;
import com.lc.demo.service.StudentService;
import com.lc.demo.service.TeacherService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.*;

/**
 * @ClassName AdminController
 * @Deacription TODO
 * @Author daier
 * @Date 2023
 * @Version 1.0
 **/
@Controller
public class AdminController {

    @Autowired
    private AdminService adminService;

    @Autowired
    private ClassService classService;

    @Autowired
    private StudentService studentService;

    @Autowired
    private TeacherService teacherService;

    @PostMapping(value = "/adm/login")
    public String login(@RequestParam("username") String username,
                        @RequestParam("password") String password, Map<String,Object> map, HttpSession session)
    {
        Admin adm=adminService.adminLogin(username,password);
        if(adm!=null)
        {
            List<Classes> classes=classService.getAllClass();
            session.setAttribute("loginUser",username);
            return "redirect:/admmain.html";
        }
        else
        {
            map.put("msg","用户名或密码错误");
            return  "login";
        }
    }

    //返回首页
    @GetMapping(value = "/adm/toindex")
    public String toindex(){
        return "redirect:/admmain.html";
    }

    //返回学生管理首页
    @GetMapping(value = "/adm/tostudmin/{pn}")
    public String tostudmin(@PathVariable("pn") Integer pn,Model model)
    {
        PageHelper.startPage(pn, 6);
        List<Student> students=studentService.getAllStudent();
        List<Classes> classes = classService.getAllClass();
        PageInfo<Student> page = new PageInfo<Student>(students, 5);
        model.addAttribute("classes",classes);
        model.addAttribute("pageInfo",page);
        return "forward:/stuadmin.html";
    }

    //返回学生添加页面
    @GetMapping(value = "/adm/stuadd")
    public String stutoaddpage(Model model)
    {
        List<Classes> classes = classService.getAllClass();
        model.addAttribute("classes",classes);
        return "adm/addstu";
    }

    //处理学生添加事务
    @PostMapping(value = "/adm/stuAdd")
    public String stuAdd(@Valid Student student, BindingResult bindingResult,Model model)
    {
        List<ObjectError> allErrors = bindingResult.getAllErrors();
        List<MyError> errmsg = new ArrayList<>();
        List<Classes> classes = classService.getAllClass();
        if(allErrors.size()==0)
        {
            Student studentVail=studentService.selectById(student.getStuId());
            if(studentVail==null)
            {
                studentService.addStudent(student);
                return "redirect:/adm/tostudmin/1";
            }
            else{
                errmsg.add(new MyError("已存在该学号的学生"));
                model.addAttribute("errors",errmsg);
                model.addAttribute("stu",student);
                model.addAttribute("classes",classes);
                return "adm/addstu";
            }
        }
        else {
            for (ObjectError error:allErrors)
            {
                errmsg.add(new MyError(error.getDefaultMessage()));
            }
            model.addAttribute("errors",errmsg);
            model.addAttribute("stu",student);
            model.addAttribute("classes",classes);
            return "adm/addstu";
        }
    }

    //处理删除学生事务
    @DeleteMapping(value = "/adm/stu/{stuId}")
    public String delestu(@PathVariable("stuId") String stuId)
    {
        studentService.deleStu(stuId);
        return "redirect:/adm/tostudmin/1";
    }

    //返回学生修改页面
    @GetMapping(value = "/adm/stu/{stuId}")
    public String updateStuPage(@PathVariable("stuId") String stuId,Model model)
    {
        Student stu=studentService.selectById(stuId);
        List<Classes> classes=classService.getAllClass();
        model.addAttribute("stu",stu);
        model.addAttribute("classes",classes);
        return "adm/updatestu";
    }

    //更新学生信息操作
    @PutMapping(value = "/adm/stu")
    public String updateStu(@Valid Student student,BindingResult bindingResult,Model model)
    {


        List<ObjectError> allErrors = bindingResult.getAllErrors();
        List<MyError> errmsg = new ArrayList<>();
        List<Classes> classes = classService.getAllClass();
        if(allErrors.size()==0)
        {
            System.out.println(student);
            studentService.deleStu(student.getStuId());
            studentService.addStudentHavePass(student);
            return "redirect:/adm/tostudmin/1";
        }
        else
        {
            for (ObjectError error:allErrors)
            {
                errmsg.add(new MyError(error.getDefaultMessage()));
            }
            model.addAttribute("errors",errmsg);
            model.addAttribute("stu",student);
            model.addAttribute("classes",classes);
            return "adm/updatestu";
        }
    }

    //根据ID查询学生
    @GetMapping(value = "/adm/selectById")
    public String selectById(@Param("stuId") String stuId, Model model)
    {
        Student student=studentService.selectById(stuId);
        List<Classes> classes=classService.getAllClass();
        model.addAttribute("classes",classes);
        model.addAttribute("stus",student);
        return "adm/stubyid";
    }

    //根据班级查询学生
    @GetMapping(value = "/adm/selectByClass/{pn}")
    public String selectStuByClass(@PathVariable("pn") Integer pn,@Param("className") String className,Model model)
    {
        PageHelper.startPage(pn, 6);
        List<Student> stus=studentService.seleStuByClassName(className);
        List<Classes> classes=classService.getAllClass();
        PageInfo<Student> page = new PageInfo<Student>(stus, 5);
        model.addAttribute("pageInfo",page);
        model.addAttribute("classes",classes);
        model.addAttribute("className",className);
        return "adm/stubyclass";
    }

    //返回教师管理首页
    @GetMapping(value = "/adm/toteadmin/{pn}")
    public String toteadmin(@PathVariable("pn") Integer pn,Model model)
    {
        PageHelper.startPage(pn, 6);
        List<Teacher> teachers=teacherService.getAllTeacher();
        PageInfo<Teacher> page = new PageInfo<Teacher>(teachers, 5);
        model.addAttribute("pageInfo",page);
        return "adm/tealist";
    }


    //返回教师添加页面
    @GetMapping(value = "/adm/teaadd")
    public String teatoaddpage()
    {
        return "adm/addtea";
    }

    //处理教师添加事务
    @PostMapping(value = "/adm/teaAdd")
    public String teaAdd(@Valid Teacher teacher, BindingResult bindingResult,Model model)
    {
        List<ObjectError> allErrors = bindingResult.getAllErrors();
        List<MyError> errmsg = new ArrayList<>();
        if(allErrors.size()==0)
        {
            Teacher teacherVail=teacherService.selectById(teacher.getTeaId());
            if(teacherVail==null)
            {
                teacherService.addTeacher(teacher);
                return "redirect:/adm/toteadmin/1";
            }
            else{
                errmsg.add(new MyError("已存在该工号的教师"));
                model.addAttribute("errors",errmsg);
                model.addAttribute("tea",teacher);
                return "adm/addtea";
            }
        }
        else {
            for (ObjectError error:allErrors)
            {
                errmsg.add(new MyError(error.getDefaultMessage()));
            }
            model.addAttribute("errors",errmsg);
            model.addAttribute("tea",teacher);
            return "adm/addtea";
        }
    }


    //返回教师修改页面
    @GetMapping(value = "/adm/tea/{teaId}")
    public String updateTeaPage(@PathVariable("teaId") String teaId,Model model)
    {
        Teacher tea=teacherService.selectById(teaId);
        model.addAttribute("tea",tea);
        return "adm/upadtetea";
    }


    //更新教师信息操作
    @PutMapping(value = "/adm/tea")
    public String updateTea(@Valid Teacher teacher,BindingResult bindingResult,Model model)
    {
        List<ObjectError> allErrors = bindingResult.getAllErrors();
        List<MyError> errmsg = new ArrayList<>();
        if(allErrors.size()==0)
        {
            System.out.println(teacher);
            teacherService.deleTea(teacher.getTeaId());
            teacherService.addTeacherHavePass(teacher);
            return "redirect:/adm/toteadmin/1";
        }
        else
        {
            for (ObjectError error:allErrors)
            {
                errmsg.add(new MyError(error.getDefaultMessage()));
            }
            model.addAttribute("errors",errmsg);
            model.addAttribute("tea",teacher);
            return "adm/upadtetea";
        }
    }

    //根据ID查询教师
    @GetMapping(value = "/adm/selectTeaById")
    public String selectTeaById(@Param("teaId") String teaId, Model model)
    {
        Teacher teacher=teacherService.selectById(teaId);
        model.addAttribute("tea",teacher);
        return "adm/teabyid";
    }

    //处理删除教师事务
    @DeleteMapping(value = "/adm/tea/{teaId}")
    public String deletea(@PathVariable("teaId") String teaId)
    {
        teacherService.deleTea(teaId);
        return "redirect:/adm/toteadmin/1";
    }

    //返回班级管理首页
    @GetMapping(value = "/adm/toclassdmin/{pn}")
    public String toclassdmin(@PathVariable("pn") Integer pn,Model model)
    {
        PageHelper.startPage(pn, 6);
        List<Classes> classes=classService.getAllClass();
        PageInfo<Classes> page = new PageInfo<Classes>(classes, 5);
        model.addAttribute("pageInfo",page);
        return "adm/classlist";
    }

    //返回班级添加页面
    @GetMapping(value = "/adm/classadd")
    public String classToAddPage()
    {
        return "adm/addclass";
    }

    //处理班级添加事务
    @PostMapping(value = "/adm/classAdd")
    public String classAdd(@Valid Classes classes, BindingResult bindingResult,Model model)
    {
        List<ObjectError> allErrors = bindingResult.getAllErrors();
        List<MyError> errmsg = new ArrayList<>();
        if(allErrors.size()==0)
        {
            if(classService.selectByName(classes.getClassName())==null) {
                Classes classVail = classService.selectById(classes.getClassId());
                if (classVail == null) {
                    classService.addClass(classes);
                    return "redirect:/adm/toclassdmin/1";
                } else {
                    errmsg.add(new MyError("已存在该班级号的班级"));
                    model.addAttribute("errors", errmsg);
                    model.addAttribute("class", classes);
                    return "adm/addclass";
                }
            }
            else
            {
                errmsg.add(new MyError("已存在该班级名字的班级"));
                model.addAttribute("errors", errmsg);
                model.addAttribute("class", classes);
                return "adm/addclass";
            }
        }
        else {
            for (ObjectError error:allErrors)
            {
                errmsg.add(new MyError(error.getDefaultMessage()));
            }
            model.addAttribute("errors",errmsg);
            model.addAttribute("class",classes);
            return "adm/addclass";
        }
    }


    //返回班级修改页面
    @GetMapping(value = "/adm/class/{classId}")
    public String updateClassPage(@PathVariable("classId") String classId,Model model)
    {
        Classes classes=classService.selectById(classId);
        model.addAttribute("class",classes);
        return "adm/upadteclass";
    }


    //更新班级信息操作
    @PutMapping(value = "/adm/class")
    public String updateClass(@Valid Classes classes,BindingResult bindingResult,Model model)
    {
        List<ObjectError> allErrors = bindingResult.getAllErrors();
        List<MyError> errmsg = new ArrayList<>();
        if(allErrors.size()==0)
        {
            System.out.println(classes);
            classService.deleteById(classes.getClassId());
            classService.addClass(classes);
            return "redirect:/adm/toclassdmin/1";
        }
        else
        {
            for (ObjectError error:allErrors)
            {
                errmsg.add(new MyError(error.getDefaultMessage()));
            }
            model.addAttribute("errors",errmsg);
            model.addAttribute("class",classes);
            return "adm/upadteclass";
        }
    }

    //根据Name查询班级
    @GetMapping(value = "/adm/selectClassByName")
    public String selectClassById(@Param("className") String className, Model model)
    {
        Classes classes=classService.selectByName(className);
        model.addAttribute("class",classes);
        return "adm/classbyid";
    }

    //处理删除班级事务
    @DeleteMapping(value = "/adm/class/{classId}")
    public String deleClass(@PathVariable("classId") String classId)
    {
        classService.deleteById(classId);
        return "redirect:/adm/toclassdmin/1";
    }

//    @GetMapping(value = "/adm/selectByClass/{pn}")
    //处理删除学生事务从根据班级查找页面发送来的
    @DeleteMapping(value = "/adm/stubyclass/{stuId}")
    public String delestubyclass(@PathVariable("stuId") String stuId)
    {
        Student student = studentService.selectById(stuId);
        studentService.deleStu(stuId);
        try {
            return "redirect:/adm/selectByClass/1?className="+ URLEncoder.encode(student.getStuClass(),"UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return "redirect:/adm/toclassdmin/1";
    }

    //返回学生修改页面从根据班级查找页面发送来的
    @GetMapping(value = "/adm/stubyclass/{stuId}")
    public String updateStuPagebyclass(@PathVariable("stuId") String stuId,Model model)
    {
        Student stu=studentService.selectById(stuId);
        List<Classes> classes=classService.getAllClass();
        model.addAttribute("stu",stu);
        model.addAttribute("classes",classes);
        model.addAttribute("ininclass",stu.getStuClass());
        return "adm/updatestubyclass";
    }

    //更新学生信息操作从根据班级查找页面发送来的
    @PutMapping(value = "/adm/stubyclass")
    public String updateStubyclass(@Valid Student student,BindingResult bindingResult,Model model,@Param("ininclass") String ininclass)
    {

        List<ObjectError> allErrors = bindingResult.getAllErrors();
        List<MyError> errmsg = new ArrayList<>();
        List<Classes> classes = classService.getAllClass();
        if(allErrors.size()==0)
        {
            System.out.println(student);
            studentService.deleStu(student.getStuId());
            studentService.addStudentHavePass(student);
            try {
                return "redirect:/adm/selectByClass/1?className="+URLEncoder.encode(ininclass,"UTF-8");
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
            return "redirect:/adm/toclassdmin/1";

        }
        else
        {
            for (ObjectError error:allErrors)
            {
                errmsg.add(new MyError(error.getDefaultMessage()));
            }
            model.addAttribute("errors",errmsg);
            model.addAttribute("stu",student);
            model.addAttribute("classes",classes);
            return "adm/updatestubyclass";
        }
    }
}
