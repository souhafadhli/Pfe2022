using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pfe2022
{
    public partial class AjouterCommande2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Role"] = getrole();


            if (Session["login"] != null || Session["Role"].ToString() == "Gestionnaire")
            {

            }
            else
            {
                Session.Remove("login");
                Response.Redirect("authentification.aspx");
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

            chaine_connexion = "Data Source=DESKTOP-DTUE644;Initial Catalog=MIC;Persist Security Info=True;User ID=sa;Password=Sh123@";
            cnn = new SqlConnection(chaine_connexion);
            cnn.Open();
            req = "select role from Utilisateurs where role='" + Session + "'";
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
        public void vider()
        {
            reference.Text = "";
            ordre.Text = "";
            lavage.Text = "";
            modele.Text = "";


        }
        public int existref()
        {
            string chaine_connexion = null;
            string req = null;
            SqlConnection cnn = null;
            SqlCommand command = null;
            int value = 0;

            chaine_connexion = "Data Source=DESKTOP-DTUE644;Initial Catalog=MIC;Persist Security Info=True;User ID=sa;Password=Sh123@";
            cnn = new SqlConnection(chaine_connexion);
            cnn.Open();
            req = "select count(reference) from Commande where reference='" + reference.Text + "'";
            command = new SqlCommand(req, cnn);
            if (command.ExecuteScalar() == System.DBNull.Value)
            {
                return (value);
                cnn.Close();
            }
            else
            {
                value = Convert.ToInt32(command.ExecuteScalar());
                command.Dispose();
                cnn.Close();
                return (value);
            }
        }
        //test d'existance de PO
        public int existPO()
        {
            string chaine_connexion = null;
            string req = null;
            SqlConnection cnn = null;
            SqlCommand command = null;
            int value = 0;

            chaine_connexion = "Data Source=DESKTOP-DTUE644;Initial Catalog=MIC;Persist Security Info=True;User ID=sa;Password=Sh123@";
            cnn = new SqlConnection(chaine_connexion);
            cnn.Open();
            req = "select count(ordre) from Commande where ordre ='" + ordre.Text + "'";
            command = new SqlCommand(req, cnn);
            if (command.ExecuteScalar() == System.DBNull.Value)
            {
                return (value);
                cnn.Close();
            }
            else
            {
                value = Convert.ToInt32(command.ExecuteScalar());
                command.Dispose();
                cnn.Close();
                return (value);
            }
        }

        protected void Confirmer_Click(object sender, EventArgs e)
        {
            string vide = "";
            if (reference.Text == vide || ordre.Text == vide || lavage.Text == vide || modele.Text == vide || Cli.SelectedValue == vide)
            {
                // erreur
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "vide();", true);
            }
            else if (existref() > 0)
            {
                // erreur
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "errorREF();", true);
            }
            else if (existPO() > 0)
            {
                // erreur
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "errorPO();", true);
            }
            if (Cli.SelectedValue == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "role()", true);
            }
            else
            {
                string chaine_connexion = null;
                string req = null;
                SqlConnection con = null;
                SqlCommand cmd = null;


                chaine_connexion = "Data Source=DESKTOP-DTUE644;Initial Catalog=MIC;Persist Security Info=True;User ID=sa;Password=Sh123@";
                con = new SqlConnection(chaine_connexion);


                con.Open();
                req = " insert into Commande(reference,ordre,lavage,modele,client) values('" + reference.Text + "', '" + ordre.Text + "','" + lavage.Text + "','" + modele.Text + "','" + Cli.SelectedValue + "')";
                cmd = new SqlCommand(req, con);
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                con.Close();
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "Ajouter()", true);
                vider();
            }
        }

        protected void Annuler_Click1(object sender, EventArgs e)
        {
            vider();
        }
    }
}