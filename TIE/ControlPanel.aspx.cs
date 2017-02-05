using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TIE
{
    public partial class ControlPanel1 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
                fillGridView();
        }

        public void fillGridView()
        {
            var connectionFromConfiguration = WebConfigurationManager.ConnectionStrings["TIE.Properties.Settings.DB_String"];


            using (SqlConnection dbconnection = new SqlConnection(connectionFromConfiguration.ConnectionString))
            {
                try
                {
                    dbconnection.Open();
                    SqlCommand command = new SqlCommand("SELECT * FROM[TIE].[dbo].[Activities]", dbconnection);
                    SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
                    DataSet dataset = new DataSet();
                    dataAdapter.Fill(dataset);
                    if (dataset.Tables[0].Rows.Count > 0)
                    {
                        MyActivitiesGrid.DataSource = dataset;
                        MyActivitiesGrid.DataBind();

                        MyAssignedTaskGrid.DataSource = dataset;
                        MyAssignedTaskGrid.DataBind();

                        MyHistoricGrid.DataSource = dataset;
                        MyHistoricGrid.DataBind();
                    }
                }
                catch (SqlException ex)
                {
                    dbconnection.Close();
                    dbconnection.Dispose();
                }
                finally
                {
                    dbconnection.Close();
                    dbconnection.Dispose();
                }
            }

        }

        protected void MyActivitiesGrid_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowIndex >= 0)
            {
            
                e.Row.BackColor = System.Drawing.ColorTranslator.FromHtml("white");
            
           

                e.Row.Attributes.Add("onmouseover",
                "this.originalcolor=this.style.backgroundColor;" + " this.style.backgroundColor='#f5f5f5';");

                e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=this.originalcolor;");

            }

            MyActivitiesGrid.HeaderStyle.BackColor = System.Drawing.ColorTranslator.FromHtml("#E3F2FD");
            MyAssignedTaskGrid.HeaderStyle.BackColor = System.Drawing.ColorTranslator.FromHtml("#E3F2FD");
            MyHistoricGrid.HeaderStyle.BackColor = System.Drawing.ColorTranslator.FromHtml("#E3F2FD");

            int totalRowsCount = MyActivitiesGrid.Rows.Count;
            int totalRowsCount2 = MyAssignedTaskGrid.Rows.Count;



            if (totalRowsCount>0)
            {
                NotificacionsCounter.Text = Convert.ToString(totalRowsCount);
                NotificacionsCounter.BackColor = System.Drawing.ColorTranslator.FromHtml("red");
            }
            if (totalRowsCount2 > 0)
            {
                Label1.Text = Convert.ToString(totalRowsCount);
                Label1.BackColor = System.Drawing.ColorTranslator.FromHtml("red");
            }

           


        }
    }
}