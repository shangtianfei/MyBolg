package seience.havelook.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import seience.havelook.pojo.Article;
import seience.havelook.pojo.Category;
import seience.havelook.service.ArticleService;
import seience.havelook.service.CategoryService;
import seience.havelook.utils.QueryVo;

@Controller
public class CategoryController {
	// 添加一个类
	@Autowired
	CategoryService categoryService;
	
	@RequestMapping("/category/add")
	@ResponseBody
	public  List<Category> insertSelective(QueryVo vo) {
		//添加类别
		categoryService.insertSelective(vo);
		List<Category> categoryList = categoryService.selectCategorys();
		return  categoryList;//查询类别
	}
	
	//删除类别
	@RequestMapping("/category/deleteCategory")
	public String deleteByPrimaryKey(QueryVo vo){
		categoryService.deleteByPrimaryKey(vo.getCategory_id());
		return null;
	}
	
	//查询该类下的所有文章
	@RequestMapping("/category/selectByCategoryId")
	@ResponseBody
	public  List<Article> selectByExampleWithCategoryByCategoryId(QueryVo vo) {
		List<Article> articleList = categoryService.selectByExampleWithCategoryByCategoryId(vo.getCategory_id());
		return  articleList;
	}
	
	//修改列别名
	@RequestMapping("/category/update")
	@ResponseBody
	public  List<Category> updateByPrimaryKey(QueryVo vo) {
		//修改类别
		categoryService.updateByPrimaryKey(vo);
		//查询返回数据
		List<Category> categoryList = categoryService.selectCategorys();
		return  categoryList;//查询类别
	} 
	
}






