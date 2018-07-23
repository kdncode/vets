using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Update_Order_Details : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=mimas.itds.unt.edu;Initial Catalog=TKC;Persist Security Info=True;User ID=TKCAdmin;Password=E(qNW9aO");

    protected void Page_Load(object sender, EventArgs e)
    {
        if(IsPostBack)
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
        foreach(DataRow dr in dt.Rows)
        {
            txtFName1.Text = dr["FirstName"].ToString();
            txtLName1.Text = dr["LastName"].ToString();
            txtAddress1.Text = dr["Address"].ToString();
            txtCity1.Text = dr["City"].ToString();
            txtState1.Text = dr["State"].ToString();
            txtZipcode1.Text = dr["Zipcode"].ToString();
            txtCountry1.Text = dr["Country"].ToString();
            txtPhone1.Text = dr["Phone"].ToString();

        }
    }

    protected void ButtonUpdateOrderDetails_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "UPDATE SIGNUP SET FirstName = '" + txtFName1.Text + "', LastName= '" + txtLName1.Text + "', Address= '" + txtAddress1.Text + "', City= '" + txtCity1.Text + "', State= '" + txtState1.Text + "', Zipcode= '" + txtZipcode1.Text + "', Country= '" + txtCountry1.Text + "', Phone= '" + txtPhone1.Text + "' WHERE Email = '" + Session["Username"].ToString() + "'"; 
        cmd.ExecuteNonQuery();

        con.Close();

        Response.Redirect("CheckOut.aspx");
    }

}
