package model;

/**
 * Created by moontell on 2017/4/22.
 */
public class PostVO {
    private int postId;
    private int version;
    private int post_author;
    private String address;
    private String post_time;
    private int guest_visible;
    private String postTitle;
    private String postsContent;
    private int commontable;
    private int isDeleted;

    public PostVO(int postId, int version, int post_author, String address,String post_time, int guest_visible, String postTitle, String postsContent, int commontable, int isDeleted) {
        this.postId = postId;
        this.version = version;
        this.post_author = post_author;
        this.address = address;
        this.post_time=post_time;
        this.guest_visible = guest_visible;
        this.postTitle = postTitle;
        this.postsContent = postsContent;
        this.commontable = commontable;
        this.isDeleted = isDeleted;
    }

    public int getPostId() {
        return postId;
    }

    public void setPostId(int postId) {
        this.postId = postId;
    }

    public int getVersion() {
        return version;
    }

    public void setVersion(int version) {
        this.version = version;
    }

    public int getPost_author() {
        return post_author;
    }

    public void setPost_author(int post_author) {
        this.post_author = post_author;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getGuest_visible() {
        return guest_visible;
    }

    public void setGuest_visible(int guest_visible) {
        this.guest_visible = guest_visible;
    }

    public String getPostTitle() {
        return postTitle;
    }

    public void setPostTitle(String postTitle) {
        this.postTitle = postTitle;
    }

    public String getPostsContent() {
        return postsContent;
    }

    public void setPostsContent(String postsContent) {
        this.postsContent = postsContent;
    }

    public int getCommontable() {
        return commontable;
    }

    public void setCommontable(int commontable) {
        this.commontable = commontable;
    }

    public int getIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(int isDeleted) {
        this.isDeleted = isDeleted;
    }

    public String getPost_time() {
        return post_time;
    }

    public void setPost_time(String post_time) {
        this.post_time = post_time;
    }
}
