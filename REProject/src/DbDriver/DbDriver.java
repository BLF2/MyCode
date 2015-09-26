package DbDriver;

import java.util.*;
import java.sql.*;

public class DbDriver{
	private static List <Connection> list = null;
	private static String url = "jdbc:mysql://localhost/RE";
	private static String user="root";
	private static String pswd ="123456";
	private static final int total=20;
	private static int now = 0;
	static{
		list = new ArrayList<Connection>();
		try{
			Class.forName("com.mysql.jdbc.Driver");
		}catch(ClassNotFoundException e){
			e.printStackTrace();
		}
		for(int i = 0;i < total;i++){
			try{
				list.add(DriverManager.getConnection(url+"?user="+user+"&password="+pswd+"&useUnicode=true&characterEncoding=utf-8"));
			}catch(SQLException e){
				e.printStackTrace();
			}
		}
	}
	private DbDriver(){}
	public static Statement createStatement() throws SQLException{
		int re = now;
		now = (now + 1) % total;
		return list.get(re).createStatement();
	}
}