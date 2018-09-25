using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class register : System.Web.UI.Page {

    protected void Page_Load(object sender, EventArgs e) {

    }

    protected void btnRegister_Click(object sender, EventArgs e) {
        if (IsPostBack) {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["TKCConnectionString"].ConnectionString);

            conn.Open();

            string checkusername = "select count(*) from [SIGNUP] where Email = '" + txtEmail.Text + "'";
            SqlCommand com = new SqlCommand(checkusername, conn);

            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());

            conn.Close();

            if (temp == 1) {
                lblExist.Text = "That username is taken. Try another.";
            } else {
                SqlConnection myConnection = new SqlConnection(SqlDataSource1.ConnectionString);
                SqlCommand myCommand = new SqlCommand(SqlDataSource1.InsertCommand);
                myCommand.Connection = myConnection;
                myCommand.Parameters.AddWithValue("@email", txtEmail.Text);
                myCommand.Parameters.AddWithValue("@Password", txtPassword.Text);
                myCommand.Parameters.AddWithValue("@FirstName", txtFName.Text);
                myCommand.Parameters.AddWithValue("@LastName", txtLName.Text);
                myCommand.Parameters.AddWithValue("@Address", txtAddress.Text);
                myCommand.Parameters.AddWithValue("@City", txtCity.Text);
                myCommand.Parameters.AddWithValue("@State", txtState.Text);
                myCommand.Parameters.AddWithValue("@Zipcode", txtZipcode.Text);
                myCommand.Parameters.AddWithValue("@Country", txtCountry.Text);
                myCommand.Parameters.AddWithValue("@Phone", txtPhone.Text);

                SqlDataReader myReader;
                myConnection.Open();
                myReader = myCommand.ExecuteReader(CommandBehavior.CloseConnection);
                myConnection.Close();

                Response.Redirect("signin.aspx");
            }
        }
    }
}
