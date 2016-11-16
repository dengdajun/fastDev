package com.fh.controller.admin.coursevido;

import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartRequest;
import org.springframework.web.servlet.ModelAndView;

import com.fh.controller.base.BaseController;
import com.fh.entity.Page;
import com.fh.service.admin.coursetype.CourseTypeService;
import com.fh.service.admin.coursevido.CourseVidoService;
import com.fh.util.AppUtil;
import com.fh.util.Const;
import com.fh.util.DateUtil;
import com.fh.util.FileUpload;
import com.fh.util.Jurisdiction;
import com.fh.util.ObjectExcelView;
import com.fh.util.PageData;
import com.fh.util.PathUtil;

/** 
 * 类名称：CourseVidoController
 * 创建人：FH 
 * 创建时间：2016-11-16
 */
@Controller
@RequestMapping(value="/coursevido")
public class CourseVidoController extends BaseController {
	
	String menuUrl = "coursevido/list.do"; //菜单地址(权限用)
	@Resource(name="coursevidoService")
	private CourseVidoService coursevidoService;
	@Resource(name="coursetypeService")
	private CourseTypeService coursetypeService;
	
	private List<PageData> getCourseTypeList() throws Exception{
		return coursetypeService.listAll(new PageData());
	}
	
	/**
	 * 新增
	 */
	@RequestMapping(value="/save")
	public ModelAndView save(MultipartRequest multipartRequest,HttpServletRequest request) throws Exception{
		logBefore(logger, "新增CourseVido");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "add")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData(request);
		pd.put("COURSEVIDO_ID", this.get32UUID());	//主键
		
		//图片
		MultipartFile file = multipartRequest.getFile("tpPic");
		String  ffile = DateUtil.getDays(), fileName = "";
		if (null != file && !file.isEmpty()) {
			String filePath = PathUtil.getClasspath() + Const.FILEPATHIMG + ffile;		//文件上传路径
			fileName = FileUpload.fileUp(file, filePath, this.get32UUID());				//执行上传
			pd.put("LOGO_PATH", ffile + "/" + fileName);				//路径
		}
		
		//视频
		MultipartFile vidoFile = multipartRequest.getFile("tpVido");
		String  vidofile = DateUtil.getDays(), vidoFileName = "";
		if (null != vidoFile && !vidoFile.isEmpty()) {
			String filePath = PathUtil.getClasspath() + Const.FILEPATHIMG + vidofile;		//文件上传路径
			vidoFileName = FileUpload.fileUp(vidoFile, filePath, this.get32UUID());				//执行上传
			pd.put("VIDO_PATH", vidofile + "/" + vidoFileName);				//路径
		}
		
		
		
		coursevidoService.save(pd);
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	
	/**
	 * 删除
	 */
	@RequestMapping(value="/delete")
	public void delete(PrintWriter out){
		logBefore(logger, "删除CourseVido");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "del")){return;} //校验权限
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			coursevidoService.delete(pd);
			out.write("success");
			out.close();
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		
	}
	
	/**
	 * 修改
	 */
	@RequestMapping(value="/edit")
	public ModelAndView edit(MultipartRequest multipartRequest,HttpServletRequest request) throws Exception{
		logBefore(logger, "修改CourseVido");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "edit")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		
		//图片
		MultipartFile file = multipartRequest.getFile("tpPic");
		String  ffile = DateUtil.getDays(), fileName = "";
		if (null != file && !file.isEmpty()) {
			String filePath = PathUtil.getClasspath() + Const.FILEPATHIMG + ffile;		//文件上传路径
			fileName = FileUpload.fileUp(file, filePath, this.get32UUID());				//执行上传
			pd.put("LOGO_PATH", ffile + "/" + fileName);				//路径
		}
		
		//视频
		MultipartFile vidoFile = multipartRequest.getFile("tpVido");
		String  vidofile = DateUtil.getDays(), vidoFileName = "";
		if (null != vidoFile && !vidoFile.isEmpty()) {
			String filePath = PathUtil.getClasspath() + Const.FILEPATHIMG + vidofile;		//文件上传路径
			vidoFileName = FileUpload.fileUp(vidoFile, filePath, this.get32UUID());				//执行上传
			pd.put("VIDO_PATH", vidofile + "/" + vidoFileName);				//路径
		}
		
		
		coursevidoService.edit(pd);
		mv.addObject("msg","success");
		mv.setViewName("save_result");
		return mv;
	}
	
	/**
	 * 列表
	 */
	@RequestMapping(value="/list")
	public ModelAndView list(Page page){
		logBefore(logger, "列表CourseVido");
		//if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;} //校验权限
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		try{
			pd = this.getPageData();
			page.setPd(pd);
			List<PageData>	varList = coursevidoService.list(page);	//列出CourseVido列表
			mv.setViewName("admin/coursevido/coursevido_list");
			mv.addObject("varList", varList);
			mv.addObject("pd", pd);
			mv.addObject(Const.SESSION_QX,this.getHC());	//按钮权限
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}
	
	/**
	 * 去新增页面
	 */
	@RequestMapping(value="/goAdd")
	public ModelAndView goAdd(){
		logBefore(logger, "去新增CourseVido页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			mv.setViewName("admin/coursevido/coursevido_edit");
			mv.addObject("msg", "save");
			mv.addObject("pd", pd);
			mv.addObject("ctypeList", getCourseTypeList());
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}						
		return mv;
	}	
	
	/**
	 * 去修改页面
	 */
	@RequestMapping(value="/goEdit")
	public ModelAndView goEdit(){
		logBefore(logger, "去修改CourseVido页面");
		ModelAndView mv = this.getModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try {
			pd = coursevidoService.findById(pd);	//根据ID读取
			mv.setViewName("admin/coursevido/coursevido_edit");
			mv.addObject("msg", "edit");
			mv.addObject("pd", pd);
			mv.addObject("ctypeList", getCourseTypeList());
		} catch (Exception e) {
			logger.error(e.toString(), e);
		}						
		return mv;
	}	
	
	/**
	 * 批量删除
	 */
	@RequestMapping(value="/deleteAll")
	@ResponseBody
	public Object deleteAll() {
		logBefore(logger, "批量删除CourseVido");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "dell")){return null;} //校验权限
		PageData pd = new PageData();		
		Map<String,Object> map = new HashMap<String,Object>();
		try {
			pd = this.getPageData();
			List<PageData> pdList = new ArrayList<PageData>();
			String DATA_IDS = pd.getString("DATA_IDS");
			if(null != DATA_IDS && !"".equals(DATA_IDS)){
				String ArrayDATA_IDS[] = DATA_IDS.split(",");
				coursevidoService.deleteAll(ArrayDATA_IDS);
				pd.put("msg", "ok");
			}else{
				pd.put("msg", "no");
			}
			pdList.add(pd);
			map.put("list", pdList);
		} catch (Exception e) {
			logger.error(e.toString(), e);
		} finally {
			logAfter(logger);
		}
		return AppUtil.returnObject(pd, map);
	}
	
	/*
	 * 导出到excel
	 * @return
	 */
	@RequestMapping(value="/excel")
	public ModelAndView exportExcel(){
		logBefore(logger, "导出CourseVido到excel");
		if(!Jurisdiction.buttonJurisdiction(menuUrl, "cha")){return null;}
		ModelAndView mv = new ModelAndView();
		PageData pd = new PageData();
		pd = this.getPageData();
		try{
			Map<String,Object> dataMap = new HashMap<String,Object>();
			List<String> titles = new ArrayList<String>();
			titles.add("视频名称");	//1
			titles.add("视频LOGO");	//2
			titles.add("视频路径");	//3
			titles.add("视频介绍");	//4
			titles.add("视频排序");	//5
			titles.add("所属课程");	//6
			titles.add("视频时长");	//7
			dataMap.put("titles", titles);
			List<PageData> varOList = coursevidoService.listAll(pd);
			List<PageData> varList = new ArrayList<PageData>();
			for(int i=0;i<varOList.size();i++){
				PageData vpd = new PageData();
				vpd.put("var1", varOList.get(i).getString("NAME"));	//1
				vpd.put("var2", varOList.get(i).getString("LOGO_PATH"));	//2
				vpd.put("var3", varOList.get(i).getString("VIDO_PATH"));	//3
				vpd.put("var4", varOList.get(i).getString("VIDO_DESC"));	//4
				vpd.put("var5", varOList.get(i).getString("VIDO_SORT"));	//5
				vpd.put("var6", varOList.get(i).getString("COURSE_TYPE_ID"));	//6
				vpd.put("var7", varOList.get(i).getString("VIDO_TIME"));	//7
				varList.add(vpd);
			}
			dataMap.put("varList", varList);
			ObjectExcelView erv = new ObjectExcelView();
			mv = new ModelAndView(erv,dataMap);
		} catch(Exception e){
			logger.error(e.toString(), e);
		}
		return mv;
	}
	
	/* ===============================权限================================== */
	public Map<String, String> getHC(){
		Subject currentUser = SecurityUtils.getSubject();  //shiro管理的session
		Session session = currentUser.getSession();
		return (Map<String, String>)session.getAttribute(Const.SESSION_QX);
	}
	/* ===============================权限================================== */
	
	@InitBinder
	public void initBinder(WebDataBinder binder){
		DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(format,true));
	}
}
