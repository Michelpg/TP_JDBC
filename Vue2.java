
package BDD.View;

import java.sql.ResultSet;
import java.sql.SQLException;


public class Vue2 {
    public void showView(ResultSet result) throws SQLException {



        try {
            System.out.println("\n\nListe des services"+ "\n  ");

            while (result.next()) {
                String idContrat = result.getString("id.c");

                String dateDébut = result.getString("dateDébut");

                String datefin = result.getString("datefin");

                String idcontrat = result.getString("id");

                String idSal= result.getString("idSal");

                String idPoste = result.getString("idPoste");

                String idServise = result.getString("idServise");

                String id = result.getString("id.s");

                String numSecu = result.getString("numSecu");

                String nom = result.getString("nom");

                String prenom = result.getString("prenom");

                String dateNaiss = result.getString("dateNaiss");

                String dateEnbauche = result.getString("dateEnbauche");

                String tel = result.getString("tel");

                String mel = result.getString("mel");
                System.out.println(  idContrat +"\t"+dateDébut + "\t" +datefin + "\t" +
                        idcontrat +"\t"+idSal + "\t" +idPoste + "\t" +idServise+
                        id+"\t"+numSecu + "\t" + nom + "\t" + prenom + "\t" + dateNaiss + "\t" +
                        dateEnbauche + "\t" + tel+ "\t" + mel);

            }
        }
        catch(SQLException se) {
            se.getMessage();
        }
    }
}
