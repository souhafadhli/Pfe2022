using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class ConsulterUtilisateur : System.Web.UI.Page
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
        protected void supp_Click(object sender, ImageClickEventArgs e)
        {

            int rowind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            string chaine_connexion = null;
            string req = null;
            SqlConnection con = null;
            SqlCommand cmd = null;
            chaine_connexion = "Data Source=DESKTOP-DTUE644;Initial Catalog=MIC;Persist Security Info=True;User ID=sa;Password=Sh123@";
            con = new SqlConnection(chaine_connexion);
            con.Open();
            Id.Text = GridView1.Rows[rowind].Cells[1].Text;
            req = "delete  from utilisateurs where Id='" + Id.Text + "'";
            cmd = new SqlCommand(req, con);
            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "supprimer();", true);
            cmd.ExecuteNonQuery();

            con.Close();

        }

        public void VideChamp()
        {
            Id.Text = "";
            CIN.Text = "";
            nom.Text = "";
            prenom.Text = "";
            login.Text = "";
            motdepasse.Text = "";
            tel.Text = "";
            email.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            VideChamp();
        }
        protected void Modifier_Click1(object sender, ImageClickEventArgs e)
        {
            int rowind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            CIN.Focus();
            Id.Text = GridView1.Rows[rowind].Cells[1].Text;
            CIN.Text = GridView1.Rows[rowind].Cells[2].Text;
            nom.Text = GridView1.Rows[rowind].Cells[3].Text;
            prenom.Text = GridView1.Rows[rowind].Cells[4].Text;
            login.Text = GridView1.Rows[rowind].Cells[5].Text;
            motdepasse.Text = GridView1.Rows[rowind].Cells[6].Text;
            tel.Text = GridView1.Rows[rowind].Cells[7].Text;
            email.Text = GridView1.Rows[rowind].Cells[8].Text;
            Role.SelectedValue = GridView1.Rows[rowind].Cells[9].Text;


        }

        //Bouton confirmer
        protected void Button1_Click(object sender, EventArgs e)
        {
            String cin2 = CIN.Text;
            String tel2 = tel.Text;


            if (tel2.Length != 8)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "errortel()", true);
            }

            else if (cin2.Length != 8)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "errorcin()", true);
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
                req = "update Utilisateurs set cin='" + CIN.Text + "',nom='" + nom.Text + "',prenom='" + prenom.Text + "',login='" + login.Text + "',motdepasse='" + motdepasse.Text + "',telephone='" + tel.Text + "',email='" + email.Text + "',role='" + Role.SelectedValue + "' where id='" + Id.Text + "'";
                cmd = new SqlCommand(req, con);
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "modifier();", true);
                cmd.ExecuteNonQuery();
                con.Close();
                GridView1.DataBind();


            }

        }
        /*get Cin*/
        public string getCin()
        {
            string chaine_connexion = null;
            string req = null;
            SqlConnection cnn = null;
            SqlCommand command = null;
            string value = "";

            chaine_connexion = "Data Source=DESKTOP-DTUE644;Initial Catalog=MIC;Persist Security Info=True;User ID=sa;Password=Sh123@";
            cnn = new SqlConnection(chaine_connexion);
            cnn.Open();
            req = "select cin from Utilisateurs where cin='" + txtsearch.Text + "'";
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
                if (txtsearch.Text == getCin())
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