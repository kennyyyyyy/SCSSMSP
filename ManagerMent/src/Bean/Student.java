package Bean;

public class Student {
    private String sno;
    private int sex;
    private String sname;
    private String place;
    private String data;
    private String national;
    private String admission_data;
    private int graduation_flag;
    private String graduation_data;
    private String major;
    private String id_card;
    private String email;
    private String postal_code;
    private String password;
    private int status;
    private String photo;
    private String birth;


    private String searchInfo; //储存搜索信息

    public Student(String sno, int sex, String sname, String admission_data, String  graduation_data, String major, int status) {
        this.sno = sno;
        this.sex = sex;
        this.sname = sname;
        this.admission_data = admission_data;
        this.graduation_data = graduation_data;
        this.major = major;
        this.status = status;
    }

    public Student(String sno, int sex, String sname, String place, String data, String national, String admission_data, int graduation_flag, String graduation_data, String major, String id_card, String email, String postal_code, String password) {
        this.sno = sno;
        this.sex = sex;
        this.sname = sname;
        this.place = place;
        this.data = data;
        this.national = national;
        this.admission_data = admission_data;
        this.graduation_flag = graduation_flag;
        this.graduation_data = graduation_data;
        this.major = major;
        this.id_card = id_card;
        this.email = email;
        this.postal_code = postal_code;
        this.password = password;
    }

    public Student(){
        this.searchInfo = "";
    }

    public Student(String sno, String password){
        this.sno = sno;
        this.password = password;
    }

    public Student(String sno, String sname, int sex, String admission_data, String major, String id_card) {
        this.sno = sno;
        this.sname = sname;
        this.sex = sex;
        this.admission_data = admission_data;
        this.major = major;
        this.id_card = id_card;
    }

    public Student(String searchInfo){
        this.searchInfo = searchInfo;
    }

    public String getSno() {
        return sno;
    }

    public void setSno(String sno) {
        this.sno = sno;
    }

    public int getSex() {
        return sex;
    }

    public void setSex(int sex) {
        this.sex = sex;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getNational() {
        return national;
    }

    public void setNational(String national) {
        this.national = national;
    }

    public String getAdmission_data() {
        return admission_data;
    }

    public void setAdmission_data(String admission_data) {
        this.admission_data = admission_data;
    }

    public int getGraduation_flag() {
        return graduation_flag;
    }

    public void setGraduation_flag(int graduation_flag) {
        this.graduation_flag = graduation_flag;
    }

    public String getGraduation_data() {
        return graduation_data;
    }

    public void setGraduation_data(String graduation_data) {
        this.graduation_data = graduation_data;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getId_card() {
        return id_card;
    }

    public void setId_card(String id_card) {
        this.id_card = id_card;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPostal_code() {
        return postal_code;
    }

    public void setPostal_code(String postal_code) {
        this.postal_code = postal_code;
    }



    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getSearchInfo() {
        return searchInfo;
    }

    public void setSearchInfo(String searchInfo) {
        this.searchInfo = searchInfo;
    }
    public String getBirth() {
        return birth;
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }
}
