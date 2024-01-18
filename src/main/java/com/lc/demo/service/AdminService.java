package com.lc.demo.service;

import com.lc.demo.bean.Admin;

/**
 * @ClassName AdminService
 * @Deacription TODO
 * @Author daier
 * @Date 2021/1/6 1:14
 * @Version 1.0
 **/
public interface AdminService  {

    Admin adminLogin(String AdminId,String AdminPass);
}
