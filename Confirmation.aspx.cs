using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Confirmation : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=mimas.itds.unt.edu;Initial Catalog=TKC;Persist Security Info=True;User ID=TKCAdmin;Password=E(qNW9aO");

    string order = "";
    string Order_ID;
    string s;
    string t;
    string[] a = new string[6];

    protected void Page_Load(object sender, EventArgs e)
    {

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
                SqlCommand cmd1 = con.CreateCommand();
                cmd1.CommandType = CommandType.Text;
                cmd1.CommandText = "INSERT INTO Orders VALUES('" + dr["FirstName"].ToString() + "', '" + dr["LastName"].ToString() + "', '" + dr["Email"].ToString() + "', '" + dr["Address"].ToString() + "', '" + dr["City"].ToString() + "', '" + dr["State"].ToString() + "', '" + dr["Zipcode"].ToString() + "', '" + dr["Country"].ToString() + "', '" + dr["Phone"].ToString() + "')";
                cmd1.ExecuteNonQuery();
            }

            //
            SqlCommand cmd2 = con.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            cmd2.CommandText = "SELECT top 1 * FROM  Orders WHERE Email='" + Session["Username"].ToString() + "' Order by ID desc";
            cmd2.ExecuteNonQuery();
            DataTable dt2 = new DataTable();
            SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
            da2.Fill(dt2);
            foreach (DataRow dr2 in dt2.Rows)
            {
            Order_ID = dr2["ID"].ToString();
         
            }

        //SqlCommand cmd3 = con.CreateCommand();
        //cmd3.CommandType = CommandType.Text;
        //cmd3.CommandText = "INSERT INTO OrderDetails VALUES('" + Order_ID.ToString() + "', '" + a[0].ToString() + "', '" + a[2].ToString() + "', '" + a[3].ToString() + "', '" + a[4].ToString() + "')";
        //cmd3.ExecuteNonQuery();

        Response.Redirect("ThankYou.aspx");
   }
}
