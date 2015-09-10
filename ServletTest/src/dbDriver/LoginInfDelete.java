package dbDriver;

import java.sql.*;

public class LoginInfDelete {
	public int DeleteLoginInf(int id) throws SQLException{
		Statement state = DbDriver.createStatement();
		return state.executeUpdate("delete from LoginInf where LoginId="+id+";");
	}
}
