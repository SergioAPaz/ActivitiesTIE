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
                lblName.Text = (String)nwReader["Name"];
                lblUser.Text = (String)nwReader["User"];
                lblMail.Text = (String)nwReader["Mail"];
            }
            nwReader.Close();
            conn.Close();
        }
        public void btn_edit(object sender, EventArgs e)
        {
            lblName.Visible = false;
         
            lblMail.Visible = false;
            txtName.Text = lblName.Text;
            txtMail.Text = lblMail.Text;
            txtMail.Visible = true;
            txtName.Visible = true;
            btnEditCancel.Visible = true;
            btnEdit.Visible = false;
            btnSave.Visible = true;
        }
        public void btn_EditCancel(object sender, EventArgs e)
        {
            txtName.Visible = false;
            txtMail.Visible = false;
            lblName.Visible = true;
            lblMail.Visible = true;
            btnEditCancel.Visible = false;
            btnEdit.Visible = true;
            btnSave.Visible = false;
        }
        public void btn_Save(object sender, EventArgs e)
        {
            if (txtMail.Text!=null & txtName.Text!=null)
            {
                var connectionFromConfiguration = WebConfigurationManager.ConnectionStrings["TIE.Properties.Settings.DB_String"];
                using (SqlConnection dbconnection = new SqlConnection(connectionFromConfiguration.ConnectionString))
                {
                    try
                    {
                        String User = lblUser.Text;
                        dbconnection.Open();
                        SqlCommand actualizar = new SqlCommand("UPDATE [TIE].[dbo].[users] SET Name='" + txtName.Text + "', Mail='" + txtMail.Text + "' WHERE [User]='" + User + "'  ", dbconnection);
                        actualizar.ExecuteNonQuery();
                        ErrorEditUser.Visible = false;

                        lblMail.Text = txtMail.Text;
                        lblName.Text = txtName.Text;
                        txtMail.Visible = false;
                        txtName.Visible = false;
                        lblMail.Visible = true;
                        lblName.Visible = true;
                        btnEditCancel.Visible = false;
                        btnEdit.Visible = true;
                        btnSave.Visible = false;
                        alertSucceseful.Visible = true;


                    }
                    catch (SqlException ex)
                    {
                        dbconnection.Close();
                        dbconnection.Dispose();
                    }
                }
            }
            else
            {
                ErrorEditUser.Visible = true;
            }
            
           



        }


    }
}