package com.lc.demo.bean;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;

/**
 * @ClassName Result
 * @Deacription TODO
 * @Author daier
 * @Date 2023
 * @Version 1.0
 **/
public class Resultss {
    private int resId;
    private String stuId;
    private String subName;

    @Max(value = 100,message = "成绩最大值不能超过100")
    @Min(value = 0,message = "成绩最小值不能小于0")
    private int    resNum;
    private String resTerm;

    public Resultss() {
    }

    public Resultss(int resId, String stuId, String subName, int resNum, String resTerm) {
        this.resId = resId;
        this.stuId = stuId;
        this.subName = subName;
        this.resNum = resNum;
        this.resTerm = resTerm;
    }

    public int getResId() {
        return resId;
    }

    public void setResId(int resId) {
        this.resId = resId;
    }

    public String getStuId() {
        return stuId;
    }

    public void setStuId(String stuId) {
        this.stuId = stuId;
    }

    public String getSubName() {
        return subName;
    }

    public void setSubName(String subName) {
        this.subName = subName;
    }

    public int getResNum() {
        return resNum;
    }

    public void setResNum(int resNum) {
        this.resNum = resNum;
    }

    public String getResTerm() {
        return resTerm;
    }

    public void setResTerm(String resTerm) {
        this.resTerm = resTerm;
    }

    @Override
    public String toString() {
        return "Result{" +
                "resId=" + resId +
                ", stuId='" + stuId + '\'' +
                ", subName='" + subName + '\'' +
                ", resNum=" + resNum +
                ", resTerm='" + resTerm + '\'' +
                '}';
    }
}
