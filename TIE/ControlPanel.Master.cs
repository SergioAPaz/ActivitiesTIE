using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TIE
{
    public partial class ControlPanel : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }
        public void CloseSession(object sender, EventArgs e)
        {
            Session.Remove("user");
            Response.Redirect("Login.aspx");
        }
    }
}