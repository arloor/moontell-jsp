package model;

/**
 * Created by moontell on 2017/4/24.
 */
public class MemoryVO {
    private int sID;
    private String stitle;
    private String stext;
    private String icon;
    private String icontheme;
    private String sdate;
    private int guest_visible;

    public MemoryVO(int sID, String stitle, String stext, String icon, String icontheme, String sdate, int guest_visible) {
        this.sID = sID;
        this.stitle = stitle;
        this.stext = stext;
        this.icon = icon;
        this.icontheme = icontheme;
        this.sdate = sdate;
        this.guest_visible = guest_visible;
    }

    public int getsID() {
        return sID;
    }

    public void setsID(int sID) {
        this.sID = sID;
    }

    public String getStitle() {
        return stitle;
    }

    public void setStitle(String stitle) {
        this.stitle = stitle;
    }

    public String getStext() {
        return stext;
    }

    public void setStext(String stext) {
        this.stext = stext;
    }

    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public String getIcontheme() {
        return icontheme;
    }

    public void setIcontheme(String icontheme) {
        this.icontheme = icontheme;
    }

    public String getSdate() {
        return sdate;
    }

    public void setSdate(String sdate) {
        this.sdate = sdate;
    }

    public int getGuest_visible() {
        return guest_visible;
    }

    public void setGuest_visible(int guest_visible) {
        this.guest_visible = guest_visible;
    }
}
