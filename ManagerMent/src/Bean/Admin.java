package Bean;

public class Admin {
    private String ano;
    private String password;

    public Admin(String ano, String password) {
        this.ano = ano;
        this.password = password;
    }

    public Admin(){

    }

    public String getAno() {
        return ano;
    }

    public void setAno(String ano) {
        this.ano = ano;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
