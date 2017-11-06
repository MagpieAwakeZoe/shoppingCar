package Module;

/**
 * Created by by on 2017/6/1.
 */
public class user {
    private String username;
    private String password;
//    private String question;
    private String answer;

    public user() {
    }

    public user(String username, String password, String answer) {
        this.username = username;
        this.password = password;
//        this.question = question;
        this.answer = answer;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

//    public String getQuestion() {
//        return question;
//    }
//
//    public void setQuestion(String question) {
//        this.question = question;
//    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }
}
