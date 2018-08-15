<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CheckOut.aspx.cs" Inherits="CheckOut" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><br />
    <center>
        <h2 style="color: rebeccapurple";>Order Summary</h2><br />

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
                  
                   <asp:Image ID="Image1" runat="server" AlternateText="Care Package" Height="64px" Width="69px"  
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
   </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    <b>Order total:&nbsp;</b>
    <asp:Label ID="Label1" runat="server" Text="$"></asp:Label>
        <asp:Label ID="lbTongTien1" runat="server"></asp:Label><br /><br />
        &nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp&nbsp;&nbsp
          <div class="Login"><br />
           
        <img src="img/donatepayment.png" 
            alt="Donate" height="150" width ="220"> <br /><br />
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="Signup_FName">
                        <asp:ListItem>Please Select</asp:ListItem>
                        <asp:ListItem>Visa</asp:ListItem>
                        <asp:ListItem>MasterCard</asp:ListItem>
                        <asp:ListItem>American Express</asp:ListItem>
                        <asp:ListItem>Discover Network</asp:ListItem>
                    </asp:DropDownList><br /><br />
        
                    <asp:TextBox ID="TextBox9" runat="server" placeholder="Name On Card" 
                        CssClass="Login_un"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Please enter your Cardholder Name" 
                       ControlToValidate="TextBox9" ForeColor="#FF6666"  Font-Names="Poppins" Font-Size="Small" ></asp:RequiredFieldValidator>
              
                    <asp:TextBox ID="TextBox10" runat="server" placeholder="Card Number" 
                        CssClass="Login_un"></asp:TextBox><br />
              
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ErrorMessage="Please enter a valid card number" 
                        ControlToValidate="TextBox10" ForeColor="#FF6666"  Font-Names="Poppins" Font-Size="Small" 
                        ValidationExpression="^[\d]{16,16}$"></asp:RegularExpressionValidator><br />
              
                    <asp:TextBox ID="TextBox11" runat="server" Width="100px" placeholder="MM/YYYY" 
                        CssClass="Login_un"></asp:TextBox><br />
                    
  <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ErrorMessage="Expiration date must be valid & in form MM/YYYY" 
                        ControlToValidate="TextBox11" ForeColor="#FF6666"  Font-Names="Poppins" Font-Size="Small" 
                        ValidationExpression="^((0[1-9])|(1[0-2]))\/((20)(1([7-9])|([2-9])([0-9])))$"></asp:RegularExpressionValidator>

                    <asp:TextBox ID="TextBox13" runat="server" placeholder="CVV" 
                        CssClass="Login_un"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ErrorMessage="CVV code must be 3 digits" 
                        ControlToValidate="TextBox13" ForeColor="#FF6666"  Font-Names="Poppins" Font-Size="Small" 
                        ValidationExpression="^[\d]{3,3}$"></asp:RegularExpressionValidator><br />
              
             <asp:Button ID="btnPlaceOrder" Text="Place your order" class="btn btn-outline-secondary" runat="server" OnClick="btnPlaceOrder_Click"/>
            </div><br /><br /><br />
<style>

    .Grid {background-color: #fff; margin: 5px 0 10px 0; border: solid 1px #c1c1c1; border-collapse:collapse; font-family:Poppins; color: #474747;}
.Grid td {
      padding: 3px;
      border: solid 1px #c1c1c1; }
.Grid th  {
      position: center;
      padding : 3px 2px;
      color: #fff;
      background: #69e8a2 repeat-x top;
      border-left: solid 1px #c1c1c1;
      font-size: 0.9em; }
.Grid .alt {
      background: #fcfcfc repeat-x top; }
.Grid .pgr {background: #69e8a2 repeat-x top; }
.Grid .pgr table { margin: 10px 0; }
.Grid .pgr td { border-width: 0; padding: 0 6px; border-left: solid 1px #666; font-weight: bold; color: #fff; line-height: 12px; }  
.Grid .pgr a { color: Gray; text-decoration: none; }
.Grid .pgr a:hover { color: #000; text-decoration: none; }

</style>
</center><br /><br /><br /><br /><br />   <br /><br /><br /><br /><br />   <br /><br /><br /><br /><br />   <br /><br /><br /><br /><br />  
</asp:Content>
