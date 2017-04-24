package model;

/**
 * Created by moontell on 2017/4/24.
 */
public class PostVersionVO {
    private int id;
    private int version;
    private String time;

    public PostVersionVO(int id, int version, String time) {
        this.id = id;
        this.version = version;
        this.time = time;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getVersion() {
        return version;
    }

    public void setVersion(int version) {
        this.version = version;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
}


