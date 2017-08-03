package seience.havelook.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import seience.havelook.pojo.Article;
import seience.havelook.pojo.ArticleWithBLOBs;
import seience.havelook.pojo.Category;
import seience.havelook.service.ArticleService;
import seience.havelook.service.CategoryService;
import seience.havelook.utils.QueryVo;

@Controller
public class ArticleController {
	@Autowired
	ArticleService articleService;
	@Autowired
	CategoryService categoryService;

	@RequestMapping("/admin")
	public String queryArticleList(Model model) {
		// 查询出所有文章，放置后台
		List<Article> articleList = articleService.selectByExampleWithCategory();
		model.addAttribute("articleList", articleList);

		return "admin/adminShow";
	}

	@RequestMapping("/toEdit")
	public String toEdit(Model model) {
		List<Category> categoryList = categoryService.selectByExample();
		model.addAttribute("categoryList", categoryList);
		return "edit/writer";
	}

	// 执行保存或更新
	@RequestMapping("/edit/saveOrUpdate")
	public @ResponseBody void toEditShow(QueryVo vo) {
		 Date currentTime = new Date();
		 SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-ddHH:mm:ss");
		 
		
		ArticleWithBLOBs articleWithBLOBs = new ArticleWithBLOBs();
		articleWithBLOBs.setArticleContent(vo.getArticle_content());
		articleWithBLOBs.setArticleName(vo.getArticle_name());
		articleWithBLOBs.setCategoryId(vo.getCategory_id());
		if(vo.getArticle_id() != null){
			articleWithBLOBs.setModifyTime(formatter.format(currentTime));
			articleService.updateByPrimaryKeyWithBLOBs(articleWithBLOBs);
		}else {
			articleWithBLOBs.setPublishTime(formatter.format(currentTime));
			articleService.insertSelective(articleWithBLOBs);
		}
	}

	// 删除
	@RequestMapping("/edit/deleteEdit")
	public void deleteEdit(Integer articleId) {
		articleService.deleteByPrimaryKey(articleId);
	}
	
	// 修改————————RestFul风格的开发
	@RequestMapping("edit/updateEdit/{articleId}")
	public String updateEdit(@PathVariable Integer articleId, Model model) {
		
        ArticleWithBLOBs articleWithBLOBs = articleService.selectByPrimaryKey(articleId);
        model.addAttribute("articleWithBLOBs", articleWithBLOBs);
        
        List<Category> categoryList = categoryService.selectByExample();
		model.addAttribute("categoryList", categoryList);
		return "edit/updatewriter";
	}
	
}
