package com.gqw.service.zhuanzhang;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gqw.bean.Zhanghuzhuanzhang;
import com.gqw.dao.zhanghuzhuanzhang.ZhuanzhangMapper;
@Service
public class ZhuanzhangServiceImpl implements ZhuanzhangService {
	@Autowired
	private ZhuanzhangMapper mapper;
	public List<Zhanghuzhuanzhang> select_zhuanzhangjilu(int loginid,
			String allaccount, String type1,String type2, String zhuanruzhanghao,
			String zhanghu, int start, int pageSize, Date date1, Date date2) {
		// TODO Auto-generated method stub
		return mapper.select_zhuanzhangjilu(loginid, allaccount, type1,type2, zhuanruzhanghao, zhanghu, start,
				pageSize, date1, date2);
	}

}
