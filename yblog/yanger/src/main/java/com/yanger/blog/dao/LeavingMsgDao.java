package com.yanger.blog.dao;

import org.apache.ibatis.annotations.Mapper;

import com.yanger.blog.po.LeavingMsg;
import com.yanger.blog.vo.LeavingMsgVo;
import com.yanger.generator.dao.MybatisBaseDao;
import com.yanger.mybatis.paginator.Page;
import com.yanger.mybatis.paginator.PageParam;
import org.springframework.stereotype.Repository;

/**
 * 表leaving_msg对应Dao接口<br/>
 */
@Mapper
@Repository
public interface LeavingMsgDao extends MybatisBaseDao<LeavingMsg, Integer> {
	
	/**
	 * @description 根据LeavingMsg查询出LeavingMsgVo分页数据
	 * @return
	 */
	Page<LeavingMsgVo> selectPageForVo(PageParam pageParam, LeavingMsg entity);

}