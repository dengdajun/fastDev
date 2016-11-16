package com.fh.service.admin.aboutadvance;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.fh.dao.DaoSupport;
import com.fh.entity.Page;
import com.fh.util.PageData;
import com.fh.util.UuidUtil;


@Service("aboutadvanceService")
public class AboutAdvanceService {

	@Resource(name = "daoSupport")
	private DaoSupport dao;
	
	/*
	* 新增
	*/
	public void save(PageData pd)throws Exception{
		dao.save("AboutAdvanceMapper.save", pd);
	}
	
	/*
	* 删除
	*/
	public void delete(PageData pd)throws Exception{
		dao.delete("AboutAdvanceMapper.delete", pd);
	}
	
	/*
	* 修改
	*/
	public void edit(PageData pd)throws Exception{
		String ABOUTADVANCE_ID = pd.getString("ABOUTADVANCE_ID");
		if(null == ABOUTADVANCE_ID || ABOUTADVANCE_ID.equals("")|| ABOUTADVANCE_ID.length() <=0){
			pd.put("ABOUTADVANCE_ID",UuidUtil.get32UUID());	//主键
			this.save(pd);
			return ;
		}
		dao.update("AboutAdvanceMapper.edit", pd);
	}
	
	/*
	*列表
	*/
	public List<PageData> list(Page page)throws Exception{
		return (List<PageData>)dao.findForList("AboutAdvanceMapper.datalistPage", page);
	}
	
	/*
	*列表(全部)
	*/
	public List<PageData> listAll(PageData pd)throws Exception{
		return (List<PageData>)dao.findForList("AboutAdvanceMapper.listAll", pd);
	}
	
	/*
	* 通过id获取数据
	*/
	public PageData findById(PageData pd)throws Exception{
		return (PageData)dao.findForObject("AboutAdvanceMapper.findById", pd);
	}
	
	/*
	* 批量删除
	*/
	public void deleteAll(String[] ArrayDATA_IDS)throws Exception{
		dao.delete("AboutAdvanceMapper.deleteAll", ArrayDATA_IDS);
	}
	
}

