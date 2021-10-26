package BDD.View;



import java.awt.Font;
import java.sql.ResultSet;
import java.sql.SQLException;


public class Vue4 {

    public void showView(ResultSet result) throws SQLException {


        try {
            System.out.println("Liste des services: "+ "\n ");

            while (result.next()) {
                String id = result.getString("id");
                String libelle = result.getString("libelle");
                System.out.println( id + "\t"  + libelle + "\n");


            }
        }
        catch(SQLException se) {
            se.getMessage();
        }
    }
}
