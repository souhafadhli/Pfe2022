using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication
{
    public partial class ConsulterFournisseur : System.Web.UI.Page
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
            req = "delete  from Fournisseur where Id='" + Id.Text + "'";
            cmd = new SqlCommand(req, con);
            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "supprimer();", true);
            cmd.ExecuteNonQuery();
            con.Close();

        }



        public void VideChamp()
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


        protected void Modifier_Click1(object sender, ImageClickEventArgs e)
        {
            int rowind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            nomFournisseur.Focus();
            Id.Text = GridView1.Rows[rowind].Cells[1].Text;
            nomFournisseur.Text = GridView1.Rows[rowind].Cells[2].Text;
            Gotsp.Text = GridView1.Rows[rowind].Cells[3].Text;
            Gotsd.Text = GridView1.Rows[rowind].Cells[4].Text;
            grs.Text = GridView1.Rows[rowind].Cells[5].Text;
            grsdd.Text = GridView1.Rows[rowind].Cells[6].Text;
            ocs.Text = GridView1.Rows[rowind].Cells[7].Text;
            oscd.Text = GridView1.Rows[rowind].Cells[8].Text;
            rcs.Text = GridView1.Rows[rowind].Cells[9].Text;
            rcsd.Text = GridView1.Rows[rowind].Cells[10].Text;




        }

        protected void Confirmer_Click(object sender, EventArgs e)
        {
            string chaine_connexion = null;
            string req = null;
            SqlConnection con = null;
            SqlCommand cmd = null;
            chaine_connexion = "Data Source=DESKTOP-DTUE644;Initial Catalog=MIC;Persist Security Info=True;User ID=sa;Password=Sh123@";
            con = new SqlConnection(chaine_connexion);
            con.Open();
            req = "update Fournisseur  set NomFournisseur='" + nomFournisseur.Text + "',GOTSPJ='" + Gotsp.Text + "',GOTSdate='" + Gotsd.Text + "',GRSPJ='" + grs.Text + "',GRSdate='" + grsdd.Text + "',OCSPJ='" + ocs.Text + "',OSCdate='" + oscd.Text + "',RCSPJ='" + rcs.Text + "' ,RCSdate='" + rcsd.Text + "'where id='" + Id.Text + "'";
            cmd = new SqlCommand(req, con);
            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "modifier();", true);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
        }

        protected void Annuler_Click1(object sender, EventArgs e)
        {
            VideChamp();

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
            req = "select NomFournisseur from Fournisseur where NomFournisseur='" + txtsearch.Text + "'";
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