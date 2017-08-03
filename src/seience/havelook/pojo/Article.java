package seience.havelook.pojo;

import java.util.Date;

public class Article {
    private Integer articleId;

    private String articleName;

    private String articleAuthor;

    private Date publishTime;

    private Integer modifyTime;

    private Integer categoryId;

    private String articleKeyword;

    private String articleImg;

    private String articleThumb;

    private Integer isTop;

    private Integer articleView;

    private Integer articleLove;

	private Category category;

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}
    public Integer getArticleId() {
        return articleId;
    }

    public void setArticleId(Integer articleId) {
        this.articleId = articleId;
    }

    public String getArticleName() {
        return articleName;
    }

    public void setArticleName(String articleName) {
        this.articleName = articleName == null ? null : articleName.trim();
    }

    public String getArticleAuthor() {
        return articleAuthor;
    }

    public void setArticleAuthor(String articleAuthor) {
        this.articleAuthor = articleAuthor == null ? null : articleAuthor.trim();
    }

    public Date getPublishTime() {
        return publishTime;
    }

    public void setPublishTime(Date publishTime) {
        this.publishTime = publishTime;
    }

    public Integer getModifyTime() {
        return modifyTime;
    }

    public void setModifyTime(Integer modifyTime) {
        this.modifyTime = modifyTime;
    }

    public Integer getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Integer categoryId) {
        this.categoryId = categoryId;
    }

    public String getArticleKeyword() {
        return articleKeyword;
    }

    public void setArticleKeyword(String articleKeyword) {
        this.articleKeyword = articleKeyword == null ? null : articleKeyword.trim();
    }

    public String getArticleImg() {
        return articleImg;
    }

    public void setArticleImg(String articleImg) {
        this.articleImg = articleImg == null ? null : articleImg.trim();
    }

    public String getArticleThumb() {
        return articleThumb;
    }

    public void setArticleThumb(String articleThumb) {
        this.articleThumb = articleThumb == null ? null : articleThumb.trim();
    }

    public Integer getIsTop() {
        return isTop;
    }

    public void setIsTop(Integer isTop) {
        this.isTop = isTop;
    }

    public Integer getArticleView() {
        return articleView;
    }

    public void setArticleView(Integer articleView) {
        this.articleView = articleView;
    }

    public Integer getArticleLove() {
        return articleLove;
    }

    public void setArticleLove(Integer articleLove) {
        this.articleLove = articleLove;
    }
}