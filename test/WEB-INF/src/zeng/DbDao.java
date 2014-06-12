package zeng;

import java.sql.*;
import java.io.*;

public class DbDao
{
	private Connection conn;
	private String driver;
	private String url;
	private String username;
	private String pass;

	public DbDao()
	{}

	public DbDao(String driver, String url,
			String username, String pass)
	{
		this.driver = driver;
		this.url = url;
		this.username = username;
		this.pass = pass;
	}

	public void setDriver(String driver){
		this.driver = driver;
	}
	//set url, username, pass ,get driver, url, username, pass
	
	public Connection getConnection() throws Exception{
		if (conn == null){
			Class.forName(this.driver);
			conn = DriverManager.getConnection(
					this.url,this.username,this.pass);
		}
		return conn;
	}

	//public insert
	//
	
	public ResultSet query(String sql, Object... args)
		throws Exception
	{
		PreparedStatement pstmt = getConnection().prepareStatement(sql);
		for (int i=0; i< args.length; i++)
		{
			pstmt.setObject( i+1, args[i]);
		}
		return pstmt.executeQuery();
	}
	
	public void closeconn() throws Exception
	{
		if (conn !=null && !conn.isClosed())
			conn.close();
	}
}
	



