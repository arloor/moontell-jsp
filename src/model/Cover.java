package model;

/**
 * Created by moontell on 2017/4/18.
 */
public class Cover {
    public Cover(){
        this.CoverContent="<h1>moontell封面内容</h1><p>这个封面内容应该是可以定制的，也就是说，以后这段文字应该从数据库读取</p>";
    }

    public String getCoverContent() {
        return CoverContent;
    }

    public void setCoverContent(String coverContent) {
        CoverContent = coverContent;
    }

    private String CoverContent;

    public String toAjaxResponseText() {
        return this.getCoverContent();
    }
}
