package com.lc.demo.bean;



/**
 * @ClassName Admin
 * @Deacription TODO
 * @Author daier
 * @Date 2023
 * @Version 1.0
 **/



public class Admin {
    private String adminId;
    private String adminName;
    private String adminPass;

    public Admin() {
    }

    public Admin(String adminId, String adminName, String adminPass) {
        this.adminId = adminId;
        this.adminName = adminName;
        this.adminPass = adminPass;
    }

    public String getAdminId() {
        return adminId;
    }

    public void setAdminId(String adminId) {
        this.adminId = adminId;
    }

    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName;
    }

    public String getAdminPass() {
        return adminPass;
    }

    public void setAdminPass(String adminPass) {
        this.adminPass = adminPass;
    }

    @Override
    public String toString() {
        return "Admin{" +
                "adminId='" + adminId + '\'' +
                ", adminName='" + adminName + '\'' +
                ", adminPass='" + adminPass + '\'' +
                '}';
    }
}
