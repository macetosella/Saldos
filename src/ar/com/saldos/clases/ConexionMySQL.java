package ar.com.saldos.clases;

import java.sql.Connection;
import java.sql.DriverManager;
import com.mysql.jdbc.Driver;
import java.sql.SQLException;


public class ConexionMySQL {

    // Librería de MySQL
    public String driver = "com.mysql.jdbc.Driver";
    // Nombre de la base de datos
    public String database = "saldos";
    // Host
    public String hostname = "localhost";
    // Puerto
    public String port = "3306";
    // Ruta de nuestra base de datos (desactivamos el uso de SSL con "?useSSL=false")
    public String url = "jdbc:mysql://" + hostname + ":" + port + "/" + database + "?useSSL=false";
    // Nombre de usuario
    public String username = "root";
    // Clave de usuario
    public String password = "root";

    public Connection conectarMySQL() {
        Connection conn = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }

        return conn;
    }
}