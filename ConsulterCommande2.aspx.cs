using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Pfe2022
{
    public partial class ConsulterCommande2 : System.Web.UI.Page
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

        public void VideChamp()
        {
            reference.Text = "";
            ordre.Text = "";
            lavage.Text = "";
            modele.Text = "";



        }
        protected void Confirmer_Click(object sender, EventArgs e)
        {
            if (Client.SelectedValue == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "client()", true);
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
                req = "update Commande  set reference='" + reference.Text + "',ordre='" + ordre.Text + "',lavage='" + lavage.Text + "',modele='" + modele.Text + "',client='" + Client.SelectedValue + "'where id='" + ID.Text + "'";
                cmd = new SqlCommand(req, con);
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "modifier()", true);
                cmd.ExecuteNonQuery();
                con.Close();
                GridView1.DataBind();
            }
        }

        protected void Annuler_Click1(object sender, EventArgs e)
        {
            VideChamp();
        }

        protected void modifier_Click(object sender, ImageClickEventArgs e)
        {
            int rowind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            reference.Focus();
            ID.Text = GridView1.Rows[rowind].Cells[0].Text;
            reference.Text = GridView1.Rows[rowind].Cells[1].Text;
            ordre.Text = GridView1.Rows[rowind].Cells[2].Text;
            lavage.Text = GridView1.Rows[rowind].Cells[3].Text;
            modele.Text = GridView1.Rows[rowind].Cells[4].Text;
            Client.SelectedValue = GridView1.Rows[rowind].Cells[5].Text;

        }

        protected void supprimer_Click(object sender, ImageClickEventArgs e)
        {
            int rowind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            string chaine_connexion = null;
            string req = null;
            SqlConnection con = null;
            SqlCommand cmd = null;
            chaine_connexion = "Data Source=DESKTOP-DTUE644;Initial Catalog=MIC;Persist Security Info=True;User ID=sa;Password=Sh123@";
            con = new SqlConnection(chaine_connexion);
            con.Open();
            ID.Text = GridView1.Rows[rowind].Cells[0].Text;
            req = "delete  from Commande where id='" + ID.Text + "'";
            cmd = new SqlCommand(req, con);
            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "supprimer();", true);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        /*get reference*/
        public string getreference()
        {
            string chaine_connexion = null;
            string req = null;
            SqlConnection cnn = null;
            SqlCommand command = null;
            string value = "";

            chaine_connexion = "Data Source=DESKTOP-DTUE644;Initial Catalog=MIC;Persist Security Info=True;User ID=sa;Password=Sh123@";
            cnn = new SqlConnection(chaine_connexion);
            cnn.Open();
            req = "select reference from Commande where reference='" + txtsearch.Text + "'";
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
                if (txtsearch.Text == getreference())
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
