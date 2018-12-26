package com.sf.dao.impl;

import com.sf.dao.VideoDao;
import com.sf.entity.videoEntity;
import com.sf.tool.VideoRowMapperEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.sf.dao.RegisterDao;
import com.sf.db.Data_jdbcTemplate;
import com.sf.entity.userEntity;

import java.util.List;

@Component
public class Videoimpl implements VideoDao {

    @Autowired
    Data_jdbcTemplate jdbcTemplate;

    public List<videoEntity> findVideoByUp(String  userId){
        String sql="select * from video where videoUpId=? order by rand() limit 8";//查询视频
        List<videoEntity> list=jdbcTemplate.getJdbcTemplate().query(sql,new Object[]{userId} ,new VideoRowMapperEntity());
        System.out.println("video数量:"+list.size());
        return list;
    }

    public  List<videoEntity> findVideoByUser(String userId){
        String sql="select * from video\n" +
                "where videoID in\n" +
                "(select video_id from subscribe where user_id=?) order by rand() limit 8";//查询视频
        List<videoEntity> list=jdbcTemplate.getJdbcTemplate().query(sql,new Object[]{userId} ,new VideoRowMapperEntity());
        System.out.println("video数量:"+list.size());
        return list;

    }


}
