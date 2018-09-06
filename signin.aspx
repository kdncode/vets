<%@ Page Title="" Language="C#" Debug="true" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signin.aspx.cs" Inherits="signin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><br /><br /><br /><br /><br />
<center> 

        <div class ="Login">
             <center><h1>Sign In</h1></center>
             
            <form>
            <asp:TextBox ID="txtUsername" runat="server"  Font-Names="Poppins" placeholder="Email" CssClass="Login_un"></asp:TextBox><br />
            <asp:TextBox ID="txtPassword" runat="server" Font-Names="Poppins" placeholder="Password" CssClass="Login_un" TextMode="Password"></asp:TextBox><br />         
            <asp:Button ID="btnSignIn" runat="server" Font-Names="Poppins" Text="Sign in" CssClass="Login_btn" OnClick="btnSignIn_Click"  />
            <br /><br /> <br />

                <asp:Label ID="Hienthi" runat="server"></asp:Label><br />

             <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:TKCConnectionString %>" 
                 SelectCommand="SELECT Email, Password, FirstName, LastName, Address, City, State, Zipcode, Country, Phone FROM [SIGNUP] WHERE ([Email] = @Email) AND ([Password]=@Password)">
       
         <SelectParameters>
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Password" />
        </SelectParameters>

             </asp:SqlDataSource><br />
             <asp:Label ID="lblMessage" runat="server" CssClass="signin_lbl" Font-Bold="False" ForeColor="#FF6666" Font-Names="Poppins" Font-Size="Small"></asp:Label><br />
           <hr>

    <h5><a href="contact.aspx" >Forgot Password?</a></h5><hr>
    <h5><a href="register.aspx" >Don't have an account? Register</a></h5>
</form>
</div>
        
  </center><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</asp:Content>
