package com.gqw.dao.baodanApplyCenter;

import org.apache.ibatis.annotations.Param;

public interface BaodanApplyCenterMapper {
	/**
	 * 申请报单中心
	 * @param loginid
	 * @return
	 */
	public Boolean apply(@Param("loginid")String loginid);
}
