using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Data.SqlClient;

public partial class signin : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) {
            if (Session["Username"] != null) {
                txtUsername.Visible = false;
                txtPassword.Visible = false;
                btnSignIn.Visible = false;
                Hienthi.Text = "You are on our page";
            } else {
                txtUsername.Visible = true;
                txtPassword.Visible = true;
                btnSignIn.Visible = true;
                Hienthi.Visible = false;       
            }
        }
    }

    protected void btnSignIn_Click(object sender, EventArgs e) {
        string UserID = "";
        string Password = "";
        /*SqlDataReader MyReader;
        SqlConnection myConnection = new SqlConnection(SqlDataSource1.ConnectionString);
        SqlCommand myCommand = new SqlCommand(SqlDataSource1.SelectCommand);
        myCommand.Connection = myConnection;
        myCommand.Parameters.AddWithValue("@password", txtPassword.Text);
        myCommand.Parameters.AddWithValue("@email", txtUsername.Text);
        myConnection.Open();
        MyReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection);
        while (MyReader.Read())
        {
            UserID = MyReader.GetString(2).Trim() + " " + MyReader.GetString(3).Trim();
            Password = MyReader.GetString(1).Trim();
        }

        myConnection.Close();*/

        //NameSpace  
        ConnectionSQL db = new ConnectionSQL();

        //Cai nay se lay du lieu dang nhap tra ve bang
        DataTable dt = db.GetTable("SELECT * FROM SIGNUP WHERE email = N'"+txtUsername.Text+"' and Password = '"+txtPassword.Text+"'");

        if (txtPassword.Text == "")
            lblMessage.Text = "Please enter your Username & Password";
        else {
            if (dt.Rows.Count>0) {
                if (Session["CheckOutButton"] == "yes") {
                    Session["Username"] = txtUsername.Text;
                    Response.Redirect("MyAccount.aspx");
                } else {
                    Session["Username"] = txtUsername.Text;
                    Response.Redirect("MyAccount.aspx");
                }

                Session["UserName"] = UserID;
                Session["UserEmail"] = txtUsername.Text.Trim();
                Response.Redirect("MyAccount.aspx");
            } else {
                lblMessage.Text = "Incorrect Username or Password";
            }
        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e) {
        string UserID = "";
        string Password = "";
        SqlDataReader MyReader;
        SqlConnection myConnection = new SqlConnection(SqlDataSource1.ConnectionString);
        SqlCommand myCommand = new SqlCommand(SqlDataSource1.SelectCommand);
        myCommand.Connection = myConnection;
        myCommand.Parameters.AddWithValue("@password", txtPassword.Text);
        myCommand.Parameters.AddWithValue("@email", txtUsername.Text);
        myConnection.Open();
        MyReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection);
        
        while (MyReader.Read()) {
            UserID = MyReader.GetString(2).Trim() + " " + MyReader.GetString(3).Trim();
            Password = MyReader.GetString(1).Trim();
        }

        myConnection.Close();
        if (txtPassword.Text == "")
            lblMessage.Text = "Please enter your Username & Password";
        else
        {
            if (txtPassword.Text.Trim() == Password)
            {
                Session["Username"] = UserID;
                Session["UserEmail"] = txtUsername.Text.Trim();
                Response.Redirect("Update.aspx");
            }
            else
            {
                lblMessage.Text = "Incorrect Username or Password";
            }
        }
    }
}
