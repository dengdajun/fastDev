package com.fh.controller.protal;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.fh.controller.base.BaseController;
import com.fh.service.admin.banner.BannerService;
import com.fh.service.admin.homevido.HomeVidoService;
import com.fh.service.admin.newssting.NewsStingService;
import com.fh.service.admin.qqseting.QqSetingService;
import com.fh.service.admin.schoolinformation.SchoolInformationService;
import com.fh.util.PageData;

@Controller
@RequestMapping(value="/protal")
public class ProtalController extends BaseController {
	@Resource(name="bannerService")
	private BannerService bannerService;//附件service
	@Resource(name="newsstingService")
	private NewsStingService newsstingService;//战报service
	@Resource(name="homevidoService")
	private HomeVidoService homevidoService;//首页视频service
	@Resource(name="schoolinformationService")
	private SchoolInformationService schoolinformationService;//学校信息service
	@Resource(name="qqsetingService")
	private QqSetingService qqsetingService;//qq咨询设置
	/**
	 * qq广告,学校footer部分，位公用部分，这个controller每个请求都会进行查询
	 */
	@ModelAttribute
	public void comm(){
		PageData pd = new PageData();
		HttpServletRequest request=getRequest();
		try {
			List<PageData> information=schoolinformationService.listAll(pd);
			if(null!=information&&information.size()>0){
				request.setAttribute("information", information.get(0).getMap());
			}
			List<PageData> qqSet=qqsetingService.listAll(pd);
			if(null!=qqSet&&qqSet.size()>0){
				request.setAttribute("qqSet", qqSet.get(0).getMap());
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	/**
	 * 首页跳转并进行数据加载
	 */
	@RequestMapping(value="/index",method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView index(){
		ModelAndView mv=getModelAndView();
		mv.setViewName("protal/index");
		PageData pd = new PageData();
		List<Map<String,Object>> homePics=new ArrayList<Map<String,Object>>();
		List<Map<String,Object>> newsresult=new ArrayList<Map<String,Object>>();
		try {
			//图片留空方法
//			pd.put("NAME","banner1");
//			List<PageData> list1=bannerService.listAll(pd);
//			if(null!=list1&&list1.size()>0){
//				attachments.add(list1.get(0).getMap());
//			}
//			pd.put("NAME","banner2");
//			List<PageData> list2=bannerService.listAll(pd);
//			if(null!=list2&&list2.size()>0){
//				attachments.add(list2.get(0).getMap());
//			}
//			pd.put("NAME","banner2");
//			List<PageData> list3=bannerService.listAll(pd);
//			if(null!=list3&&list3.size()>0){
//				attachments.add(list3.get(0).getMap());
//			}
//			死数据代码
			homePics.add(new HashMap<String,Object>(){{put("PATH","static_taige/img/banner1.jpg");}});
			homePics.add(new HashMap<String,Object>(){{put("PATH","static_taige/img/banner2.png");}});
			homePics.add(new HashMap<String,Object>(){{put("PATH","static_taige/img/banner3.png");}});
//			最新战报的查询
//			List<PageData> news=newsstingService.listAll(new PageData());
//			for(PageData page:news){
//				newsresult.add(page.getMap());
//			}
//			死数据代码
			newsresult.add(new HashMap<String,Object>(){{put("TITLE","测试");}});
			List<PageData> videolist=homevidoService.listAll(new PageData());
			if(null!=videolist&&videolist.size()>0){
//				mv.addObject("home_video",videolist.get(0).getMap());
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		mv.addObject("homePics", homePics);
		mv.addObject("news",newsresult);
		return mv;
	}	
	
	
	
	/**
	 * video跳转并进行数据加载
	 *   @RequestMapping(value = "/videos", method = {RequestMethod.GET, RequestMethod.POST})
     *	public ModelAndView Videos(ModelAndView mv) {
     *  List<Course> videos=courseService.queryByProerties("ctype",1);
	 */
	@RequestMapping(value="/videos",method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView videos(){
		ModelAndView mv=getModelAndView();
		mv.setViewName("protal/videos");
		return mv;
	}	
	
	
	/**
	 */
	@RequestMapping(value="/you",method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView you(){
		ModelAndView mv=getModelAndView();
		mv.setViewName("protal/you");
		return mv;
	}	
	/**
	 */
	@RequestMapping(value="/us",method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView us(){
		ModelAndView mv=getModelAndView();
		mv.setViewName("protal/us");
		return mv;
	}	
	/**
	 */
	@RequestMapping(value="/news",method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView news(){
		ModelAndView mv=getModelAndView();
		mv.setViewName("protal/news");
		return mv;
	}	
	/**
	 */
	@RequestMapping(value="/branch",method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView branch(){
		ModelAndView mv=getModelAndView();
		mv.setViewName("protal/branch");
		return mv;
	}	
	
	/**
	 */
	@RequestMapping(value="/you-text",method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView youtext(){
		ModelAndView mv=getModelAndView();
		mv.setViewName("protal/you-text");
		return mv;
	}	
	/**
	 */
	@RequestMapping(value="/you-mode",method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView youMode(){
		ModelAndView mv=getModelAndView();
		mv.setViewName("protal/you-mode");
		return mv;
	}	
	/**
	 * 最新战报
	 * @return
	 */
	@RequestMapping(value="/news-battlefield",method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView newsBattlefield(){
		ModelAndView mv=getModelAndView();
		mv.setViewName("protal/news-battlefield");
		return mv;
	}
	/**
	 * 最新优惠
	 * @return
	 */
	@RequestMapping(value="/news-discount",method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView newsDiscount(){
		ModelAndView mv=getModelAndView();
		mv.setViewName("protal/news-discount");
		return mv;
	}
	/**
	 * 华为课程试听
	 * @return
	 */
	@RequestMapping(value="/videos-huawei",method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView videosHuawei(){
		ModelAndView mv=getModelAndView();
		mv.setViewName("protal/videos-huawei");
		return mv;
	}
	/**
	 * 我们的环境
	 * @return
	 */
	@RequestMapping(value="/us-envir",method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView usEnvir(){
		ModelAndView mv=getModelAndView();
		mv.setViewName("protal/us-envir");
		return mv;
	}
	/**
	 * 我们的课题
	 * @return
	 */
	@RequestMapping(value="/us-course",method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView usCourse(){
		ModelAndView mv=getModelAndView();
		mv.setViewName("protal/us-course");
		return mv;
	}
	/**
	 * 我们的优势
	 */
	@RequestMapping(value="/us-advantage",method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView usAdvantage(){
		ModelAndView mv=getModelAndView();
		mv.setViewName("protal/us-advantage");
		return mv;
	}	
	
	
	
}
