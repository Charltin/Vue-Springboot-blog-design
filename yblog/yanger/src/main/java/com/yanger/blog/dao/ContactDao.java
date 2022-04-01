package com.yanger.blog.dao;

import org.apache.ibatis.annotations.Mapper;

import com.yanger.blog.po.Contact;
import com.yanger.generator.dao.MybatisBaseDao;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 表Contact对应Dao接口<br/>
 */
@Mapper
@Repository
public interface ContactDao extends MybatisBaseDao<Contact, Integer> {

}