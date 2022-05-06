using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class envoyerreclamation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Session["Role"] = getrole();


            if (Session["login"] != null || Session["Role"].ToString() == "Visiteur")
            {

            }
            else
            {
                Session.Remove("login");
                Response.Redirect("authentification.aspx");
            }
            nom.Text = getNom();
            prenom.Text = getPrenom();

        }
        public string getNom()
        {
            string chaine_connexion = null;
            string req = null;
            SqlConnection cnn = null;
            SqlCommand command = null;
            string value = "";

            chaine_connexion = "Data Source=DESKTOP-45SC7V7;Initial Catalog=MIC;Integrated Security=True";
            cnn = new SqlConnection(chaine_connexion);
            cnn.Open();
            req = "select nom from Utilisateurs where login='" + Session["login"] + "'";
            command = new SqlCommand(req, cnn);

            if (command.ExecuteScalar() == System.DBNull.Value)
            {
                return (value);
                cnn.Close();

            }
            else
            {

                value = Convert.ToString(command.ExecuteScalar());
                command.Dispose();
                cnn.Close();
                return (value);
            }

        }
        /*get Prenom*/
        public string getPrenom()
        {
            string chaine_connexion = null;
            string req = null;
            SqlConnection cnn = null;
            SqlCommand command = null;
            string value = "";

            chaine_connexion = "Data Source=DESKTOP-45SC7V7;Initial Catalog=MIC;Integrated Security=True";
            cnn = new SqlConnection(chaine_connexion);
            cnn.Open();
            req = "select prenom from Utilisateurs where login='" + Session["login"] + "'";
            command = new SqlCommand(req, cnn);

            if (command.ExecuteScalar() == System.DBNull.Value)
            {
                return (value);
                cnn.Close();

            }
            else
            {

                value = Convert.ToString(command.ExecuteScalar());
                command.Dispose();
                cnn.Close();
                return (value);
            }
        }
        /*get role*/
        public string getrole()
        {
            string chaine_connexion = null;
            string req = null;
            SqlConnection cnn = null;
            SqlCommand command = null;
            string value = "";

            chaine_connexion = "Data Source=DESKTOP-45SC7V7;Initial Catalog=MIC;Integrated Security=True";
            cnn = new SqlConnection(chaine_connexion);
            cnn.Open();
            req = "select role from Utilisateurs where login='" + Session["login"] + "'";
            command = new SqlCommand(req, cnn);

            if (command.ExecuteScalar() == System.DBNull.Value)
            {
                return (value);
                cnn.Close();

            }
            else
            {

                value = Convert.ToString(command.ExecuteScalar());
                command.Dispose();
                cnn.Close();
                return (value);
            }

        }





        protected void Unnamed_Click(object sender, EventArgs e)
        {
            String nomg = "";
            String prenomg = "";
            String etat = "En attente";


            string chaine_connexion = null;
            string req = null;
            SqlConnection con = null;
            SqlCommand cmd = null;


            chaine_connexion = "Data Source=DESKTOP-45SC7V7;Initial Catalog=MIC;Integrated Security=True";
            con = new SqlConnection(chaine_connexion);


            con.Open();
            req = " insert into Reclamation(NomVisiteur,PrenomVisiteur,reference,objet,description,état,NomGestionnaire,PrenomGestionnaire) values('" + nom.Text + "','" + prenom.Text + "','" + reference.SelectedValue + "','" + objet.Text + "','" + recla.Text + "','" + etat + "','" + nomg + "','" + prenomg + "')";
            cmd = new SqlCommand(req, con);
            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "Envoyer()", true);
            cmd.ExecuteNonQuery();

            cmd.Dispose();

            con.Close();
        }


    }
}