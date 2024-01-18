package com.lc.demo.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lc.demo.bean.*;
import com.lc.demo.service.ClassService;
import com.lc.demo.service.ResultssService;
import com.lc.demo.service.StudentService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * @ClassName StudentController
 * @Deacription TODO
 * @Author daier
 * @Date 2023
 * @Version 1.0
 **/

@Controller
public class StudentController {

    @Autowired
    private StudentService studentService;

    @Autowired
    private ClassService classService;

    @Autowired
    private ResultssService resultssService;

    @PostMapping(value = "/stu/login")
    public String login(@RequestParam("username") String username,
                        @RequestParam("password") String password, Map<String,Object> map, HttpSession session)
    {
        Student stu=studentService.login(username,password);
        if(stu!=null)
        {
            session.setAttribute("loginUser",username);
            return "redirect:/stumain.html";
        }
        else
        {
            map.put("msg","用户名或密码错误");
            return  "login";
        }
    }

    //返回首页
    @GetMapping(value = "/stu/toindex")
    public String toindex(){
        return "redirect:/stumain.html";
    }


    //返回学生信息修改页面
    @GetMapping(value = "/stu/toUpdateMsgPage")
    public String toUpdateMsgPage(HttpSession httpSession, Model model)
    {

        Student stu= studentService.selectById((String) httpSession.getAttribute("loginUser"));
        List<Classes> classes=classService.getAllClass();
        model.addAttribute("stu",stu);
        model.addAttribute("classes",classes);
        return "stu/updateStu";
    }

    //更新学生信息操作
    @PutMapping(value = "/stu/updateStuMsg")
    public String updateStuMsg(@Valid Student student, BindingResult bindingResult, Model model,HttpSession httpSession)
    {
        List<ObjectError> allErrors = bindingResult.getAllErrors();
        List<MyError> errmsg = new ArrayList<>();
        List<Classes> classes = classService.getAllClass();
        if(allErrors.size()==0)
        {
            Student studentInit=studentService.selectById((String) httpSession.getAttribute("loginUser"));
            student.setStuId(studentInit.getStuId());
            student.setStuName(studentInit.getStuName());
            student.setStuClass(studentInit.getStuClass());
            student.setStuSex(studentInit.getStuSex());

            studentService.deleStu(studentInit.getStuId());
            studentService.addStudentHavePass(student);
            return "redirect:/updateSucc.html";
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
            return "stu/updateStu";
        }
    }

    //返回学生成绩首页
    @GetMapping(value = "/stu/toresdmin/{pn}")
    public String toresdmin(@PathVariable("pn") Integer pn,Model model,HttpSession httpSession)
    {
        PageHelper.startPage(pn, 9);
        List<Resultss> resultsses = resultssService.selectByStuId((String) httpSession.getAttribute("loginUser"));
        PageInfo<Resultss> page = new PageInfo<Resultss>(resultsses, 5);
        model.addAttribute("pageInfo",page);
        return "stu/resultlist";
    }

    //根据学期查询成绩
    @GetMapping(value = "/stu/selectResByTerm/{pn}")
    public String selectResByTerm(@PathVariable("pn") Integer pn,@Param("resTerm") String resTerm, Model model,HttpSession httpSession)
    {
        PageHelper.startPage(pn, 9);
        List<Resultss> resultsses=resultssService.selectByStuIdAndResTerm((String) httpSession.getAttribute("loginUser"),resTerm);
        PageInfo<Resultss> page = new PageInfo<Resultss>(resultsses, 5);
        model.addAttribute("pageInfo",page);
        model.addAttribute("resTerm",resTerm);
        return "stu/reslistbyterm";
    }
}
