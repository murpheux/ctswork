using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Test3
{
    public partial class Welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var user = Session["LoginUser"];

            if (user == null)
                Response.Redirect("Login.aspx");
        }

        protected void LoginStatus1_LoggingOut(object sender, LoginCancelEventArgs e)
        {
            Session["LoginUser"] = null;

            Session.Clear();
            Session.Clear();

            FormsAuthentication.SignOut();
            Response.Redirect("~/Login.aspx");
        }
    }
}