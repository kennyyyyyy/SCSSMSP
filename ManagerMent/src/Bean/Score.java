package Bean;

public class Score {
    private String sno;
    private String cno;

    public Score(){}

    public Score(String sno, String cno, int grade) {
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

    public int getGrade() {
        return grade;
    }

    public void setGrade(int grade) {
        this.grade = grade;
    }

    private int grade;

}
