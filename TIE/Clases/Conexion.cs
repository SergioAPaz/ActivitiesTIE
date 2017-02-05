using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace TIE.Clases
{
    public class Conexion
    {
      

        public Conexion()
        {
            var connectionFromConfiguration = WebConfigurationManager.ConnectionStrings["Store.Properties.Settings.DB_String"];


            using (SqlConnection dbconnection = new SqlConnection(connectionFromConfiguration.ConnectionString))
            {
                try
                {
                    dbconnection.Open();
                    SqlCommand command = new SqlCommand("INSERT INTO dbo.users (Name,Mail,[User],Password,Account_Type) values ('pepe','test1@tie.com','pepito','pass','Auxiliar')", dbconnection);
                    SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
                    
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