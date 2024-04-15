package app.model;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connexion {
    static String user = "root";
    static String pwd = "";
    static String url = "jdbc:mysql://localhost:3306/dbcrud";
    String driver = "com.mysql.jdbc.Driver"; // Modifier le nom du driver JDBC
    Connection connection = null;

    public Connexion() {
        // Chargement du pilote JDBC au moment de la création de la classe
        try {
            Class.forName(driver);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static Connection getConnection() {
        try {
            Connection connection = DriverManager.getConnection(url, user, pwd);
            System.out.println("La connexion a réussi !");
            return connection;
        } catch (SQLException e) {
            e.printStackTrace();
            System.err.println("La connexion a échoué !");
            return null;
        }
    }
}
