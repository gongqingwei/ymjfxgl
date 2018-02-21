package com.gqw.service.tixian;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gqw.bean.Integral;
import com.gqw.bean.Tixian;
import com.gqw.dao.tixian.TixianMapper;
@Service
@Transactional
public class TixianServiceImpl implements TixianService {

	@Autowired
	private TixianMapper tixianMapper;
	public Boolean tixian(Tixian tixian) {
		// TODO Auto-generated method stub
		return tixianMapper.tixian(tixian);
	}
	public List<Tixian> select_tixian(int start, int pageSize, int loginid,
			Date date1, Date date2) {
		// TODO Auto-generated method stub
		return tixianMapper.select_tixian(start, pageSize, loginid, date1, date2);
	}
	public Float select_jiangjinbi(int loginid) {
		// TODO Auto-generated method stub
		return tixianMapper.select_jiangjinbi(loginid);
	}
	public Boolean update_jiangjinbi(int loginid, float jiangjinbi) {
		// TODO Auto-generated method stub
		return tixianMapper.update_jiangjinbi(loginid, jiangjinbi);
	}
	public Integral select_integral(int loginid) {
		// TODO Auto-generated method stub
		return tixianMapper.select_integral(loginid);
	}
	

}
