package Bean;

public class Course {
    private String cno;
    private String cname;
    private int courseNature;
    private double credits;
    private String searchInfo;


    public Course(String cno, String cname, int courseNature, double credits) {
        this.cno = cno;
        this.cname = cname;
        this.courseNature = courseNature;
        this.credits = credits;
    }

    public Course(){
        this.searchInfo = "";
        this.courseNature = 3;
    }

    public Course(String searchInfo, int courseNature){
        this.courseNature = courseNature;
        this.searchInfo = searchInfo;
    }

    public String getCno() {
        return cno;
    }

    public void setCno(String cno) {
        this.cno = cno;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }

    public int getCourseNature() {
        return courseNature;
    }

    public void setCourseNature(int courseNature) {
        this.courseNature = courseNature;
    }

    public double getCredits() {
        return credits;
    }

    public void setCredits(double credits) {
        this.credits = credits;
    }

    public String getSearchInfo() {
        return searchInfo;
    }

    public void setSearchInfo(String searchInfo) {
        this.searchInfo = searchInfo;
    }
}
