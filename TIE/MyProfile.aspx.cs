using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TIE
{
    public partial class MyProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String sql = "SELECT * FROM [TIE].[dbo].[users] WHERE  [User] = '" + Session["user"] + "' ";

            string strCon = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["TIE.Properties.Settings.DB_String"].ConnectionString;

            SqlConnection conn = new SqlConnection(strCon);
            SqlCommand comm = new SqlCommand(sql, conn);
            conn.Open();
            SqlDataReader nwReader = comm.ExecuteReader();
            while (nwReader.Read())
            {
                txtName.Text = (String)nwReader["Name"];
                txtUser.Text = (String)nwReader["User"];
                txtMail.Text = (String)nwReader["Mail"];
            }
            nwReader.Close();
            conn.Close();
        }
        public void SelectDates(object sender, EventArgs e)
        {
           
        }
    }
}