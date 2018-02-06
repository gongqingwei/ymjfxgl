package com.gqw.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import com.gqw.bean.Commodity;

public interface CommoditiesService {
	public List<Commodity> selectAllCommodity();
	
	public List<Commodity> selectPageCommodity(int start,int pageSize);
	
	public List<Commodity> conditionPageCommodity(@Param("start")int start,@Param("pageSize")int pageSize,@Param("proName")String proName,@Param("ProCategory")String ProCategory);
	
	public int countCommodities();
	
	public Commodity selectOneCommodity(@Param("commodityId")String commodityId);
}
