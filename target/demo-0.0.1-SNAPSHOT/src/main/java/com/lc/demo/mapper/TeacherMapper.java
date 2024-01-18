package com.lc.demo.mapper;

import com.lc.demo.bean.Student;
import com.lc.demo.bean.Teacher;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * @ClassName TeacherMapper
 * @Deacription TODO
 * @Author daier
 * @Date 2023
 * @Version 1.0
 **/
@Mapper
public interface TeacherMapper {

    @Select("select * from teacher where  tea_id=#{teaId} and tea_pass=#{teaPass}")
    Teacher selectTeacherByIdAndPass(@Param("teaId") String teaId, @Param("teaPass") String teaPass);

    @Select("select * from teacher")
    List<Teacher> selectAllTeacher();

    @Insert("insert into teacher (tea_id,tea_name,tea_sex,tea_tele) values(#{teaId},#{teaName},#{teaSex},#{teaTele})")
    int insertTeacher(Teacher tea);

    @Insert("insert into teacher  values(#{teaId},#{teaName},#{teaPass},#{teaSex},#{teaTele})")
    int insertTeacherHavaPass(Teacher tea);

    @Select("select * from teacher where  tea_id=#{teaId} ")
    Teacher selectTeacherByStuId(String teaId);

    @Delete("DELETE from teacher where tea_id=#{teaId}")
    int deleteTeaById(String teaId);
}
