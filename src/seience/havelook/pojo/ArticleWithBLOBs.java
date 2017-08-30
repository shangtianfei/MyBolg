package seience.havelook.pojo;

public class ArticleWithBLOBs extends Article {
    private String article_desc;

    private String article_content;

    public String getArticle_desc() {
        return article_desc;
    }

    public void setArticle_desc(String article_desc) {
        this.article_desc = article_desc == null ? null : article_desc.trim();
    }

    public String getArticle_content() {
        return article_content;
    }

    public void setArticle_content(String article_content) {
        this.article_content = article_content == null ? null : article_content.trim();
    }
}