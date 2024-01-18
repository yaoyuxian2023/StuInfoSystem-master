package com.lc.demo.bean;

import java.util.Map;

/**
 * @ClassName Rank
 * @Deacription TODO
 * @Author daier
 * @Date 2023
 * @Version 1.0
 **/
public class Rank {
    private String stuId;
    private int rownum;
    private int stuAllres;
    private Map<String,Integer> resmap;
    private String resTerm;
    private String stuName;
    public Rank() {
    }

    public Rank(String stuId, int rownum, int stuAllres, Map<String, Integer> resmap, String resTerm, String stuName) {
        this.stuId = stuId;
        this.rownum = rownum;
        this.stuAllres = stuAllres;
        this.resmap = resmap;
        this.resTerm = resTerm;
        this.stuName = stuName;
    }

    public String getStuId() {
        return stuId;
    }

    public void setStuId(String stuId) {
        this.stuId = stuId;
    }

    public int getRownum() {
        return rownum;
    }

    public void setRownum(int rownum) {
        this.rownum = rownum;
    }

    public int getStuAllres() {
        return stuAllres;
    }

    public void setStuAllres(int stuAllres) {
        this.stuAllres = stuAllres;
    }

    public Map<String, Integer> getResmap() {
        return resmap;
    }

    public void setResmap(Map<String, Integer> resmap) {
        this.resmap = resmap;
    }

    public String getResTerm() {
        return resTerm;
    }

    public void setResTerm(String resTerm) {
        this.resTerm = resTerm;
    }

    public String getStuName() {
        return stuName;
    }

    public void setStuName(String stuName) {
        this.stuName = stuName;
    }

    @Override
    public String toString() {
        return "Rank{" +
                "stuId='" + stuId + '\'' +
                ", rownum=" + rownum +
                ", stuAllres=" + stuAllres +
                ", resmap=" + resmap +
                ", resTerm='" + resTerm + '\'' +
                ", stuName='" + stuName + '\'' +
                '}';
    }
}
