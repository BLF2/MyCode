package DbDriver;

import Login.*;
import Movie.MovieInf;

import java.sql.*;

public class DbDelete {
	private Statement state = null;
	public DbDelete()throws SQLException{
		state = DbDriver.createStatement();
	}
	public int  dbDelete(LoginInf li) throws SQLException{
		String sql="delete from LoginInf where LoginName='"+li.getLoginName()+"';";
		return state.executeUpdate(sql);
	}
	public int dbDeleteMovieInf(MovieInf mi) throws SQLException{
		String sql = "delete from Movie where MovieName='"+mi.getMovieName()+"';";
		return state.executeUpdate(sql);
	}
}
