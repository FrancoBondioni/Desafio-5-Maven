package ar.com.educacionit.bootcamp.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class AdministradorDeConexiones {
	
	public static Connection getConnection() {
		String usernameDb = System.getenv("DB_USERNAME");
		String passwordDb = System.getenv("DB_PASSWORD");
		String url = "jdbc:mysql://127.0.0.1:3306/desafio-5?serverTimeZone=UTC&useSSL=false";
		String driverClassName = "com.mysql.cj.jdbc.Driver";
		
		try {
			Class.forName(driverClassName);
			return DriverManager.getConnection(url,usernameDb,passwordDb);
		}catch(Exception e) {
			throw new IllegalArgumentException("No se pudo obtener conexion para: " + url + " - " + e);
		}
	}
	
}
