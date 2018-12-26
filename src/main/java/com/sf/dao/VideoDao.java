package com.sf.dao;

import com.sf.entity.videoEntity;
import com.sf.entity.userEntity;

import java.util.List;

public interface VideoDao {
    /**
     *  查询某用户发布的video
     * @return
     */
    public List<videoEntity> findVideoByUp(String  userId);

    /**
     * 根据某用户订阅的video
     * @param forumID
     * @return
     */
    public  List<videoEntity> findVideoByUser(String forumID);
}
