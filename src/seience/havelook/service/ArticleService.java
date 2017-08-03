package seience.havelook.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import seience.havelook.dao.ArticleMapper;
import seience.havelook.pojo.Article;
import seience.havelook.pojo.ArticleWithBLOBs;
@Service
public class ArticleService {
	@Autowired
	ArticleMapper articleMapper;

	public List selectByExampleWithBLOBs() {
		// TODO Auto-generated method stub
		return articleMapper.selectByExampleWithBLOBs(null);
	}

	public void insertSelective(ArticleWithBLOBs articleWithBLOBs) {
		// TODO Auto-generated method stub
		articleMapper.insertSelective(articleWithBLOBs);
	}

	public void deleteByPrimaryKey(Integer articleId) {
		// TODO Auto-generated method stub
		articleMapper.deleteByPrimaryKey(articleId);
	}

	public ArticleWithBLOBs selectByPrimaryKey(Integer articleId) {
		// TODO Auto-generated method stub
		return articleMapper.selectByPrimaryKey(articleId);
	}

	public List<Article> selectByExampleWithCategory() {
		// TODO Auto-generated method stub
		return articleMapper.selectByExampleWithCategory();
	}

	public void updateByPrimaryKeyWithBLOBs(ArticleWithBLOBs articleWithBLOBs) {
		// TODO Auto-generated method stub
		articleMapper.updateByPrimaryKeyWithBLOBs(articleWithBLOBs);
	}

	

}
