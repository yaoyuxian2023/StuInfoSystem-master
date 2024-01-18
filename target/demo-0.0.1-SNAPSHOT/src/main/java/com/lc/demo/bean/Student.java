package com.lc.demo.bean;


import javax.validation.constraints.Size;

/**
 * @ClassName Student
 * @Deacription TODO
 * @Author daier
 * @Date 2023
 * @Version 1.0
 **/

public class Student {

    @Size(min=14,max = 14,message = "学号长度必须为14")
    private String stuId;
    @Size(min=1,max = 10,message = "名字长度必须在1-10之间")
    private String stuName;
    private String stuPass;
    private String stuClass;
    private String stuSex;
    @Size(min = 11,max = 11,message = "请输入11位手机号码")
    private String stuTele;

    public Student() {
    }

    public Student(String stuId, String stuName, String stuPass, String stuClass, String stuSex, String stuTele) {
        this.stuId = stuId;
        this.stuName = stuName;
        this.stuPass = stuPass;
        this.stuClass = stuClass;
        this.stuSex = stuSex;
        this.stuTele = stuTele;
    }

    public String getStuId() {
        return stuId;
    }

    public void setStuId(String stuId) {
        this.stuId = stuId;
    }

    public String getStuName() {
        return stuName;
    }

    public void setStuName(String stuName) {
        this.stuName = stuName;
    }

    public String getStuPass() {
        return stuPass;
    }

    public void setStuPass(String stuPass) {
        this.stuPass = stuPass;
    }

    public String getStuClass() {
        return stuClass;
    }

    public void setStuClass(String stuClass) {
        this.stuClass = stuClass;
    }

    public String getStuSex() {
        return stuSex;
    }

    public void setStuSex(String stuSex) {
        this.stuSex = stuSex;
    }

    public String getStuTele() {
        return stuTele;
    }

    public void setStuTele(String stuTele) {
        this.stuTele = stuTele;
    }

    @Override
    public String toString() {
        return "Student{" +
                "stuId='" + stuId + '\'' +
                ", stuName='" + stuName + '\'' +
                ", stuPass='" + stuPass + '\'' +
                ", stuClass='" + stuClass + '\'' +
                ", stuSex='" + stuSex + '\'' +
                ", stuTele='" + stuTele + '\'' +
                '}';
    }
}
