package Bean;

public class GraduationStudent {
    private String sno;
    private String graduation_type;
    private String graduation_conclusion;
    private String graduation_data;
    private String graduation_id;
    private String graduation_class;

    public GraduationStudent() {

    }

    public GraduationStudent(String sno, String graduation_type, String graduation_conclusion, String graduation_data, String graduation_id) {
        this.sno = sno;
        this.graduation_type = graduation_type;
        this.graduation_conclusion = graduation_conclusion;
        this.graduation_data = graduation_data;
        this.graduation_id = graduation_id;
    }

    public GraduationStudent(String sno, String graduation_type, String graduation_conclusion, String graduation_data, String graduation_id, String graduation_class) {
        this.sno = sno;
        this.graduation_type = graduation_type;
        this.graduation_conclusion = graduation_conclusion;
        this.graduation_data = graduation_data;
        this.graduation_id = graduation_id;
        this.graduation_class = graduation_class;
    }

    public String getSno() {
        return sno;
    }

    public void setSno(String sno) {
        this.sno = sno;
    }

    public String getGraduation_type() {
        return graduation_type;
    }

    public void setGraduation_type(String graduation_type) {
        this.graduation_type = graduation_type;
    }

    public String getGraduation_conclusion() {
        return graduation_conclusion;
    }

    public void setGraduation_conclusion(String graduation_conclusion) {
        this.graduation_conclusion = graduation_conclusion;
    }

    public String getGraduation_data() {
        return graduation_data;
    }

    public void setGraduation_data(String graduation_data) {
        this.graduation_data = graduation_data;
    }

    public String getGraduation_id() {
        return graduation_id;
    }

    public String getGraduation_class() {
        return graduation_class;
    }

    public void setGraduation_class(String graduation_class) {
        this.graduation_class = graduation_class;
    }

    public void setGraduation_id(String graduation_id) {
        this.graduation_id = graduation_id;
    }
}
