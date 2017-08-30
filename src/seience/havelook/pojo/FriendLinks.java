package seience.havelook.pojo;

public class FriendLinks {
    private Short id;

    private String web_name;

    private String web_url;

    private Short sort_num;

    public Short getId() {
        return id;
    }

    public void setId(Short id) {
        this.id = id;
    }

    public String getWeb_name() {
        return web_name;
    }

    public void setWeb_name(String web_name) {
        this.web_name = web_name == null ? null : web_name.trim();
    }

    public String getWeb_url() {
        return web_url;
    }

    public void setWeb_url(String web_url) {
        this.web_url = web_url == null ? null : web_url.trim();
    }

    public Short getSort_num() {
        return sort_num;
    }

    public void setSort_num(Short sort_num) {
        this.sort_num = sort_num;
    }
}