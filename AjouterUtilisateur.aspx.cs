using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class AjouterUtilisateur : System.Web.UI.Page
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


        public void vider()
        {
            CIN.Text = "";
            nom.Text = "";
            prenom.Text = "";
            login.Text = "";
            motdepasse.Text = "";
            tel.Text = "";
            email.Text = "";
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            String cin = CIN.Text;
            String tel1 = tel.Text;
            if (CIN.Text == "" || nom.Text == "" || prenom.Text == "" || login.Text == "" || tel.Text == "" || email.Text == "" || motdepasse.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "vide()", true);
            }
            if (Role.SelectedValue == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "role()", true);
            }
            else if (getLogin() > 0)
            {
                // erreur
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "error3()", true);

            }
            else if (tel1.Length != 8)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "errortel1()", true);
            }

            else if (cin.Length != 8)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "errorcin1()", true);
            }
            else if (getEmail() > 0)

            {
                // erreur
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "error1()", true);
            }

            else if (getCin() == CIN.Text)

            {
                // erreur
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "error2()", true);
            }
            else if (gettel() == tel.Text)
            {
                // erreur
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "error4()", true);

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
                req = " insert into Utilisateurs(cin,nom,prenom,login,motdepasse,telephone,email,role) values('" + CIN.Text + "', '" + nom.Text + "','" + prenom.Text + "','" + login.Text + "','" + motdepasse.Text + "','" + tel.Text + "','" + email.Text + "','" + Role.SelectedValue + "')";
                cmd = new SqlCommand(req, con);

                cmd.ExecuteNonQuery();
                cmd.Dispose();
                con.Close();
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "Ajouter()", true);
                vider();
            }
        }
        //verfier email  exisite 
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
            req = "select count(*) from Utilisateurs where email='" + email.Text + "'";
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
        //gettel 
        public string gettel()
        {
            string chaine_connexion = null;
            string req = null;
            SqlConnection cnn = null;
            SqlCommand command = null;
            string value = "";

            chaine_connexion = "Data Source=DESKTOP-DTUE644;Initial Catalog=MIC;Persist Security Info=True;User ID=sa;Password=Sh123@";
            cnn = new SqlConnection(chaine_connexion);
            cnn.Open();
            req = "select telephone from Utilisateurs where telephone='" + tel.Text + "'";
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
        // verifer login exsiste 
        public int getLogin()
        {
            string chaine_connexion = null;
            string req = null;
            SqlConnection cnn = null;
            SqlCommand command = null;
            int value = 0;

            chaine_connexion = "Data Source=DESKTOP-DTUE644;Initial Catalog=MIC;Persist Security Info=True;User ID=sa;Password=Sh123@";
            cnn = new SqlConnection(chaine_connexion);
            cnn.Open();
            req = "select count(*) from Utilisateurs where login='" + login.Text + "'";
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
        //getCin 
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
            req = "select cin from Utilisateurs where cin='" + CIN.Text + "'";
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
        protected void Unnamed_Click1(object sender, EventArgs e)
        {
            vider();
        }
    }
}