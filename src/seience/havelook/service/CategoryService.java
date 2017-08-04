package seience.havelook.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import seience.havelook.dao.CategoryMapper;
import seience.havelook.pojo.Category;
import seience.havelook.utils.QueryVo;
@Service
public class CategoryService {
	@Autowired
	CategoryMapper categoryMapper;

	public  List<Category> selectByExample() {
		// TODO Auto-generated method stub
		return categoryMapper.selectByExample(null);
	}

	public void insertSelective(QueryVo vo) {
		// TODO Auto-generated method stub
		Category category = new Category();
		category.setCategoryName(vo.getCategory_name());
		categoryMapper.insertSelective(category);
	}

}
