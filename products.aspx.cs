using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class products : System.Web.UI.Page {
    ConnectionSQL db = new ConnectionSQL();
    static DataTable tbGioHang = new DataTable();

    protected void Page_Load(object sender, EventArgs e) {
        if (!IsPostBack) {   
            //Trong gio hang truyen vao ko co p_size ne thi ben kia dau co p_size
            if (Session["GioHang"] != null) {
                tbGioHang = Session["GioHang"] as DataTable;
                
            } else {
                tbGioHang.Rows.Clear();
                tbGioHang.Columns.Clear();
                tbGioHang.Columns.Add("idSP", typeof(int));
                tbGioHang.Columns.Add("TenSP", typeof(string));
                tbGioHang.Columns.Add("Gia", typeof(double));
                tbGioHang.Columns.Add("SoLuong", typeof(int));
                tbGioHang.Columns.Add("TongTien", typeof(double), "SoLuong * Gia");
            }
            ShowProduct();
        }
    }

    void ShowProduct() {
        DataList1.DataSource = db.GetTable("SELECT * FROM products");
        DataList1.DataBind();
    }

    protected void btnAdd1_Click(object sender, EventArgs e)
    {
        // Add product 1 to the shopping cart
       // ShoppingCart.Instance.AddItem(1);

        // Redirect the user to view their shopping cart
        //Response.Redirect("cart.aspx");
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "GioHang") {
            
            int intidSP = int.Parse(DataList1.DataKeys[e.Item.ItemIndex].ToString());
            DataTable Temp = db.GetTable("select P_Name, P_Price from products Where P_ID='"+intidSP+"'");
            string strTenSP = Temp.Rows[0][0].ToString();
            float flGia = int.Parse(Temp.Rows[0][1].ToString());
            int intSoLuong = 1;
            //Add vao gio hang

            foreach (DataRow row in tbGioHang.Rows)
            {//Kiem tr neu mat hang da co roi thi tang so luong len 1
                if ((int)row["idSP"] == intidSP) {
                    row["SoLuong"] = (int)row["SoLuong"] + 1;
                    goto GioHang;
                }
            }

            tbGioHang.Rows.Add(intidSP, strTenSP, flGia, intSoLuong);
            GioHang:
            Session["GioHang"] = tbGioHang;      

            Response.Write("<script>alert('The item has been successfully added to cart')</script>");          
        }
}
    protected void ButtonViewCart_Click(object sender, EventArgs e) {
        Response.Redirect("cart.aspx");
    }
}
