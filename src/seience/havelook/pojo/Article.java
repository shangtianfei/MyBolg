package seience.havelook.pojo;

public class Article {
    private Integer article_id;

    private String article_name;

    private Integer user_id;

    private String publish_time;

    private String modify_time;

    private Integer category_id;

    private String article_keyword;

    private String article_img;

    private String article_thumb;

    private Integer is_top;

    private Integer article_view;

    private Integer article_love;

    private Category category;
    
    private Userinfo userinfo;
    
    public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Userinfo getUserinfo() {
		return userinfo;
	}

	public void setUserinfo(Userinfo userinfo) {
		this.userinfo = userinfo;
	}

	public Integer getArticle_id() {
        return article_id;
    }

    public void setArticle_id(Integer article_id) {
        this.article_id = article_id;
    }

    public String getArticle_name() {
        return article_name;
    }

    public void setArticle_name(String article_name) {
        this.article_name = article_name == null ? null : article_name.trim();
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public String getPublish_time() {
        return publish_time;
    }

    public void setPublish_time(String publish_time) {
        this.publish_time = publish_time == null ? null : publish_time.trim();
    }

    public String getModify_time() {
        return modify_time;
    }

    public void setModify_time(String modify_time) {
        this.modify_time = modify_time == null ? null : modify_time.trim();
    }

    public Integer getCategory_id() {
        return category_id;
    }

    public void setCategory_id(Integer category_id) {
        this.category_id = category_id;
    }

    public String getArticle_keyword() {
        return article_keyword;
    }

    public void setArticle_keyword(String article_keyword) {
        this.article_keyword = article_keyword == null ? null : article_keyword.trim();
    }

    public String getArticle_img() {
        return article_img;
    }

    public void setArticle_img(String article_img) {
        this.article_img = article_img == null ? null : article_img.trim();
    }

    public String getArticle_thumb() {
        return article_thumb;
    }

    public void setArticle_thumb(String article_thumb) {
        this.article_thumb = article_thumb == null ? null : article_thumb.trim();
    }

    public Integer getIs_top() {
        return is_top;
    }

    public void setIs_top(Integer is_top) {
        this.is_top = is_top;
    }

    public Integer getArticle_view() {
        return article_view;
    }

    public void setArticle_view(Integer article_view) {
        this.article_view = article_view;
    }

    public Integer getArticle_love() {
        return article_love;
    }

    public void setArticle_love(Integer article_love) {
        this.article_love = article_love;
    }
}