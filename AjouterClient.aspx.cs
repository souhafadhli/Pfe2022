using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class AjouterClient : System.Web.UI.Page
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
            nom.Text = "";
            prenom.Text = "";
            email.Text = "";
            tel.Text = "";
            adr.Text = "";

        }
        public int getEmail()
        {
            string chaine_connexion = null;
            string req = null;
            SqlConnection cnn = null;
            SqlCommand command = null;
            int value = 0;

            chaine_connexion = "Data Source=DESKTOP-DTUE644;Initial Catalog=MIC;Persist Security Info=True;User ID=sa;Password=Sh123@";
            cnn = new SqlConnection(chaine_connexion);
            cnn.Open();
            req = "select count(*) from Client where email='" + email.Text + "'";
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
        public int getTel()
        {
            string chaine_connexion = null;
            string req = null;
            SqlConnection cnn = null;
            SqlCommand command = null;
            int value = 0;

            chaine_connexion = "Data Source=DESKTOP-DTUE644;Initial Catalog=MIC;Persist Security Info=True;User ID=sa;Password=Sh123@";
            cnn = new SqlConnection(chaine_connexion);
            cnn.Open();
            req = "select count(*) from Client where tel='" + tel.Text + "'";
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
            String tel1 = tel.Text;
            if (nom.Text == vide || prenom.Text == vide || email.Text == vide || tel.Text == vide || adr.Text == vide)
            {
                // erreur
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "errorvid();", true);
            }
            else
            {
                if (getTel() > 0)
                {
                    // erreur
                    ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "errortel();", true);

                }
                else if (getEmail() > 0)

                {
                    // erreur
                    ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "errorMAIL();", true);
                }
                else if (tel1.Length != 8)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "errortel1()", true);
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
                    req = " insert into Client(nom,prenom,email,tel,adr) values('" + nom.Text + "', '" + prenom.Text + "','" + email.Text + "','" + tel.Text + "','" + adr.Text + "')";
                    cmd = new SqlCommand(req, con);

                    cmd.ExecuteNonQuery();


                    ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "SUCCESS();", true);


                    cmd.Dispose();
                    con.Close();
                }
            }
        }

        protected void Annuler_Click(object sender, EventArgs e)
        {
            vider();
            Response.Redirect("AjouterClient.aspx");
        }

    }
}