using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class AjouterFournisseur : System.Web.UI.Page
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

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            if (Gotsp.Text == "" || Gotsd.Text == "" || grs.Text == "" || grsdd.Text == "" || ocs.Text == "" || oscd.Text == "" || rcs.Text == "" || rcsd.Text == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "vide()", true);
            }

            else if (getGotsp() > 0)
            {
                // erreur
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "error1()", true);

            }
            else if (getGotsdate() > 0)

            {
                // erreur
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "error2()", true);
            }

            else if (getGrspj() > 0)

            {
                // erreur
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "error3()", true);
            }
            else if (getGrsdate() > 0)
            {
                // erreur
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "error4()", true);

            }
            else if (getOcspj() > 0)
            {
                // erreur
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "error5()", true);

            }
            else if (getOscdatej() > 0)
            {
                // erreur
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "error6()", true);

            }
            else if (getRcspj() > 0)
            {
                // erreur
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "error7()", true);

            }
            else if (getRcsdate() > 0)
            {
                // erreur
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "error8()", true);

            }
            else if (NomF() > 0)
            {
                // erreur
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "errorF()", true);

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
                req = " insert into Fournisseur(GOTSPJ,GOTSdate,GRSPJ,GRSdate,OCSPJ,OSCdate,RCSPJ,RCSdate,NomFournisseur) values('" + Gotsp.Text + "', '" + Gotsd.Text + "','" + grs.Text + "','" + grsdd.Text + "','" + ocs.Text + "','" + oscd.Text + "','" + rcs.Text + "','" + rcsd.Text + "','" + nomFournisseur.Text + "')";
                cmd = new SqlCommand(req, con);

                cmd.ExecuteNonQuery();
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "ajouter();", true);
                cmd.Dispose();
                con.Close();

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
        //verifie de saisie
        private int getRcsdate()
        {
            string chaine_connexion = null;
            string req = null;
            SqlConnection cnn = null;
            SqlCommand command = null;
            int value = 0;

            chaine_connexion = "Data Source=DESKTOP-DTUE644;Initial Catalog=MIC;Persist Security Info=True;User ID=sa;Password=Sh123@";
            cnn = new SqlConnection(chaine_connexion);
            cnn.Open();
            req = "select count(*) from Fournisseur where RCSdate ='" + rcsd.Text + "'";
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
            throw new NotImplementedException();
        }

        private int NomF()
        {
            string chaine_connexion = null;
            string req = null;
            SqlConnection cnn = null;
            SqlCommand command = null;
            int value = 0;

            chaine_connexion = "Data Source=DESKTOP-DTUE644;Initial Catalog=MIC;Persist Security Info=True;User ID=sa;Password=Sh123@";
            cnn = new SqlConnection(chaine_connexion);
            cnn.Open();
            req = "select count(*) from Fournisseur where NomFournisseur='" + nomFournisseur.Text + "'";
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

        private int getRcspj()
        {
            string chaine_connexion = null;
            string req = null;
            SqlConnection cnn = null;
            SqlCommand command = null;
            int value = 0;

            chaine_connexion = "Data Source=DESKTOP-DTUE644;Initial Catalog=MIC;Persist Security Info=True;User ID=sa;Password=Sh123@";
            cnn = new SqlConnection(chaine_connexion);
            cnn.Open();
            req = "select count(*) from Fournisseur where RCSPJ='" + rcs.Text + "'";
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

        private int getOscdatej()
        {
            string chaine_connexion = null;
            string req = null;
            SqlConnection cnn = null;
            SqlCommand command = null;
            int value = 0;

            chaine_connexion = "Data Source=DESKTOP-DTUE644;Initial Catalog=MIC;Persist Security Info=True;User ID=sa;Password=Sh123@";
            cnn = new SqlConnection(chaine_connexion);
            cnn.Open();
            req = "select count(*) from Fournisseur where OSCdate='" + oscd.Text + "'";
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

        private int getOcspj()
        {
            string chaine_connexion = null;
            string req = null;
            SqlConnection cnn = null;
            SqlCommand command = null;
            int value = 0;

            chaine_connexion = "Data Source=DESKTOP-DTUE644;Initial Catalog=MIC;Persist Security Info=True;User ID=sa;Password=Sh123@";
            cnn = new SqlConnection(chaine_connexion);
            cnn.Open();
            req = "select count(*) from Fournisseur where OCSPJ='" + ocs.Text + "'";
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

        private int getGrsdate()
        {
            string chaine_connexion = null;
            string req = null;
            SqlConnection cnn = null;
            SqlCommand command = null;
            int value = 0;

            chaine_connexion = "Data Source=DESKTOP-DTUE644;Initial Catalog=MIC;Persist Security Info=True;User ID=sa;Password=Sh123@";
            cnn = new SqlConnection(chaine_connexion);
            cnn.Open();
            req = "select count(*) from Fournisseur where GRSdate='" + grsdd.Text + "'";
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
            };
        }

        private int getGrspj()
        {
            string chaine_connexion = null;
            string req = null;
            SqlConnection cnn = null;
            SqlCommand command = null;
            int value = 0;

            chaine_connexion = "Data Source=DESKTOP-DTUE644;Initial Catalog=MIC;Persist Security Info=True;User ID=sa;Password=Sh123@";
            cnn = new SqlConnection(chaine_connexion);
            cnn.Open();
            req = "select count(*) from Fournisseur where GRSPJ='" + grs.Text + "'";
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

        private int getGotsdate()
        {
            string chaine_connexion = null;
            string req = null;
            SqlConnection cnn = null;
            SqlCommand command = null;
            int value = 0;

            chaine_connexion = "Data Source=DESKTOP-DTUE644;Initial Catalog=MIC;Persist Security Info=True;User ID=sa;Password=Sh123@";
            cnn = new SqlConnection(chaine_connexion);
            cnn.Open();
            req = "select count(*) from Fournisseur where GOTSdate='" + Gotsd.Text + "'";
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

        private int getGotsp()
        {
            string chaine_connexion = null;
            string req = null;
            SqlConnection cnn = null;
            SqlCommand command = null;
            int value = 0;

            chaine_connexion = "Data Source=DESKTOP-DTUE644;Initial Catalog=MIC;Persist Security Info=True;User ID=sa;Password=Sh123@";
            cnn = new SqlConnection(chaine_connexion);
            cnn.Open();
            req = "select count(*) from Fournisseur where GOTSPJ='" + Gotsp.Text + "'";
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

        public void vider()
        {
            Gotsp.Text = "";
            Gotsd.Text = "";
            grs.Text = "";
            grsdd.Text = "";
            ocs.Text = "";
            oscd.Text = "";
            rcs.Text = "";
            rcsd.Text = "";
            nomFournisseur.Text = "";
        }

        protected void Unnamed_Click1(object sender, EventArgs e)
        {
            vider();

        }
    }
}