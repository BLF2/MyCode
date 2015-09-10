package dbDriver;

import loginInf.LoginInf;
import java.sql.*;
import dbDriver.DbDriver;

public class LoginInfChange {
	public LoginInfChange(){}
	public int ChangeLoginInf(LoginInf li) throws SQLException{
		Statement state = DbDriver.createStatement();
		
		/*
		System.out.println("update LoginInf set LoginName='"+li.getLoginName()+"',LoginNickName='"+
		li.getLoginNickName()+"',LoginSex="+li.getLoginSex()+",LoginPswd='"+li.getLoginPswd()+"',LoginGrade="+
				li.getLoginGrade()+",LoginYear="+li.getLoginYear()+",LoginMonth="+li.getLoginMonth()+",LoginDay="+
		li.getLoginDay()+" where LoginId="+li.getLoginId()+";");
		*/
		
		
		return  state.executeUpdate("update LoginInf set LoginName='"+li.getLoginName()+"',LoginNickName='"+
		li.getLoginNickName()+"',LoginSex="+li.getLoginSex()+",LoginPswd='"+li.getLoginPswd()+"',LoginGrade="+
				li.getLoginGrade()+",LoginYear="+li.getLoginYear()+",LoginMonth="+li.getLoginMonth()+",LoginDay="+
		li.getLoginDay()+" where LoginId="+li.getLoginId()+";");
	}
}
