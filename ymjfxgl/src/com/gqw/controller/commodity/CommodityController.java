package com.gqw.controller.commodity;

import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gqw.bean.Commodity;
import com.gqw.bean.Pager;
import com.gqw.dao.commodity.CommodityMapper;
import com.gqw.service.CommoditiesServiceImpl;
import com.gqw.util.PublicParameters;

@Controller
public class CommodityController {
	
	@Autowired
	private CommoditiesServiceImpl commoditiesServiceImpl;
	@RequestMapping("commodityPageQuery")
	public String pageQuery(HttpServletRequest request,int start,int pageSize,Map map){
		List<Commodity> commoditys=commoditiesServiceImpl.selectPageCommodity((start-1)*pageSize, pageSize);
		request.setAttribute("commoditys", commoditys);
		int counts=commoditiesServiceImpl.countCommodities();
		request.setAttribute("pages", counts/pageSize==0?counts/pageSize:counts/pageSize+1);
		/*map.put("pages", counts/pageSize==0?counts/pageSize:counts/pageSize+1);*/
		return "commodityList";
	}
	@RequestMapping("conditioncommodityPageQuery")
	public String conditionpageQuery(HttpServletRequest request,Map<String,Object> map,int start,int pageSize,String proName,String ProCategory){
		try {
			if(proName!=null){
				proName=new String(proName.getBytes("ISO-8859-1"),"UTF-8");
				map.put("proName", proName);
			}
			if(ProCategory!=null){
				ProCategory=new String(ProCategory.getBytes("ISO-8859-1"),"UTF-8");
				map.put("ProCategory", ProCategory);
			}
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		List<Commodity> commoditys=commoditiesServiceImpl.conditionPageCommodity((start-1)*pageSize,pageSize,proName,ProCategory);
		request.setAttribute("commoditys", commoditys);
		Pager pager=new Pager();
		pager.setPageIndex(start);
		pager.setPrev(start-1);
		pager.setNext(start+1);
		pager.setTotalPage(commoditiesServiceImpl.countCommodities()/pageSize==0?commoditiesServiceImpl.countCommodities()/pageSize:commoditiesServiceImpl.countCommodities()/pageSize+1);
		pager.setProName(proName);
		pager.setProCategory(ProCategory);
		map.put("pager", pager);
		return "commodityList";
	}
	@RequestMapping("oneCommodity")
	public String selectOneCommodity(Map<String,Object> map,String commodityId){
		Commodity commodity=commoditiesServiceImpl.selectOneCommodity(commodityId);
		map.put("commodity", commodity);
		map.put("loginid", PublicParameters.id);
		return "goodsDetails";
	}
	@RequestMapping("cpfq")
	public String conditionPageFenyeQuery(Map<String,Object> map,Pager pager){
		
		return "commodityList";
	}
	
	
	
	public int countPages(int pageSize){
		int count=commoditiesServiceImpl.countCommodities();
		System.out.println(count);
		return commoditiesServiceImpl.countCommodities()/pageSize==0?commoditiesServiceImpl.countCommodities()/pageSize:commoditiesServiceImpl.countCommodities()/pageSize+1;
	}
}
