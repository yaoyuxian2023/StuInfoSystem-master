package com.lc.demo.service;

import com.lc.demo.bean.Rank;
import com.lc.demo.bean.Resultss;

import java.util.List;

/**
 * @ClassName ResultssService
 * @Deacription TODO
 * @Author daier
 * @Date 2021/1/9 16:53
 * @Version 1.0
 **/
public interface ResultssService {

    List<Resultss> getAllResult();

    List<Resultss> selectByStuId(String stuId);

    List<Resultss> selectByStuIdAndResTerm(String stuId,String resTerm);

    int addResult(Resultss resultss);

    int deleteResultById(int resId);

    Resultss selectResultByStuIdAndSubName(String stuId,String subName);

    Resultss selectResultByResId(int resId);

    List<Rank> selectRankByTerm(String resTerm);

    List<Rank> selectRankByTermAndStuClass(String resTerm,String stuClass);
}
