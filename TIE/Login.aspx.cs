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
    public partial class Login : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void ConsultaAccount(object sender, EventArgs e)
        {
            var connectionFromConfiguration = WebConfigurationManager.ConnectionStrings["TIE.Properties.Settings.DB_String"];
            using (SqlConnection dbconnection = new SqlConnection(connectionFromConfiguration.ConnectionString))
            {
                try
                {
                    dbconnection.Open();
                    SqlCommand loginRev= new SqlCommand("SELECT COUNT(*) FROM [TIE].[dbo].[users] WHERE [User]='" + txtUser.Text + "' AND Password='" + txtPassword.Text + "' ", dbconnection);
                    Int32 ValueQuery = (Int32)loginRev.ExecuteScalar();
                   
                    if (ValueQuery == 1)
                    {
                        Session["user"] = txtUser.Text;
                        Response.Redirect("ControlPanel.aspx");
                    }
                    else
                    {
                        msgNoUser.Visible = true;
                    }

                }
                catch (SqlException ex)
                {
                    dbconnection.Close();
                    dbconnection.Dispose();
                }

            }
        }
    }
}