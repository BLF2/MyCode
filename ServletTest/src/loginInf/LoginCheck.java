package loginInf;

import java.sql.SQLException;

import dbDriver.*;
import loginInf.LoginInf;

public class LoginCheck {
	private String LoginName;
	private String LoginPswd;
	public LoginCheck(String LoginName,String LoginPswd){
		this.LoginName = LoginName;
		this.LoginPswd = LoginPswd;
	}
	public LoginCheck(){}
	public int CheckLoginInf() throws SQLException{// 0 不存在 	1 正确 	2 错误 	3管理员账号
		LoginInf li = new LoginInfRead().getLoginInf(LoginName);
		if(li != null){
			if(LoginPswd.equals(li.getLoginPswd())){
				if(li.getLoginSex() == 3){
					return 3;
				}else{
					return 1;
				}
			}
			else{
				return 2;
			}
		}
		return 0;
	}
}
