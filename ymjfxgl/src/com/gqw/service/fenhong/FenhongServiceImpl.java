package com.gqw.service.fenhong;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gqw.bean.JifendianzibiOrder;
import com.gqw.bean.Order;
import com.gqw.dao.jifendianzibi.JifendianzibiMapper;
@Service
@Transactional
public class FenhongServiceImpl implements FenhongService {
	@Autowired
	private JifendianzibiMapper fenhongMapper;
	public List<JifendianzibiOrder> conditionPageOrder(int start, int pageSize,
			String loginId, String number, Date date1, Date date2) {
		// TODO Auto-generated method stub
		return fenhongMapper.conditionPageOrder(start, pageSize, loginId, number, date1, date2);
	}

	public Boolean insertJifendianzibi(JifendianzibiOrder jifendianzibiOrder) {
		// TODO Auto-generated method stub
		return fenhongMapper.insertJifendianzibi(jifendianzibiOrder);
	}

	public String selectLogin_username(String loginid) {
		// TODO Auto-generated method stub
		return fenhongMapper.selectLogin_username(loginid);
	}

	public int countsOrder(int loginid) {
		// TODO Auto-generated method stub
		return fenhongMapper.countsOrder(loginid);
	}

}
