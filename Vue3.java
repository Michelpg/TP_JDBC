package BDD.View;

import java.awt.Font;
import java.sql.ResultSet;
import java.sql.SQLException;


public class Vue3 {

    public void showView(ResultSet result) throws SQLException {


        try {
            System.out.println("\n  "+"Nombre de postes existants: ");


            while (result.next()) {
                String nombre = result.getString("Nombre");
                System.out.println("\n"+ nombre+ "\n");
            }
        }
        catch(SQLException se) {
            se.getMessage();
        }
    }
}
