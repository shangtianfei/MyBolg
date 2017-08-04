package seience.havelook.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import seience.havelook.pojo.Category;
import seience.havelook.service.CategoryService;
import seience.havelook.utils.QueryVo;

@Controller
public class CategoryController {
	// 添加一个类
	@Autowired
	CategoryService categoryService;
	@RequestMapping("/category/add")
	public @ResponseBody String insertSelective(QueryVo vo) {
		categoryService.insertSelective(vo);
		return "OK";
	}
}
