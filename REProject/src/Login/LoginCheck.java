package Login;

import java.sql.SQLException;

import DbDriver.*;
import Login.LoginInf;

public class LoginCheck {
	private String LoginPswd;
	private String LoginPswd1;
	private int IDN;
	public LoginCheck(){}
	public LoginCheck(String loginName,String loginPswd) throws SQLException{
		this.LoginPswd = loginPswd;
		LoginInf li =  new DbRead().dbReadByName(loginName);
		LoginPswd1 = li.getLoginPswd();
		IDN = li.getLoginIDN();
	}
	public int CheckLogin(){
		if(LoginPswd.equals(LoginPswd1)){
			return IDN;
		}
		return 0;
	}
}
