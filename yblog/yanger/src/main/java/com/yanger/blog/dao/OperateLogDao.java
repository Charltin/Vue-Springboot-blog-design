package com.yanger.blog.dao;

import org.apache.ibatis.annotations.Mapper;

import com.yanger.blog.po.OperateLog;
import com.yanger.generator.dao.MybatisBaseDao;
import org.springframework.stereotype.Repository;

/**
 * 表operate_log对应Dao接口<br/>
 */
@Mapper
@Repository
public interface OperateLogDao extends MybatisBaseDao<OperateLog, Integer> {

}