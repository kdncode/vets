<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="welcome.aspx.cs" Inherits="welcome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <br /><br />
    <center>
    <div class="Welcome">       
       <p> 
          <asp:Label ID="lblWelcome" runat="server" Text="Label" Font-Bold="True" Font-Size="X-Large" 
          ForeColor="red">Welcome to my website.</asp:Label>
       </p> <br /><img src="#" alt="Welcome to TKC's Website" style="width:250px;height:250px;">  
    <br /><br /><br />
    </div>
        </center>
</asp:Content>
