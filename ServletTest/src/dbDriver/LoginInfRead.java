package dbDriver;

import loginInf.LoginInf;
import java.util.*;
import java.sql.*;

public class LoginInfRead {
	private LinkedList<LoginInf>list;
	private LoginInf li = null;
	public LoginInf getLoginInf(String LoginName) throws SQLException{
		Statement state = DbDriver.createStatement();
		ResultSet rs = state.executeQuery("select * from LoginInf where LoginName='"+LoginName+"';");
		if(rs.next()){
			li = getLoginInf(rs);
		}
		return li;
	}
	public LoginInf getLoginInf(int id)throws SQLException{
		Statement state = DbDriver.createStatement();
		ResultSet rs = state.executeQuery("select * from LoginInf where LoginId="+id+";");
		if(rs.next()){
			li = getLoginInf(rs);
		}
		return li;
	}
	public LinkedList<LoginInf> getLoginInfAll()throws SQLException{
		list = new LinkedList <LoginInf>();
		Statement state = DbDriver.createStatement();
		ResultSet rs =state.executeQuery("Select * from LoginInf order by LoginId;");
		while(rs.next()){
			list.add(getLoginInf(rs));
		}
		return list;
	}
	private LoginInf getLoginInf(ResultSet rs)throws SQLException{
		LoginInf ls = new LoginInf();
		ls.setLoginId(Integer.parseInt(rs.getString("LoginId")));
		ls.setLoginName(rs.getString("LoginName"));
		ls.setLoginNickName(rs.getString("LoginNickName"));
		ls.setLoginSex(Integer.parseInt(rs.getString("LoginSex")));
		ls.setLoginPswd(rs.getString("LoginPswd"));
		ls.setLoginGrade(Integer.parseInt(rs.getString("LoginGrade")));
		ls.setLoginYear(Integer.parseInt(rs.getString("LoginYear")));
		ls.setLoginMonth(Integer.parseInt(rs.getString("LoginMonth")));
		ls.setLoginDay(Integer.parseInt(rs.getString("LoginDay")));
		return ls;
	}
	public int getLoginNewId() throws SQLException{
		int re = 1;
		LinkedList <LoginInf> listid = getLoginInfAll();
		LoginInf lid = new LoginInf();
		Iterator<LoginInf> iter = listid.iterator();
		while(iter.hasNext()){
			lid = iter.next();
			if(lid.getLoginId() != re){
				break;
			}
			re++;
		}
		return re;
	}
}
