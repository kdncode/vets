﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class welcome : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
        if (Session["UserName"] != null)
        {
            lblWelcome.Text = "Hello " + Session["Username"].ToString();
            lblWelcome.Visible = true;
        }
        else
            Response.Redirect("signin.aspx");
    }
}
