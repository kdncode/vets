using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

public class ConnectionSQL
{
    public static SqlConnection connect;

    public static void OpenConnect()
    {
        if (ConnectionSQL.connect == null)
            ConnectionSQL.connect = new SqlConnection("Data Source=mimas.itds.unt.edu;Initial Catalog=TKC;Persist Security Info=True;User ID=TKCAdmin;Password=E(qNW9aO");
        if (ConnectionSQL.connect.State != ConnectionState.Open)
            ConnectionSQL.connect.Open();
    }

    public static void CloseConnect()
    {
        if (ConnectionSQL.connect!=null)
        if (ConnectionSQL.connect.State == ConnectionState.Open)
            ConnectionSQL.connect.Close();
        
    }
    //Chay. cau lenh SQL
    public void ExecuteSQL(string strSQL)
    {
        OpenConnect();
        SqlCommand cmd = new SqlCommand(strSQL, connect);
        cmd.ExecuteNonQuery();
        CloseConnect();
    }
    //Xuat ra bang SQL
    public DataTable GetTable(string strSQL)
    {
        OpenConnect();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(strSQL, connect);
        da.Fill(dt);
        CloseConnect();
        return dt;
    }
    
}