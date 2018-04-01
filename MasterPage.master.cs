using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["Username"] == null)
            {
                signinButton.Visible = true;
                registerButton.Visible = true;
                MyAccountButton1.Visible = false;
                logoutButt.Visible = false;
            }
            
            else
            {
                signinButton.Visible = false;
                registerButton.Visible = false;
                MyAccountButton1.Visible = true;
                logoutButt.Visible = true;
            }
           
        }
    }

    protected void logoutButt_ServerClick(object sender, EventArgs e)
    {
        Session["Username"] = null;
        Response.Redirect("signin.aspx");
    }
}
