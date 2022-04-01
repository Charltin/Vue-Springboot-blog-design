package com.yanger.blog.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.yanger.blog.po.ArticleType;
import com.yanger.blog.po.Const;
import com.yanger.blog.vo.ConstVo;
import com.yanger.generator.dao.MybatisBaseDao;
import com.yanger.mybatis.paginator.Page;
import com.yanger.mybatis.paginator.PageParam;
import org.springframework.stereotype.Repository;


/**
 * 表const对应Dao接口
 */
@Mapper
@Repository
public interface ConstDao extends MybatisBaseDao<Const, Integer> {

	/**
	 * @description 根据描述获取常量
	 * @param type
	 * @return
	 */
	List<Const> findAllByType(@Param("type") String type);
	
	/**
	 * @description 根据vo进行查询
	 * @return
	 */
	Page<Const> selectPageByVo(PageParam pageParam, ConstVo entity);
	
	/**
	 * 
	 * @description
	 * @return
	 */
	Page<ArticleType> selectArtTypePage(PageParam pageParam, ConstVo entity);

	/**
	 * @description 查询子集个数
	 * @return int
	 */
	int getCountByUpperCode(@Param("upperCode") String upperCode);
	
	
	/**
	 * @description 根据type删除常量
	 * @param type
	 */
	void delByType(@Param("type") String type);

	/**
	 * @description 获取所有常量
	 * @param
	 * @return java.util.List<com.yanger.blog.po.Const>
	 */
	List<Const> findAll();
	
}