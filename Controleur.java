package BDD.Controller;

import BDD.Model.Connexion;
import BDD.Model.Repository;
import BDD.View.*;
import java.awt.Font;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;


public class Controleur {

    public void traiterRequete() /*throws SQLException*/ {
        Statement stmt1=null, stmt2=null;
        Statement stmt3=null, stmt4=null;

        ResultSet rst1=null, rst2=null;
        ResultSet rst3=null, rst4=null;
        Properties props = new Properties();
        String url = "jdbc:mysql://localhost:3306/bddrh";
        props.setProperty("user","root");
        props.setProperty("password","");

        Connection conn=null;
        try {

            conn = Connexion.getConnexion(url, props);


            Vue1 vue1 = new Vue1();
            Vue2 vue2 = new Vue2();
            Vue3 vue3 = new Vue3();
            Vue4 vue4 = new Vue4();

            Repository rep1 = new Repository(stmt1);
            Repository rep2 = new Repository(stmt2);
            Repository rep3 = new Repository(stmt3);
            Repository rep4 = new Repository(stmt4);

            String req1 = "SELECT * FROM salarie";
            String req2 = "SELECT * FROM contrat c inner join salarie s on c.idSal = s.id where dateFin is not null";
            String req3 = "SELECT COUNT(*) AS Nombre FROM poste";
            String req4 = "SELECT * FROM service";

            rst1 = rep1.requete(conn, req1);
            rst2 = rep2.requete(conn, req2);
            rst3 = rep3.requete(conn, req3);
            rst4 = rep4.requete(conn, req4);

            vue1.showView(rst1);
            vue2.showView(rst2);
            vue3.showView(rst3);
            vue4.showView(rst4);
        }
        catch (SQLException se) {
            se.getMessage();
        }
    }
}
