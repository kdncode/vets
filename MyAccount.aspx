<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MyAccount.aspx.cs" Inherits="MyAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
         <br /><br /><br />
    <center>
    <div class="Welcome">
        
       <p> 
<asp:Label ID="lblMyAccount" runat="server" Text="Label" Font-Bold="True" Font-Size="X-Large" 
    ForeColor="red">Welcome to my website.</asp:Label>
      </p>
    <br />
    </div>
        
         <br /> <br /> 
    <asp:Button ID="btnUpdate1" runat="server" Text="Update Your Info"  class="btn btn-outline-secondary" OnClick="btnUpdate1_Click"  />
            <br /><br />

    <asp:Button ID="btnLogOut" runat="server" Text="Browse Products" class="btn btn-outline-secondary" OnClick="btnLogOut_Click" />
    
       
         <br /> <br /> 
    <asp:Button ID="ViewCart" runat="server" Text="View Cart"  class="btn btn-outline-secondary" OnClick="ViewCart_Click"  />
            <br /><br />

    </center>
    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</asp:Content>
