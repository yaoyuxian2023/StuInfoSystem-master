package com.lc.demo.service.impl;

import com.lc.demo.bean.Admin;
import com.lc.demo.mapper.AdminMapper;
import com.lc.demo.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @ClassName AdminServiceImpl
 * @Deacription TODO
 * @Author daier
 * @Date 2021/1/6 1:15
 * @Version 1.0
 **/
@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private AdminMapper adminMapper;

    @Override
    public Admin adminLogin(String AdminId, String AdminPass)
    {
        return adminMapper.selectAdminByIdAndPass(AdminId,AdminPass);
    }
}
