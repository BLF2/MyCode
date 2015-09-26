package DbDriver;

import Login.LoginInf;
import DbDriver.DbDriver;
import java.sql.*;
import java.util.*;
import Movie.*;

public class DbRead {
	private LinkedList <LoginInf> list =null;
	private LinkedList <MovieInf> movie = null;
	private Statement state;
	public DbRead() throws SQLException {
	state = DbDriver.createStatement();
	}
	public LoginInf dbReadByName(String LoginName)throws SQLException{
		String sql="select * from LoginInf where LoginName='"+LoginName+"';";
		ResultSet rs = state.executeQuery(sql);
		if(rs.next()){
			return new LoginInf(Integer.parseInt(rs.getString("LoginId")),rs.getString("LoginName"),rs.getString("LoginPswd"),Integer.parseInt(rs.getString("LoginIDN")));
		}
		return null;
	}
	public LinkedList <LoginInf> dbReadAll() throws SQLException{
		list = new LinkedList <LoginInf> ();
		String sql="select * from LoginInf ;";
		ResultSet rs = state.executeQuery(sql);
		while(rs.next()){
		//	System.out.println(rs.getString("LoginId")+rs.getString("LoginName")+rs.getString("LoginPswd")+rs.getString("LoginIDN"));
			list.add(new LoginInf(Integer.parseInt(rs.getString("LoginId")),rs.getString("LoginName"),rs.getString("LoginPswd"),Integer.parseInt(rs.getString("LoginIDN"))));
		}
		return list;
	}
	public MovieInf dbReadMovieInfByName(String MovieName) throws SQLException{
		String sql = "select * from Movie where MovieName='"+MovieName+"';";
		ResultSet rs = state.executeQuery(sql);
		if(rs.next()){
			MovieInf mi = new MovieInf();
			mi.setMovieId(Integer.parseInt(rs.getString("MovieId")));
			mi.setMovieName(rs.getString("MovieName"));
			mi.setMovieTime(rs.getString("MovieTime"));
			mi.setMovieDirector(rs.getString("MovieDirector"));
			mi.setMovieLeader(rs.getString("MovieLeader"));
			mi.setMoviePop(Integer.parseInt(rs.getString("MoviePop")));
			mi.setMovieCom(rs.getString("MovieCom"));
			return mi;
		}
		return null;
	}
	public LinkedList <MovieInf> dbReadMovieInfAll() throws SQLException{
		movie = new LinkedList <MovieInf>();
		String sql = "select * from Movie";
		ResultSet rs = state.executeQuery(sql);
		while(rs.next()){
			MovieInf mi = new MovieInf();
			mi.setMovieId(Integer.parseInt(rs.getString("MovieId")));
			mi.setMovieName(rs.getString("MovieName"));
			mi.setMovieTime(rs.getString("MovieTime"));
			mi.setMovieDirector(rs.getString("MovieDirector"));
			mi.setMovieLeader(rs.getString("MovieLeader"));
			mi.setMoviePop(Integer.parseInt(rs.getString("MoviePop")));
			mi.setMovieCom(rs.getString("MovieCom"));
			movie.add(mi);
		}
		return movie;
	}
	public LinkedList <MovieInf> dbReadAllMovieInfOrder() throws NumberFormatException, SQLException{
		movie = new LinkedList <MovieInf>();
		String sql = "select * from Movie order by MoviePop desc";
		ResultSet rs = state.executeQuery(sql);
		while(rs.next()){
			MovieInf mi = new MovieInf();
			mi.setMovieId(Integer.parseInt(rs.getString("MovieId")));
			mi.setMovieName(rs.getString("MovieName"));
			mi.setMovieTime(rs.getString("MovieTime"));
			mi.setMovieDirector(rs.getString("MovieDirector"));
			mi.setMovieLeader(rs.getString("MovieLeader"));
			mi.setMoviePop(Integer.parseInt(rs.getString("MoviePop")));
			mi.setMovieCom(rs.getString("MovieCom"));
			movie.add(mi);
		}
		return movie;
	}
}
