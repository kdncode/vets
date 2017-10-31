<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ThankYou.aspx.cs" Inherits="ThankYou" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br /><br /><br />
    <center>
    <h3>Thank you for shopping with us!<br /></h3>
    <p>Please wait within 24 hours for us to confirm your orders. <br />
       </p>
        <br />
    <asp:Button ID="btnKeepShopping" runat="server" Text="Keep Shopping" class="btn btn-outline-secondary" OnClick="btnKeepShopping_Click"></asp:Button>

    </center>
    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</asp:Content>

