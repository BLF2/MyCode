package DbDriver;

import java.sql.*;
import Login.*;
import Movie.*;

public class DbInsert {
	private Statement state = null;
	public DbInsert() throws SQLException{
		state = DbDriver.createStatement();
	}
	public int dbInsert(LoginInf li) throws SQLException{
		
		String sql = "insert into LoginInf values("+li.getLoginId()+",'"+li.getLoginName()+"','"+li.getLoginPswd()+"',"+li.getLoginIDN()+");";
		return state.executeUpdate(sql);
	}
	public int dbInsertMovieInf(MovieInf mi) throws SQLException{
		String sql = "insert into Movie value("+mi.getMovieId()+",'"+mi.getMovieName()+"','"+mi.getMovieTime()+"','"+
	mi.getMovieDirector()+"','"+mi.getMovieLeader()+"',"+mi.getMoviePop()+",'"+mi.getMovieCom()+"');";
		return state.executeUpdate(sql);
	}
}
