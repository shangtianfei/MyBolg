package seience.havelook.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import seience.havelook.dao.ArticleMapper;
import seience.havelook.dao.CategoryMapper;
import seience.havelook.pojo.Article;
import seience.havelook.pojo.Category;
import seience.havelook.utils.QueryVo;
@Service
public class CategoryService {
	@Autowired
	CategoryMapper categoryMapper;

	@Autowired
	ArticleMapper articleMapper;
	
	public  List<Category> selectCategorys() {
		// TODO Auto-generated method stub
		return categoryMapper.selectCategorys();
	}

	public void insertSelective(QueryVo vo) {
		// TODO Auto-generated method stub
		Category category = new Category();
		category.setCategory_name(vo.getCategory_name());
		categoryMapper.insertSelective(category);
	}

	public List<Article> selectByExampleWithCategoryByCategoryId(Integer category_id) {
		// TODO Auto-generated method stub
		return articleMapper.selectByExampleWithCategoryAndUserinfoByCategoryId(category_id);
	}

	public void deleteByPrimaryKey(Integer category_id) {
		// TODO Auto-generated method stub
		articleMapper.deleteByCategory_id(category_id);//先删除该类别下的所有文章
		categoryMapper.deleteByPrimaryKey(category_id);
	}

	public void updateByPrimaryKey(QueryVo vo) {
		// TODO Auto-generated method stub
		Category category = new Category();
		category.setCategory_id(vo.getCategory_id());
		category.setCategory_name(vo.getCategory_name());
		categoryMapper.updateByPrimaryKey(category);
	}

}
