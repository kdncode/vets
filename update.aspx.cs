using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class update : System.Web.UI.Page {
    
    SqlConnection con = new SqlConnection(@"Data Source=mimas.itds.unt.edu;Initial Catalog=TKC;Persist Security Info=True;User ID=TKCAdmin;Password=E(qNW9aO");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            return;
        }
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "SELECT * FROM SIGNUP WHERE Email = '" + Session["Username"].ToString() + "'";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        foreach (DataRow dr in dt.Rows)
        {
            txtFName.Text = dr["FirstName"].ToString();
            txtLName.Text = dr["LastName"].ToString();
            txtEmail.Text = dr["Email"].ToString();
            txtPassword.Text = dr["Password"].ToString();
            txtAddress.Text = dr["Address"].ToString();
            txtCity.Text = dr["City"].ToString();
            txtState.Text = dr["State"].ToString();
            txtZipcode.Text = dr["Zipcode"].ToString();
            txtCountry.Text = dr["Country"].ToString();
            txtPhone.Text = dr["Phone"].ToString();
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "UPDATE SIGNUP SET FirstName = '" + txtFName.Text + "', LastName= '" + txtLName.Text + "', Email= '" + txtEmail.Text + "', Password= '" + txtPassword.Text + "', Address= '" + txtAddress.Text + "', City= '" + txtCity.Text + "', State= '" + txtState.Text + "', Zipcode= '" + txtZipcode.Text + "', Country= '" + txtCountry.Text + "', Phone= '" + txtPhone.Text + "' WHERE Email = '" + Session["Username"].ToString() + "'";
        cmd.ExecuteNonQuery();

        con.Close();
        
        Response.Redirect("MyAccount.aspx");
    }
}
