package com.fh.service.admin.aboutus;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.fh.dao.DaoSupport;
import com.fh.entity.Page;
import com.fh.util.PageData;
import com.fh.util.StringUtil;
import com.fh.util.UuidUtil;


@Service("aboutusService")
public class AboutUsService {

	@Resource(name = "daoSupport")
	private DaoSupport dao;
	
	/*
	* 新增
	*/
	public void save(PageData pd)throws Exception{
		dao.save("AboutUsMapper.save", pd);
	}
	
	/*
	* 删除
	*/
	public void delete(PageData pd)throws Exception{
		dao.delete("AboutUsMapper.delete", pd);
	}
	
	/*
	* 修改
	*/
	public void edit(PageData pd)throws Exception{
		
		String ABOUTUS_ID = pd.getString("ABOUTUS_ID");
		if(null == ABOUTUS_ID || ABOUTUS_ID.equals("")|| ABOUTUS_ID.length() <=0){
			pd.put("ABOUTUS_ID",UuidUtil.get32UUID());	//主键
			this.save(pd);
			return ;
		}
		else{
			String PATH = pd.getString("PATH");
			if(null == PATH || PATH.equals("")|| PATH.length() <=0){
				pd.remove("PAHT");
			}
		}
		
		dao.update("AboutUsMapper.edit", pd);
	}
	
	/*
	*列表
	*/
	public List<PageData> list(Page page)throws Exception{
		return (List<PageData>)dao.findForList("AboutUsMapper.datalistPage", page);
	}
	
	/*
	*列表(全部)
	*/
	public List<PageData> listAll(PageData pd)throws Exception{
		return (List<PageData>)dao.findForList("AboutUsMapper.listAll", pd);
	}
	
	/*
	* 通过id获取数据
	*/
	public PageData findById(PageData pd)throws Exception{
		return (PageData)dao.findForObject("AboutUsMapper.findById", pd);
	}
	
	/*
	* 批量删除
	*/
	public void deleteAll(String[] ArrayDATA_IDS)throws Exception{
		dao.delete("AboutUsMapper.deleteAll", ArrayDATA_IDS);
	}
	
}

