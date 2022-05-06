using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class authentification : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void connexion_Click(object sender, EventArgs e) {
            Session["login"] = login.Text;
            Session["motdepasse"] = motdepasse.Text;
            Session["Role"] = getrole();

            string vide = "";
            if (login.Text == vide || motdepasse.Text == vide)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "vide();", true);
            }
            else
            {

                if (exister() > 0)

                {

                    if (getrole() == "Admin")
                    {

                        Response.Redirect("EspaceAdministrateur.aspx");
                    }
                    if (getrole() == "Gestionnaire")
                    {

                        Response.Redirect("EspaceGestionnaire.aspx");
                    }
                    else if (getrole() == "Visiteur")
                    {
                        Response.Redirect("EspaceVisiteur.aspx");
                    }



                }
                else
                {
                    //Response.Write("<script>alert('error')</script>");
                    ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "invalide();", true);
                }
            }
        }

    
        public int exister()
        {
            string chaine_connexion = null;
            string req = null;
            SqlConnection cnn = null;
            SqlCommand command = null;
            int value = 0;

            chaine_connexion = "Data Source=DESKTOP-DTUE644;Initial Catalog=MIC;Integrated Security=True";
            cnn = new SqlConnection(chaine_connexion);
            cnn.Open();
            req = "Select Count(*) from Utilisateurs where login='" + login.Text + "'and motdepasse ='" + motdepasse.Text + "'";
            command = new SqlCommand(req, cnn);

            if (command.ExecuteScalar() == System.DBNull.Value)
            {
                cnn.Close();
                return (value);


            }
            else
            {

                value = Convert.ToInt32(command.ExecuteScalar());
                command.Dispose();
                cnn.Close();
                return (value);
            }

        }
        public string getrole()
        {
            string chaine_connexion = null;
            string req = null;
            SqlConnection cnn = null;
            SqlCommand command = null;
            string value = "";

            chaine_connexion = "Data Source=DESKTOP-DTUE644;Initial Catalog=MIC;Integrated Security=True";
            cnn = new SqlConnection(chaine_connexion);
            cnn.Open();
            req = "select role from Utilisateurs where login='" + login.Text + "'and motdepasse ='" + motdepasse.Text + "'";
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

     
      
    }
    }
