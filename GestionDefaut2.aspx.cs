using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class GestionDefaut2 : System.Web.UI.Page
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







        protected void Modifier_Click1(object sender, EventArgs e)
        {
            int rowind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            id.Focus();
            id.Text = GridView1.Rows[rowind].Cells[0].Text;
            cd.Text = GridView1.Rows[rowind].Cells[1].Text;
            ds.Text = GridView1.Rows[rowind].Cells[2].Text;

        }




        protected void CModifier_Click(object sender, EventArgs e)
        {


            string chaine_connexion = null;
            string req = null;
            SqlConnection con = null;
            SqlCommand cmd = null;

            chaine_connexion = "Data Source=DESKTOP-DTUE644;Initial Catalog=MIC;Persist Security Info=True;User ID=sa;Password=Sh123@";
            con = new SqlConnection(chaine_connexion);
            con.Open();
            req = "update Defaut  set code='" + cd.Text + "',description='" + ds.Text + "'where Id='" + id.Text + "'";
            cmd = new SqlCommand(req, con);
            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "modifier();", true);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
        }




        protected void Ajouter_Click(object sender, EventArgs e)
        {
            string chaine_connexion = null;
            string req = null;
            SqlConnection con = null;
            SqlCommand cmd = null;


            chaine_connexion = "Data Source=DESKTOP-DTUE644;Initial Catalog=MIC;Persist Security Info=True;User ID=sa;Password=Sh123@";
            con = new SqlConnection(chaine_connexion);


            con.Open();
            req = " insert into Defaut(code,description) values('" + code.Text + "', '" + description.Text + "')";
            cmd = new SqlCommand(req, con);

            cmd.ExecuteNonQuery();


            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "ajouter();", true);


            cmd.Dispose();
            con.Close();
        }
        public string getCode()
        {
            string chaine_connexion = null;
            string req = null;
            SqlConnection cnn = null;
            SqlCommand command = null;
            string value = "";

            chaine_connexion = "Data Source=DESKTOP-DTUE644;Initial Catalog=MIC;Persist Security Info=True;User ID=sa;Password=Sh123@";
            cnn = new SqlConnection(chaine_connexion);
            cnn.Open();
            req = "select code from Defaut where code='" + txtsearch.Text + "'";
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
                if (txtsearch.Text == getCode())
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



        protected void supprimer_Click1(object sender, EventArgs e)
        {
            int rowind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            string chaine_connexion = null;
            string req = null;
            SqlConnection con = null;
            SqlCommand cmd = null;
            chaine_connexion = "Data Source=DESKTOP-DTUE644;Initial Catalog=MIC;Persist Security Info=True;User ID=sa;Password=Sh123@";
            con = new SqlConnection(chaine_connexion);
            con.Open();
            id.Text = GridView1.Rows[rowind].Cells[0].Text;
            req = "delete  from Defaut where Id='" + id.Text + "'";
            cmd = new SqlCommand(req, con);
            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "supprimer();", true);
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}