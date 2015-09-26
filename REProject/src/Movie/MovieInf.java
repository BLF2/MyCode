package Movie;

public class MovieInf {
	private int MovieId;
	private String MovieName;
	private String MovieTime;
	private String MovieDirector;
	private String MovieLeader;
	private int MoviePop;
	private String MovieCom;
	public MovieInf(){}
	public MovieInf( int movieId,String movieName,String movieTime,String movieDirector,String movieLeader,int moviePop,String movieCom){
		MovieId = movieId;
		MovieName = movieName;
		MovieTime = movieTime;
		MovieDirector = movieDirector;
		MovieLeader = movieLeader;
		MoviePop = moviePop;
		MovieCom = movieCom;
	}
	public int getMovieId() {
		return MovieId;
	}
	public void setMovieId(int movieId) {
		MovieId = movieId;
	}
	public String getMovieName() {
		return MovieName;
	}
	public void setMovieName(String movieName) {
		MovieName = movieName;
	}
	public String getMovieTime() {
		return MovieTime;
	}
	public void setMovieTime(String movieTime) {
		MovieTime = movieTime;
	}
	public String getMovieDirector() {
		return MovieDirector;
	}
	public void setMovieDirector(String movieDirector) {
		MovieDirector = movieDirector;
	}
	public String getMovieLeader() {
		return MovieLeader;
	}
	public void setMovieLeader(String movieLeader) {
		MovieLeader = movieLeader;
	}
	public int getMoviePop() {
		return MoviePop;
	}
	public void setMoviePop(int moviePop) {
		MoviePop = moviePop;
	}
	public String getMovieCom() {
		return MovieCom;
	}
	public void setMovieCom(String movieCom) {
		MovieCom = movieCom;
	}
}
