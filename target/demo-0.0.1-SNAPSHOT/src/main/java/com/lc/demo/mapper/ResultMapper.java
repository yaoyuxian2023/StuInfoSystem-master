package com.lc.demo.mapper;

import com.lc.demo.bean.Rank;
import com.lc.demo.bean.Resultss;
import org.apache.ibatis.annotations.*;

import java.util.List;
import java.util.Map;

/**
 * @ClassName ResultMapper
 * @Deacription TODO
 * @Author daier
 * @Date 2023
 * @Version 1.0
 **/
@Mapper
public interface ResultMapper {

    @Select("select * from result where  stu_id=#{stuId}")
    List<Resultss> selectResultByStuId(String stuId);

    @Select("select * from result")
    List<Resultss> selectAllResult();

    @Select("select * from result where stu_id=#{stuId} And res_term=#{resTerm}")
    List<Resultss> selectResultByStuIdAndTerm(@Param("stuId") String stuId, @Param("resTerm") String resTerm);

    @Insert("insert into result (stu_id,sub_name,res_num,res_term)values(#{stuId},#{subName},#{resNum},#{resTerm})")
    int insertResult(Resultss resultss);

    @Delete("DELETE from result where res_id=#{resId}")
    int deleteResultById(int resId);

    @Select("select * from result where stu_id=#{stuId} And sub_name=#{subName}")
    Resultss selectResultByStuIdAndSubName(@Param("stuId")String stuId,@Param("subName")String subName );

    @Select("select * from result where res_id=#{resId}")
    Resultss selectResultByResId(int resId);



    @Select("select @rownum:=@rownum+1 AS rownum,stu_id,stu_allres,res_term from (SELECT @rownum:=0) r" +
            ",(select res_term,stu_id,sum(res_num)as'stu_allres' from result,(SELECT @rownum:=0) r\n" +
            "where  res_term=#{resTerm} GROUP BY stu_id ORDER BY sum(res_num) DESC) w")
    List<Rank> selectRankByTerm(String resTerm);


    @Select("select sub_name,res_num from result where stu_id=#{stuId} and res_term=#{resTerm}")
    List<Map<String,Integer>> selectResultMap(@Param("stuId") String stuId,@Param("resTerm") String resTerm);

    @Select({"<script>",
            "select @rownum:=@rownum+1 AS rownum,stu_id,stu_allres,res_term from (SELECT @rownum:=0) r" +
                    ",(select res_term,stu_id,sum(res_num)as'stu_allres' from result,(SELECT @rownum:=0) r\n" +
                    "where  res_term=#{resTerm} and stu_id in",
            "<foreach collection='stuId' item='stuId' open='(' separator=',' close=')'>",
            "#{stuId}",
            "</foreach>",
            "GROUP BY stu_id ORDER BY sum(res_num) DESC) w",
            "</script>"})
    List<Rank> selectRankByTermAndStuId(@Param("stuId") List<String> stuId,@Param("resTerm") String resTerm);
}
