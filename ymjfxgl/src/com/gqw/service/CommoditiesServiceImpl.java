package com.gqw.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gqw.bean.Commodity;
import com.gqw.dao.commodity.CommodityMapper;
@Service
@Transactional
public class CommoditiesServiceImpl implements CommoditiesService {
	
	@Autowired
	private CommodityMapper commoditymapper;
	public List<Commodity> conditionPageCommodity(int start, int pageSize,
			String proName, String ProCategory) {
		// TODO Auto-generated method stub
		return commoditymapper.conditionPageCommodity(start, pageSize, proName, ProCategory);
	}

	public int countCommodities() {
		// TODO Auto-generated method stub
		return commoditymapper.countCommodities();
	}

	public List<Commodity> selectAllCommodity() {
		// TODO Auto-generated method stub
		return commoditymapper.selectAllCommodity();
	}

	public List<Commodity> selectPageCommodity(int start, int pageSize) {
		// TODO Auto-generated method stub
		return commoditymapper.selectPageCommodity(start, pageSize);
	}

	public Commodity selectOneCommodity(String commodityId) {
		// TODO Auto-generated method stub
		return commoditymapper.selectOneCommodity(commodityId);
	}

}
