package seience.havelook.pojo;

public class Userinfo {
    private Integer user_id;

    private String username;

    private String password;

    private String user_email;

    private String timestamp;

    private String userlastip;


	public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getUser_email() {
        return user_email;
    }

    public void setUser_email(String user_email) {
        this.user_email = user_email == null ? null : user_email.trim();
    }

    public String getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(String timestamp) {
        this.timestamp = timestamp == null ? null : timestamp.trim();
    }

    public String getUserlastip() {
        return userlastip;
    }

    public void setUserlastip(String userlastip) {
        this.userlastip = userlastip == null ? null : userlastip.trim();
    }
}