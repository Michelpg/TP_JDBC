package BDD.View;

import java.awt.Font;
import java.sql.ResultSet;
import java.sql.SQLException;


public class Vue1 {

    public void showView(ResultSet result) throws SQLException {


        try {
            System.out.println("Liste des candidats avant le 17 10 2008"+ "\n  ");

            while (result.next()) {
                String id = result.getString("id");
                String numSecu = result.getString("numSecu");
                String nom = result.getString("nom");
                String prenom = result.getString("prenom");
                String dateNaiss = result.getString("dateNaiss");
                String dateEnbauche = result.getString("dateEnbauche");
                String tel = result.getString("tel");
                String mel = result.getString("mel");
                System.out.println(id+"\t"+numSecu + "\t" + nom + "\t" + prenom + "\t" + dateNaiss + "\t" + dateEnbauche + "\t" + tel+ "\t" + mel );
            }
        }
        catch(SQLException se) {
            se.getMessage();
        }
    }
}
