package seience.havelook.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import seience.havelook.dao.ArticleMapper;
import seience.havelook.pojo.Article;
import seience.havelook.pojo.ArticleWithBLOBs;
import seience.havelook.pojo.PagePojo;
import seience.havelook.utils.QueryVo;

@Service
public class ArticleService {
	@Autowired
	ArticleMapper articleMapper;

	public List selectByExampleWithBLOBs() {
		return null;
		// TODO Auto-generated method stub
		// return articleMapper.selectByExampleWithBLOBs(null);
	}

	public void insertSelective(ArticleWithBLOBs articleWithBLOBs) {
		// TODO Auto-generated method stub
		articleMapper.insertSelective(articleWithBLOBs);
	}

	public void deleteByPrimaryKey(Integer article_id) {
		// TODO Auto-generated method stub
		articleMapper.deleteByPrimaryKey(article_id);
	}

	public ArticleWithBLOBs selectByPrimaryKey(Integer article_id) {
		// TODO Auto-generated method stub
		return articleMapper.selectByPrimaryKey(article_id);
	}

	public ArticleWithBLOBs selectByPrimaryKeyWithCategoryAndUserinfo(Integer article_id) {
		// TODO Auto-generated method stub
		return articleMapper.selectByPrimaryKeyWithCategoryAndUserinfo(article_id);
	}

	public List<Article> selectByExampleWithCategoryAndUserinfo() {
		// TODO Auto-generated method stub
		return articleMapper.selectByExampleWithCategoryAndUserinfo();
	}

	public void updateByPrimaryKeySelective(ArticleWithBLOBs articleWithBLOBs) {
		// TODO Auto-generated method stub
		articleMapper.updateByPrimaryKeySelective(articleWithBLOBs);
	}


	public ArticleWithBLOBs saveOrUpdateCommon(QueryVo vo) {
		// TODO Auto-generated method stub
		ArticleWithBLOBs articleWithBLOBs = new ArticleWithBLOBs();
		if (vo.getArticle_content().length() > 255) {
			articleWithBLOBs.setArticle_thumb(vo.getArticle_content().substring(0, 255));
		} else {
			articleWithBLOBs.setArticle_thumb(vo.getArticle_content());
		}
		articleWithBLOBs.setArticle_content(vo.getArticle_content());
		articleWithBLOBs.setArticle_name(vo.getArticle_name());
		articleWithBLOBs.setCategory_id(vo.getCategory_id());
		return articleWithBLOBs;
	}

	public List<Article> selectRecentNewsOrderByDescWithLimit(Integer articleLimit) {
		// TODO Auto-generated method stub
		return articleMapper.selectRecentNewsOrderByDescWithLimit(articleLimit);
	}

	/**
	 * 
	 * @param article_id   本次用户要查询的文章主键
	 * @param pageSize  一次查询的数量
	 * @return
	 */
	public PagePojo PersonService(Integer article_id, Integer pageSize) {
		// TODO Auto-generated method stub
		PagePojo pagePojo = new PagePojo();
		
		Integer allRows = articleMapper.getAllRowCount();//获取总记录数
		
		int totalPage = pagePojo.getTotalPages(pageSize, allRows);//总页数
		
//		int currentPage = pagePojo.getCurPage(page);//得到当前页
		
		pagePojo.setAllRows(allRows);
		return pagePojo;
	}

}
