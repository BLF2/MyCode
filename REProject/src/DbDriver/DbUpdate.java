package DbDriver;

import Login.*;
import Movie.MovieInf;

import java.sql.*;

public class DbUpdate {
	private Statement state;
	public DbUpdate() throws SQLException{
		state = DbDriver.createStatement();
	}
	public int dbUpdate(LoginInf li) throws SQLException{
		 state = DbDriver.createStatement();
		
		String sql = "update LoginInf set LoginPswd='"+li.getLoginPswd()+"',"+"LoginIDN="+li.getLoginIDN()+" where LoginId="+li.getLoginId()+";";
	//	System.out.println(sql);
		return state.executeUpdate(sql);
	}
	public int dbUpdateMovieInf(MovieInf mi) throws SQLException{
		String sql = "update Movie set MovieTime='"+mi.getMovieTime()+"',MovieDirector='"+mi.getMovieDirector()+
				"',MovieLeader='"+mi.getMovieLeader()+"',MoviePop="+mi.getMoviePop()+",MovieCom='"+mi.getMovieCom()
				+"';";
		//System.out.println(sql);
		return state.executeUpdate(sql);
	}
}
