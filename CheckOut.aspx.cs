using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class CheckOut : System.Web.UI.Page
{
    static DataTable tbGioHang = new DataTable();
    ConnectionSQL db = new ConnectionSQL();

    string order_no;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["P_ID"] != null)
            {
                int idSP = int.Parse(Request.QueryString["P_ID"]);
                DataTable dt = db.GetTable("Select P_Name, P_Price From Products where P_ID=" + idSP);
                String TenSP = dt.Rows[0][0].ToString();
                int Dongia = int.Parse(dt.Rows[0][1].ToString());
                int Soluong = 1;
                ThemVaoGioHang(idSP, TenSP, Dongia, Soluong);
            }
            if (Session["GioHang"] == null)

            {
                Response.Redirect("EmptyCart.aspx");
            }
            tbGioHang = (DataTable)Session["GioHang"];
            string strnumber = tbGioHang.Compute("Sum(TongTien)", "").ToString();
            lbTongTien1.Text = strnumber;
            gvCart.DataSource = tbGioHang;
            gvCart.DataBind();
        }

            //Generate order number 
            order_no = Class1.GetRandomPassword(10).ToString();
            Session["order_no"] = order_no.ToString();
    }

    public void ThemVaoGioHang(int idSP, string TenSP, int Dongia, int Soluong)
    {
        DataTable dt;
        if (Session["GioHang"] == null)
        {
            dt = new DataTable();
            dt.Columns.Add("idSP");
            dt.Columns.Add("TenSP");
            dt.Columns.Add("Gia");
            dt.Columns.Add("SoLuong");
            dt.Columns.Add("TongTien");
        }
        else
            dt = (DataTable)Session["GioHang"];
        int dong = SPdacotronggiohang(idSP, dt);
        if (dong != -1)
        {
            dt.Rows[dong]["SoLuong"] = Convert.ToInt32(dt.Rows[dong]["SoLuong"]) + Soluong;
        } else {
            DataRow dr = dt.NewRow();
            dr["idSP"] = idSP;
            dr["TenSP"] = TenSP;
            dr["Gia"] = Dongia;
            dr["SoLuong"] = Soluong;
            dr["TongTien"] = Dongia * Soluong;
            dt.Rows.Add(dr);
        }
        Session["GioHang"] = dt;
    }

    public static int SPdacotronggiohang(int idSP, DataTable dt)
    {
        int dong = -1;
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            if (int.Parse(dt.Rows[i]["idSP"].ToString()) == idSP)
            {
                dong = i;
                break;
            }
        }
        return dong;
    }

    protected void gvCart_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Xoa")
        {
            int chiso = int.Parse(e.CommandArgument.ToString());
            DataTable dt = (DataTable)Session["GioHang"];
            dt.Rows.RemoveAt(chiso);
            Session["GioHang"] = dt;
            Response.Redirect("CheckOut.aspx");
        }
    }
    
    protected void btnPlaceOrder_Click(object sender, EventArgs e)
    { 
            Response.Redirect("Confirmation.aspx");    
    }
}
