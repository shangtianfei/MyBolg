package seience.havelook.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

import seience.havelook.pojo.Article;
import seience.havelook.pojo.ArticleWithBLOBs;

public interface ArticleMapper {
    int deleteByPrimaryKey(Integer article_id);
    
    int deleteByCategory_id(Integer category_id);

    int insert(ArticleWithBLOBs record);

    int insertSelective(ArticleWithBLOBs record);

    ArticleWithBLOBs selectByPrimaryKey(Integer article_id);

	ArticleWithBLOBs selectByPrimaryKeyWithCategoryAndUserinfo(Integer article_id);

    List<Article> selectByExampleWithCategoryAndUserinfo();
    
    List<Article> selectRecentNewsOrderByDescWithLimit(Integer articleLimit);
    
    List<Article> selectByExampleWithCategoryAndUserinfoByCategoryId(Integer category_id);
    
    @Select("SELECT COUNT(a.article_id) FROM article a")
	Integer getAllRowCount();

    int updateByPrimaryKeySelective(ArticleWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(ArticleWithBLOBs record);

    int updateByPrimaryKey(Article record);

}