using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class Listereclamationenattente : System.Web.UI.Page
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
        public string getNom()
        {
            string chaine_connexion = null;
            string req = null;
            SqlConnection cnn = null;
            SqlCommand command = null;
            string value = "";


            chaine_connexion = "Data Source=DESKTOP-DTUE644;Initial Catalog=MIC;Persist Security Info=True;User ID=sa;Password=Sh123@";
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


            chaine_connexion = "Data Source=DESKTOP-DTUE644;Initial Catalog=MIC;Persist Security Info=True;User ID=sa;Password=Sh123@";
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


            chaine_connexion = "Data Source=DESKTOP-DTUE644;Initial Catalog=MIC;Persist Security Info=True;User ID=sa;Password=Sh123@";
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






        protected void accept_Click(object sender, ImageClickEventArgs e)
        {
            String etat = "Accepter";

            int rowind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            String id = GridView1.Rows[rowind].Cells[0].Text;
            String nomv = GridView1.Rows[rowind].Cells[1].Text;
            String nomp = GridView1.Rows[rowind].Cells[2].Text;
            String objet = GridView1.Rows[rowind].Cells[3].Text;
            String description = GridView1.Rows[rowind].Cells[4].Text;
            string chaine_connexion = null;
            string req = null;
            SqlConnection con = null;
            SqlCommand cmd = null;

            chaine_connexion = "Data Source=DESKTOP-DTUE644;Initial Catalog=MIC;Persist Security Info=True;User ID=sa;Password=Sh123@";
            con = new SqlConnection(chaine_connexion);
            con.Open();
            req = "update Reclamation set NomVisiteur='" + nomv + "',PrenomVisiteur='" + nomp + "',objet='" + objet + "',description='" + description + "',état='" + etat + "',NomGestionnaire='" + getNom() + "',PrenomGestionnaire='" + getPrenom() + "' where id='" + id + "'";
            cmd = new SqlCommand(req, con);
            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "refuser();", true);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
        }

        protected void refus_Click(object sender, ImageClickEventArgs e)
        {
            String etat = "Refuser";

            int rowind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            String id = GridView1.Rows[rowind].Cells[0].Text;
            String nomv = GridView1.Rows[rowind].Cells[1].Text;
            String nomp = GridView1.Rows[rowind].Cells[2].Text;
            String objet = GridView1.Rows[rowind].Cells[3].Text;
            String description = GridView1.Rows[rowind].Cells[4].Text;
            string chaine_connexion = null;
            string req = null;
            SqlConnection con = null;
            SqlCommand cmd = null;

            chaine_connexion = "Data Source=DESKTOP-DTUE644;Initial Catalog=MIC;Persist Security Info=True;User ID=sa;Password=Sh123@";
            con = new SqlConnection(chaine_connexion);
            con.Open();
            req = "update Reclamation set NomVisiteur='" + nomv + "',PrenomVisiteur='" + nomp + "',objet='" + objet + "',description='" + description + "',état='" + etat + "',NomGestionnaire='" + getNom() + "',PrenomGestionnaire='" + getPrenom() + "' where id='" + id + "'";
            cmd = new SqlCommand(req, con);
            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "refuser();", true);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
        }
        public string getObjet()
        {
            string chaine_connexion = null;
            string req = null;
            SqlConnection cnn = null;
            SqlCommand command = null;
            string value = "";


            chaine_connexion = "Data Source=DESKTOP-DTUE644;Initial Catalog=MIC;Persist Security Info=True;User ID=sa;Password=Sh123@";
            cnn = new SqlConnection(chaine_connexion);
            cnn.Open();
            req = "select objet from Reclamation where objet='" + txtsearch.Text + "'";
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
        protected void txtsearch_TextChanged(object sender, EventArgs e)
        {
            String vide = "";
            if (txtsearch.Text == vide)
            {
                GridView1.DataSourceID = "SqlDataSource1";
                GridView1.DataBind();
            }

            else
            {
                if (txtsearch.Text == getObjet())
                {
                    GridView1.DataSourceID = "SqlDataSource2";
                    GridView1.DataBind();
                }

                else
                {
                    GridView1.DataSourceID = "SqlDataSource1";
                    GridView1.DataBind();
                    ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "rechercher();", true);

                }
            }


        }
    }
}