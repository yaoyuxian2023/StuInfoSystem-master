package com.lc.demo.service.impl;

import com.lc.demo.bean.Rank;
import com.lc.demo.bean.Resultss;
import com.lc.demo.mapper.ResultMapper;
import com.lc.demo.mapper.StudentMapper;
import com.lc.demo.service.ResultssService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @ClassName ResultssServiceImpl
 * @Deacription TODO
 * @Author daier
 * @Date 2021/1/9 16:54
 * @Version 1.0
 **/
@Service
public class ResultssServiceImpl  implements ResultssService {

    @Autowired
    private ResultMapper resultMapper;

    @Autowired
    private StudentMapper studentMapper;

    @Override
    public List<Resultss> getAllResult() {
        return resultMapper.selectAllResult();
    }

    @Override
    public List<Resultss> selectByStuId(String stuId) {
        return resultMapper.selectResultByStuId(stuId);
    }

    @Override
    public List<Resultss> selectByStuIdAndResTerm(String stuId, String resTerm) {
        return resultMapper.selectResultByStuIdAndTerm(stuId,resTerm);
    }

    @Override
    public int addResult(Resultss resultss) {
        return resultMapper.insertResult(resultss);
    }

    @Override
    public int deleteResultById(int resId) {
        return resultMapper.deleteResultById(resId);
    }

    @Override
    public Resultss selectResultByStuIdAndSubName(String stuId, String subName) {
        return resultMapper.selectResultByStuIdAndSubName(stuId,subName);
    }

    @Override
    public Resultss selectResultByResId(int resId) {
        return resultMapper.selectResultByResId(resId);
    }

    @Override
    public List<Rank> selectRankByTerm(String resTerm) {
        List<Rank> ranks = resultMapper.selectRankByTerm(resTerm);
        for (Rank r :ranks) {
            Map<String, Integer> reamap=new HashMap<>();
            List<Map<String, Integer>> maps = resultMapper.selectResultMap(r.getStuId(), r.getResTerm());
            for (Map map:maps)
            {
                reamap.put((String)map.get("sub_name"),(Integer) map.get("res_num"));
            }
            r.setStuName(studentMapper.selectNameById(r.getStuId()));
            r.setResmap(reamap);
        }
        return ranks;
    }

    @Override
    public List<Rank> selectRankByTermAndStuClass(String resTerm, String stuClass) {
        List<Rank> ranks=resultMapper.selectRankByTermAndStuId(studentMapper.selectIdByClass(stuClass),resTerm);
        for (Rank r :ranks) {
            Map<String, Integer> reamap=new HashMap<>();
            List<Map<String, Integer>> maps = resultMapper.selectResultMap(r.getStuId(), r.getResTerm());
            for (Map map:maps)
            {
                reamap.put((String)map.get("sub_name"),(Integer) map.get("res_num"));
            }
            r.setStuName(studentMapper.selectNameById(r.getStuId()));
            r.setResmap(reamap);
        }
        return ranks;
    }
}
