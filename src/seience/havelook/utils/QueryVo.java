package seience.havelook.utils;

public class QueryVo {
	// 文本内容
	private String article_content;
	private String article_name;
	private String category_name;
	private Integer category_id;
	private Integer article_id;
	private Integer user_id;
	private Integer commentId;
	private Byte is_checked;
	private Short friendLikes_id;
  
	public Short getFriendLikes_id() {
		return friendLikes_id;
	}

	public void setFriendLikes_id(Short friendLikes_id) {
		this.friendLikes_id = friendLikes_id;
	}

	public Byte getIs_checked() {
		return is_checked;
	}

	public void setIs_checked(Byte is_checked) {
		this.is_checked = is_checked;
	}

	public Integer getCommentId() {
		return commentId;
	}

	public void setCommentId(Integer commentId) {
		this.commentId = commentId;
	}

	public Integer getUser_id() {
		return user_id;
	}

	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}

	public String getCategory_name() {
		return category_name;
	}

	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}

	public Integer getArticle_id() {
		return article_id;
	}

	public void setArticle_id(Integer article_id) {
		this.article_id = article_id;
	}

	public Integer getCategory_id() {
		return category_id;
	}

	public void setCategory_id(Integer category_id) {
		this.category_id = category_id;
	}

	public String getArticle_content() {
		return article_content;
	}

	public void setArticle_content(String article_content) {
		this.article_content = article_content;
	}

	public String getArticle_name() {
		return article_name;
	}

	public void setArticle_name(String article_name) {
		this.article_name = article_name;
	}

}
