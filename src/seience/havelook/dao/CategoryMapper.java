package seience.havelook.dao;

import java.util.List;

import seience.havelook.pojo.Category;

public interface CategoryMapper {
    int deleteByPrimaryKey(Integer category_id);

    int insert(Category record);

    int insertSelective(Category record);

    Category selectByPrimaryKey(Integer category_id);
    
    List<Category> selectCategorys();

    int updateByPrimaryKeySelective(Category record);

    int updateByPrimaryKey(Category record);

}