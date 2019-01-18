<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><br />
    <center>
         <center><h2 style="color: rebeccapurple";>Your Cart</h2></center>
    <asp:GridView ID="gvCart" runat="server" OnRowCommand="gvCart_RowCommand" DataKeyNames="idSP" 
        CssClass="Grid" 
        AlternatingRowStyle-CssClass="alt"
        PagerStyle-CssClass="pgr"
        AutoGenerateColumns="False">   
<AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
        
       <Columns>
           <asp:BoundField DataField="idSP" HeaderText="ID" />
           <asp:TemplateField HeaderText="Product Image">
               <ItemTemplate>
                   <asp:Image ID="Image1" runat="server" AlternateText="Care Package" Height="84px" Width="89px"  
                       ImageUrl='~/img/cart.jpg' />
       
               </ItemTemplate>
           </asp:TemplateField>
           <asp:BoundField DataField="TenSP" HeaderText="Product Name" />
           <asp:BoundField DataField="Gia" HeaderText="Price" />
           <asp:TemplateField HeaderText="Quantity">
               <ItemTemplate>
                   <asp:TextBox ID="txtSoLuong" runat="server" Text='<%# Bind("SoLuong") %>' Width="30px">
                       </asp:TextBox>
               </ItemTemplate>
           </asp:TemplateField>
           <asp:BoundField DataField="TongTien" HeaderText="Total Price" />
           <asp:ButtonField CommandName="Xoa" HeaderText="Delete" Text="Delete" />
       </Columns>

<PagerStyle CssClass="pgr"></PagerStyle>
   </asp:GridView><br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
  <b>Order total:&nbsp;</b>
    <asp:Label ID="Label1" runat="server" Text="$"></asp:Label>
    <asp:Label ID="lbTongTien" runat="server"></asp:Label><br /><br /><br />
    <asp:Button ID="Button3" Text="Update" runat="server" class="btn btn-outline-secondary" OnClick="Button3_Click"/>&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp
    <asp:Button ID="Button4" Text="Clear Cart" runat="server" class="btn btn-outline-secondary" OnClick="Button4_Click"/><br /><br />
    <asp:Button ID="Button1" Text="Continue Shopping" runat="server" class="btn btn-outline-secondary" OnClick="Button1_Click"/>&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp
    <asp:Button ID="Button2" Text="Check Out" runat="server"  class="btn btn-outline-secondary" OnClick="Button2_Click"/>

<style>
    .Grid { background-color: #fff; margin: 5px 0 10px 0; border: solid 1px #c1c1c1; border-collapse:collapse; font-family:Poppins; color: #474747;}
    
    .Grid td {
      padding: 20px;
      border: solid 1px #c1c1c1; 
    }
    
    .Grid th  {
      position: center;
      padding : 10px 8px;
      color: #fff;
      background: #69e8a2 repeat-x top;
      border-left: solid 1px #c1c1c1;
      font-size: 0.9em; 
    }

    .Grid .alt {
      background: #fcfcfc repeat-x top; 
    }
    
    .Grid .pgr { background: #69e8a2 repeat-x top; }
    .Grid .pgr table { margin: 10px 0; }
    .Grid .pgr td { border-width: 0; padding: 0 6px; border-left: solid 1px #666; font-weight: bold; color: #fff; line-height: 12px; }  
    .Grid .pgr a { color: Gray; text-decoration: none; }
    .Grid .pgr a:hover { color: #000; text-decoration: none; }

</style>
</center><br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br /> <br />
</asp:Content>
