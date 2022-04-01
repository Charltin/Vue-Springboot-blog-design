package com.yanger.blog.dao;

import org.apache.ibatis.annotations.Mapper;

import com.yanger.blog.po.OuterLink;
import com.yanger.generator.dao.MybatisBaseDao;
import org.springframework.stereotype.Repository;

/**
 * 表outer_link对应Dao接口<br/>
 */
@Mapper
@Repository
public interface OuterLinkDao extends MybatisBaseDao<OuterLink, Integer> {

}