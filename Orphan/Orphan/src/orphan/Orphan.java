package orphan;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


public class Orphan {

     public Connection connection;
    public void connectDB() {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(
                    "jdbc:sqlserver://localhost:1433;databaseName=ORPHAN;selectMethod=cursor", "sa", "123456");
     
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public static void main(String[] args) {
        // TODO code application logic here
        Orphan cnObj = new Orphan();
        cnObj.connectDB();
    }
    
}
