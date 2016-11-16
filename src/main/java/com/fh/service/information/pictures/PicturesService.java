package com.fh.service.information.pictures;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.fh.dao.DaoSupport;
import com.fh.entity.Page;
import com.fh.util.Const;
import com.fh.util.DateUtil;
import com.fh.util.FileUpload;
import com.fh.util.PageData;
import com.fh.util.PathUtil;
import com.fh.util.Tools;
import com.fh.util.UuidUtil;
import com.fh.util.Watermark;


@Service("picturesService")
public class PicturesService {

	@Resource(name = "daoSupport")
	private DaoSupport dao;
	
	public String save(MultipartFile file) throws Exception{
		String ffile = DateUtil.getDays(), fileName = "";
		PageData pd = new PageData();
		if (null != file && !file.isEmpty()) {
			String filePath = PathUtil.getClasspath() + Const.FILEPATHIMG
					+ ffile; // 文件上传路径
			fileName = FileUpload.fileUp(file, filePath, UuidUtil.get32UUID()); // 执行上传
		}
		
		pd.put("PICTURES_ID", UuidUtil.get32UUID()); // 主键
		pd.put("TITLE", "图片"); // 标题
		pd.put("NAME", fileName); // 文件名
		pd.put("PATH", ffile + "/" + fileName); // 路径
		pd.put("CREATETIME", Tools.date2Str(new Date())); // 创建时间
		pd.put("MASTER_ID", "1"); // 附属与
		pd.put("BZ", "图片管理处上传"); // 备注
		// 加水印
		Watermark.setWatemark(PathUtil.getClasspath() + Const.FILEPATHIMG
				+ ffile + "/" + fileName);
		this.save(pd);
		return pd.getString("PICTURES_ID");
		
	}
	
	
	/*
	* 新增
	*/
	public void save(PageData pd)throws Exception{
		dao.save("PicturesMapper.save", pd);
	}
	
	/*
	* 删除
	*/
	public void delete(PageData pd)throws Exception{
		dao.delete("PicturesMapper.delete", pd);
	}
	
	/*
	* 修改
	*/
	public void edit(PageData pd)throws Exception{
		dao.update("PicturesMapper.edit", pd);
	}
	
	/*
	*列表
	*/
	public List<PageData> list(Page page)throws Exception{
		return (List<PageData>)dao.findForList("PicturesMapper.datalistPage", page);
	}
	
	/*
	*列表(全部)
	*/
	public List<PageData> listAll(PageData pd)throws Exception{
		return (List<PageData>)dao.findForList("PicturesMapper.listAll", pd);
	}
	
	/*
	* 通过id获取数据
	*/
	public PageData findById(PageData pd)throws Exception{
		return (PageData)dao.findForObject("PicturesMapper.findById", pd);
	}
	
	/*
	* 批量删除
	*/
	public void deleteAll(String[] ArrayDATA_IDS)throws Exception{
		dao.delete("PicturesMapper.deleteAll", ArrayDATA_IDS);
	}
	
	/*
	* 批量获取
	*/
	public List<PageData> getAllById(String[] ArrayDATA_IDS)throws Exception{
		return (List<PageData>)dao.findForList("PicturesMapper.getAllById", ArrayDATA_IDS);
	}
	
	/*
	* 删除图片
	*/
	public void delTp(PageData pd)throws Exception{
		dao.update("PicturesMapper.delTp", pd);
	}
	
}

