using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Test3.model;

namespace Test3
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSummary1.ValidationGroup = Login1.UniqueID;

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            bool authenticated = false;
            authenticated = Authenticate(Login1.UserName, Login1.Password);

            if (authenticated)
            {
                var user = new User(Login1.UserName, Login1.Password);

                Session["LoginUser"] = user;

                FormsAuthentication.SetAuthCookie(Login1.UserName, true);
                e.Authenticated = authenticated;
                Response.Redirect("Welcome.aspx");
            }
            else
                e.Authenticated = authenticated;
        }

        private bool Authenticate(string firstname, string lastname)
        {
            return firstname.Contains("Jr") || lastname.Contains("Jr");
         }
    }
}