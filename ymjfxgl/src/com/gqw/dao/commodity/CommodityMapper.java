package com.gqw.dao.commodity;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.gqw.bean.Commodity;

public interface CommodityMapper {
	public List<Commodity> selectAllCommodity();
	/**
	 * 分页查询
	 */
	public List<Commodity> selectPageCommodity(int start,int pageSize);
	/**
	 * 条件分页查询
	 */
	public List<Commodity> conditionPageCommodity(@Param("start")int start,@Param("pageSize")int pageSize,@Param("proName")String proName,@Param("ProCategory")String ProCategory);
	/**
	 * 查询一共多少条数据
	 */
	public int countCommodities();
	/**
	 * 根据id查询一条数据
	 */
	public Commodity selectOneCommodity(@Param("commodityId")String commodityId);
}
