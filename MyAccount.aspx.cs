using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MyAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] != null)
        {
            lblMyAccount.Text = "Hello " + Session["Username"].ToString() + "!";
            lblMyAccount.Visible = true;
            //btnLogOut.Visible = true;
        }
        else
        {
            btnLogOut.Visible = false;
            Response.Redirect("signin.aspx");
        }
    }

    protected void btnUpdate1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Update.aspx");
    }

    protected void btnLogOut_Click(object sender, EventArgs e)
    {
       
        Response.Redirect("products.aspx");
    }




    protected void ViewCart_Click(object sender, EventArgs e)
    {

        Response.Redirect("cart.aspx");
    }
    



}