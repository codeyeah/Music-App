package com.musicApp.utils;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionUtils {
	private static final String driverClass = "com.mysql.jdbc.Driver",
			url = "jdbc:mysql://localhost:3306/musicapp",
			username = "root",
			password = "";

	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName(driverClass);
			con = DriverManager.getConnection(url, username, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
}
