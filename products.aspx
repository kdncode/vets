<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="products.aspx.cs" Inherits="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><br />
    
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" DataKeyField="P_ID" OnItemCommand="DataList1_ItemCommand">
    <ItemTemplate>
       <center>
        <div class ="container-fluid">
            <div class="row">
                <div class="col-sm-8">
                   <h2 style="color: rebeccapurple;"><%#Eval("P_Name") %></h2>
                    <br />
                    <img src="img/<%# Eval("P_Size")%>.jpg" alt="Care Package" style="height:200px; width: 200px; class="img-responsive" />
                    <br /><br />
                    <span class="padding"></span><label>Quantity Available: <%#" "+ Eval("P_Quantity") %></label>
                     <p><%# Eval("P_Description") %></p>
                     <h3><%#"$"+ Eval("P_Price") %></h3>
                    <br />
                     <asp:Button ID="btnAdd1" runat="server" class="btn btn-outline-secondary" CommandName="GioHang"
                  Text="Add To Cart" />
                </div>
            </div>
        </div>
     </center>
    </ItemTemplate>
</asp:DataList>
    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</asp:Content>
