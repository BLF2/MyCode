package dbDriver;

import loginInf.LoginInf;
import java.sql.*;
import dbDriver.DbDriver;

public class LoginInfInsert {
	public LoginInfInsert() {
	}

	public int InsertLoginInf(LoginInf li) throws SQLException {

		/*
		 * System.out.println("insert into LoginInf values( "
		 * +li.getLoginId()+",'"
		 * +li.getLoginName()+"','"+li.getLoginNickName()+"',"+li.getLoginSex()+
		 * ",'"+
		 * li.getLoginPswd()+"',"+li.getLoginGrade()+","+li.getLoginYear()+","+
		 * li.getLoginMonth()+ ","+li.getLoginDay()+");");
		 */

		Statement state = DbDriver.createStatement();
		return state.executeUpdate("insert into LoginInf values( " + li.getLoginId() + ",'" + li.getLoginName() + "','"
				+ li.getLoginNickName() + "'," + li.getLoginSex() + ",'" + li.getLoginPswd() + "'," + li.getLoginGrade()
				+ "," + li.getLoginYear() + "," + li.getLoginMonth() + "," + li.getLoginDay() + ");");
	}
}
