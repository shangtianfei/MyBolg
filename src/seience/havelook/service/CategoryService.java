package seience.havelook.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import seience.havelook.dao.CategoryMapper;
import seience.havelook.pojo.Category;
@Service
public class CategoryService {
	@Autowired
	CategoryMapper categoryMapper;

	public  List<Category> selectByExample() {
		// TODO Auto-generated method stub
		return categoryMapper.selectByExample(null);
	}

}
