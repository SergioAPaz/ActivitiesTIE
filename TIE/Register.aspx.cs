using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TIE
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void Conexion(object sender, EventArgs e)
        {

            var connectionFromConfiguration = WebConfigurationManager.ConnectionStrings["TIE.Properties.Settings.DB_String"];
            using (SqlConnection dbconnection = new SqlConnection(connectionFromConfiguration.ConnectionString))
            {
                try
                {
                    dbconnection.Open();
                    SqlCommand command = new SqlCommand("INSERT INTO dbo.users (Name,Mail,[User],Password,Account_Type) values ('"+txtNombreCompleto.Text+"','"+txtCorreo.Text+"','"+txtUser.Text+"','"+txtPassword.Text+"','Auxiliar')", dbconnection);
                    command.ExecuteNonQuery();
                    txtNombreCompleto.Text = "";
                    txtCorreo.Text = "";
                    txtUser.Text = "";
                    txtPassword.Text = "";
                    pnlThankYouMessage.Visible = true;

                }
                catch (SqlException ex)
                {
                    dbconnection.Close();
                    dbconnection.Dispose();

                }

            }

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

        }
    }
}