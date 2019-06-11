package db;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class DBAction {
	public static DBAction instance;
	private Connection conn;
	private DataSource ds;
	private Context ctx;
	
	private DBAction() {
//		String driver = "com.mysql.jdbc.Driver";
//		String url = "jdbc:mysql://192.168.0.21:3306/app_user1";
//		try {
//			Class.forName(driver);
//			conn = DriverManager.getConnection(url, "user1", "oracle");
//			System.out.println("DataBase Connection successfully");
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
		try {
			InitialContext initctx = new InitialContext();
			ctx=(Context)initctx.lookup("java:/comp/env");
			ds = (DataSource)ctx.lookup("jdbc/oracle");
			
		}catch(NamingException e) {
			e.printStackTrace();
		}
	}

	public static DBAction getInstance() {
		if (instance == null)
			instance = new DBAction();
		return instance;
	}

	public Connection getConnection()  {
		try {
			conn=ds.getConnection();
			
		}catch(Exception e) {
		}return conn;
	}

	public void destroy(ResultSet rs, Statement stmt, Connection conn) {
		try {
			if (rs != null) rs.close();
			if (stmt != null) stmt.close();
			if (conn != null) conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void destroy(Statement stmt, Connection conn) {
		try {
			if (stmt != null) stmt.close();
			if (conn != null) conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
