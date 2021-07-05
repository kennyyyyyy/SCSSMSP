package Bean;

public class Score {
    private String sno;
    private String cno;
    private double grade;

    public Score(){
        this("", "");
    }

    public Score(String sno){
        this.sno = sno;
    }

    public Score(String sno, String cno){
        this.sno = sno;
        this.cno = cno;
    }

    public Score(String sno, String cno, double grade) {
        this.sno = sno;
        this.cno = cno;
        this.grade = grade;
    }

    public String getSno() {
        return sno;
    }

    public void setSno(String sno) {
        this.sno = sno;
    }

    public String getCno() {
        return cno;
    }

    public void setCno(String cno) {
        this.cno = cno;
    }

    public double getGrade() {
        return grade;
    }

    public void setGrade(double grade) {
        this.grade = grade;
    }

}
