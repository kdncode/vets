using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class cart : System.Web.UI.Page {
    
    static DataTable tbGioHang = new DataTable();
    ConnectionSQL db = new ConnectionSQL();

    protected void Page_Load(object sender, EventArgs e) {
        if (!IsPostBack) {
                if (Request.QueryString["P_ID"] != null) {
                    int idSP = int.Parse(Request.QueryString["P_ID"]);
                    DataTable dt = db.GetTable("Select P_Name, P_Price From Products where P_ID=" + idSP);
                    string TenSP = dt.Rows[0][0].ToString();
                    int Dongia = int.Parse(dt.Rows[0][1].ToString());
                    int Soluong = 1;
                    ThemVaoGioHang(idSP, TenSP, Dongia, Soluong);
                }
            
            if (Session["GioHang"] == null) {
                Response.Redirect("EmptyCart.aspx");
            }
            
            tbGioHang = (DataTable)Session["GioHang"];
            string strnumber = tbGioHang.Compute("Sum(TongTien)", "").ToString();
            lbTongTien.Text = strnumber;
            gvCart.DataSource = tbGioHang;
            gvCart.DataBind();
        }
    }

    public void ThemVaoGioHang(int idSP, string TenSP, int Dongia, int Soluong) {
        DataTable dt;
        if (Session["GioHang"] == null) {
            dt = new DataTable();
            dt.Columns.Add("idSP");
            dt.Columns.Add("TenSP");
            dt.Columns.Add("Gia");
            dt.Columns.Add("SoLuong");
            dt.Columns.Add("TongTien");
        } else
            dt = (DataTable)Session["GioHang"];
        int dong = SPdacotronggiohang(idSP, dt);
        
        if (dong != -1) {
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

    public static int SPdacotronggiohang(int idSP, DataTable dt) {
        int dong = -1;
        for (int i = 0; i < dt.Rows.Count; i++) {
            if (int.Parse(dt.Rows[i]["idSP"].ToString()) == idSP) {
                dong = i;
                break;
            }
        }
        return dong;
    }

    protected void gvCart_RowCommand(object sender, GridViewCommandEventArgs e) {
        if (e.CommandName == "Xoa") {
            int chiso = int.Parse(e.CommandArgument.ToString());
            DataTable dt = (DataTable)Session["GioHang"];
            dt.Rows.RemoveAt(chiso);
            Session["GioHang"] = dt;
            Response.Redirect("cart.aspx");
        }
    }

    protected void Button4_Click(object sender, EventArgs e) {
        Session["GioHang"] = null;
        Response.Redirect("cart.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e) {
        DataTable dt = (DataTable)Session["GioHang"];
        foreach (GridViewRow r in gvCart.Rows) {
            foreach (DataRow dr in dt.Rows) {
                if (int.Parse(gvCart.DataKeys[r.DataItemIndex].Value.ToString()) == int.Parse(dr["idSP"].ToString())) {
                    TextBox t = ((TextBox)r.Cells[3].FindControl("txtSoLuong"));
                    int c = int.Parse(t.Text);
                    if (c <= 0)
                        dt.Rows.Remove(dr);
                    else dr["SoLuong"] = t.Text;
                    break;
                }
            }
        }
        Session["GioHang"] = dt;
        Response.Redirect("cart.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/products.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        if (Session["Username"] == null)
        {
            Response.Redirect("signin.aspx");
        }
        else
        {
            Response.Redirect("Update_Order_Details.aspx");
        }
    }
}
