package Login;

public class LoginInf {
	private int LoginId;
	private String LoginName;
	private String LoginPswd;
	private int LoginIDN;
	public LoginInf(){}
	public LoginInf(int loginId,String loginName,String loginPswd,int loginIDN){
		this.LoginId = loginId;
		this.LoginName = loginName;
		this.LoginPswd = loginPswd;
		this.LoginIDN = loginIDN;
	}
	public LoginInf(String loginName,String loginPswd,int loginIDN){
		this.LoginName = loginName;
		this.LoginPswd = loginPswd;
		this.LoginIDN = loginIDN;
	}
	public int getLoginId() {
		return LoginId;
	}
	public void setLoginId(int loginId) {
		LoginId = loginId;
	}
	public String getLoginName() {
		return LoginName;
	}
	public void setLoginName(String loginName) {
		LoginName = loginName;
	}
	public String getLoginPswd() {
		return LoginPswd;
	}
	public void setLoginPswd(String lognPswd) {
		LoginPswd = lognPswd;
	}
	public int getLoginIDN() {
		return LoginIDN;
	}
	public void setLoginIDN(int loginIDN) {
		LoginIDN = loginIDN;
	}
	
}
