<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="donate.aspx.cs" Inherits="donate" %>

<script runat="server">
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 840px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <center><br /><br />
       <center>
                      <h2 style="color: rebeccapurple";>Make A Donation</h2><br />
    <div class="AboutTKC">
        <p>Your donation will help save a life. It enables the equipment, counselors, <br /> training, and programs to help veterans on the brink.</p>
        <br />
           
        <img src="img/donatepayment.png" alt="Donate" height="150" width ="220"> <br /><br />
        <div class="Login">

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
                        ValidationExpression="^[\d]{16,16}$"></asp:RegularExpressionValidator> <br />
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
            
             <asp:Button ID="DonateButton" runat="server" Font-Names="Poppins" CssClass="btn btn-outline-secondary" OnClick="DonateButton_Click" Text="Donate" />
            </div><br />
</center>
  </div><br /><br /><br /><br /><br /><br /> <br /><br /><br /><br /><br /><br /><br />
</asp:Content>
