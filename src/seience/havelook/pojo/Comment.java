package seience.havelook.pojo;

public class Comment {
    private Integer id;

    private Integer pid;

    private String username;

    private String img_url;

    private Integer like_count;

    private String content;

    private String timestamp;

    private Byte is_checked;

    private Integer article_id;

    private String useremail;

    private String web_likes;

    private Article article;
    public Article getArticle() {
		return article;
	}

	public void setArticle(Article article) {
		this.article = article;
	}

	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getImg_url() {
        return img_url;
    }

    public void setImg_url(String img_url) {
        this.img_url = img_url == null ? null : img_url.trim();
    }

    public Integer getLike_count() {
        return like_count;
    }

    public void setLike_count(Integer like_count) {
        this.like_count = like_count;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public String getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(String timestamp) {
        this.timestamp = timestamp == null ? null : timestamp.trim();
    }

    public Byte getIs_checked() {
        return is_checked;
    }

    public void setIs_checked(Byte is_checked) {
        this.is_checked = is_checked;
    }

    public Integer getArticle_id() {
        return article_id;
    }

    public void setArticle_id(Integer article_id) {
        this.article_id = article_id;
    }

    public String getUseremail() {
        return useremail;
    }

    public void setUseremail(String useremail) {
        this.useremail = useremail == null ? null : useremail.trim();
    }

    public String getWeb_likes() {
        return web_likes;
    }

    public void setWeb_likes(String web_likes) {
        this.web_likes = web_likes == null ? null : web_likes.trim();
    }
}