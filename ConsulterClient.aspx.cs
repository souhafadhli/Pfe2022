using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class ConsulterClient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Session["Role"] = getrole();


            if (Session["login"] != null || Session["Role"].ToString() == "Admin")
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
        protected void modifier_Click(object sender, ImageClickEventArgs e)
        {
            int rowind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            nom.Focus();
            id.Text = GridView1.Rows[rowind].Cells[1].Text;
            nom.Text = GridView1.Rows[rowind].Cells[2].Text;
            prenom.Text = GridView1.Rows[rowind].Cells[3].Text;
            email.Text = GridView1.Rows[rowind].Cells[4].Text;
            tel.Text = GridView1.Rows[rowind].Cells[5].Text;
            adr.Text = GridView1.Rows[rowind].Cells[6].Text;




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
            id.Text = GridView1.Rows[rowind].Cells[1].Text;
            req = "delete  from Client where Id='" + id.Text + "'";
            cmd = new SqlCommand(req, con);
            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "supprimer();", true);
            cmd.ExecuteNonQuery();

            con.Close();
        }

        public void VideChamp()
        {
            nom.Text = "";
            prenom.Text = "";
            email.Text = "";
            tel.Text = "";
            adr.Text = "";


        }

        protected void Annuler_Click(object sender, EventArgs e)
        {
            VideChamp();

        }

        protected void Confirmer_Click(object sender, EventArgs e)
        {
            String tel1 = tel.Text;

            if (tel1.Length != 8)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "errortel1;", true);
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
                req = "update Client  set nom='" + nom.Text + "',prenom='" + prenom.Text + "',email='" + email.Text + "',tel='" + tel.Text + "',adr='" + adr.Text + "'where id='" + id.Text + "'";
                cmd = new SqlCommand(req, con);
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "modifier();", true);
                cmd.ExecuteNonQuery();
                con.Close();
                GridView1.DataBind();
            }
        }
        /*get nom*/
        public string getnom()
        {
            string chaine_connexion = null;
            string req = null;
            SqlConnection cnn = null;
            SqlCommand command = null;
            string value = "";

            chaine_connexion = "Data Source=DESKTOP-DTUE644;Initial Catalog=MIC;Persist Security Info=True;User ID=sa;Password=Sh123@";
            cnn = new SqlConnection(chaine_connexion);
            cnn.Open();
            req = "select nom from Client where nom='" + txtsearch.Text + "'";
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
                if (txtsearch.Text == getnom())
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