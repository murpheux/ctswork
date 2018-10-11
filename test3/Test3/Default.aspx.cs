﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Test3
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var user = Session["LoginUser"];

            if (user != null)

                Response.Redirect("Welcome.aspx");
            else
                Response.Redirect("Login.aspx");
        }
    }
}