package com.fh.service.admin.schoolenviroment;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.fh.dao.DaoSupport;
import com.fh.entity.Page;
import com.fh.service.information.pictures.PicturesService;
import com.fh.util.PageData;


@Service("schoolenviromentService")
public class SchoolEnviromentService {

	@Resource(name = "daoSupport")
	private DaoSupport dao;
	
	@Resource(name = "picturesService")
	private PicturesService picturesService;
	
	
	/*
	* 新增
	*/
	public void save(PageData pd)throws Exception{
		dao.save("SchoolEnviromentMapper.save", pd);
	}
	
	/*
	* 新增
	*/
	public void save(MultipartFile file,PageData pd)throws Exception{
		String pid = picturesService.save(file);
		pd.put("PICTURES_ID", pid);	//图片
		dao.save("SchoolEnviromentMapper.save", pd);
	}
	
	/*
	* 删除
	*/
	public void delete(PageData pd)throws Exception{
		dao.delete("SchoolEnviromentMapper.delete", pd);
	}
	
	/*
	* 修改
	*/
	public void edit(PageData pd)throws Exception{
		dao.update("SchoolEnviromentMapper.edit", pd);
	}
	
	/*
	*列表
	*/
	public List<PageData> list(Page page)throws Exception{
		return (List<PageData>)dao.findForList("SchoolEnviromentMapper.datalistPage", page);
	}
	
	/*
	*列表(全部)
	*/
	public List<PageData> listAll(PageData pd)throws Exception{
		return (List<PageData>)dao.findForList("SchoolEnviromentMapper.listAll", pd);
	}
	
	/*
	* 通过id获取数据
	*/
	public PageData findById(PageData pd)throws Exception{
		return (PageData)dao.findForObject("SchoolEnviromentMapper.findById", pd);
	}
	
	/*
	* 批量删除
	*/
	public void deleteAll(String[] ArrayDATA_IDS)throws Exception{
		dao.delete("SchoolEnviromentMapper.deleteAll", ArrayDATA_IDS);
	}
	
}

