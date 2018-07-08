<%@ Page Title="" Language="C#" Debug="true" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">         
    <center>
        <div class ="Login">
            <center><h1>Register </h1></center>

            <asp:TextBox ID="txtFName" runat="server" Font-Names="Poppins" placeholder="First name" CssClass="Register_un"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvFName" runat="server"  ErrorMessage="Please enter your First Name" ControlToValidate="txtFName" ForeColor="#FF6666"  Font-Names="Poppins" Font-Size="Small" Font-Bold="False"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="txtLName" runat="server" Font-Names="Poppins" placeholder="Last name" CssClass="Register_un" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvLName" runat="server" ErrorMessage="Please enter your Last Name" ControlToValidate="txtLName" ForeColor="#FF6666" Font-Names="Poppins" Font-Size="Small" Font-Bold="False"></asp:RequiredFieldValidator>
             <br />
            <asp:TextBox ID="txtEmail" runat="server" Font-Names="Poppins" placeholder="Email" CssClass="Register_un" TextMode="Email" ></asp:TextBox>
           <asp:RegularExpressionValidator ID="revEmail" Font-Names="Poppins" runat="server" ControlToValidate="txtEmail" Font-Size="Small" ErrorMessage="You must enter a valid email" ForeColor="#FF6666" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Bold="False"></asp:RegularExpressionValidator>
            <br />
           <asp:TextBox ID="txtPassword" runat="server" Font-Names="Poppins" placeholder="Password" CssClass="Register_un" TextMode="Password"></asp:TextBox>
             <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ErrorMessage="Please choose a password" ControlToValidate="txtPassword" ForeColor="#FF6666" Font-Names="Poppins" Font-Size="Small" Font-Bold="False"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="txtPass2" runat="server" Font-Names="Poppins" placeholder="Confirm Password" CssClass="Register_un"  TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="cvPassword" runat="server" ErrorMessage="Both passwords must be the same" ControlToCompare="txtPassword" ControlToValidate="txtPass2" Font-Names="Poppins" Font-Size="Small" ForeColor="#FF6666" Font-Bold="False"></asp:CompareValidator>
            <br />

            <asp:TextBox ID="txtAddress" runat="server"  placeholder="Address" Font-Names="Poppins"  CssClass="Register_un"></asp:TextBox> 
            <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ErrorMessage="Please enter your address" ControlToValidate="txtAddress" ForeColor="#FF6666"  Font-Names="Poppins" Font-Size="Small" ></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="txtCity" runat="server"  placeholder="City" Font-Names="Poppins"  CssClass="Register_un"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvCity" runat="server" ErrorMessage="Please enter your city" ControlToValidate="txtCity" ForeColor="#FF6666"  Font-Names="Poppins" Font-Size="Small" ></asp:RequiredFieldValidator>
            <br />

             <asp:TextBox ID="txtState" runat="server"  placeholder="State" Font-Names="Poppins"  CssClass="Register_un"></asp:TextBox>     
             <asp:RequiredFieldValidator ID="rfvState" runat="server" ErrorMessage="Please enter your state" ControlToValidate="txtState" ForeColor="#FF6666"  Font-Names="Poppins" Font-Size="Small" ></asp:RequiredFieldValidator>
            <br />
 
            <asp:TextBox ID="txtZipcode" runat="server"  placeholder="Zipcode" Font-Names="Poppins"  CssClass="Register_un"></asp:TextBox>        
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please enter a valid zipcode" ForeColor="#FF6666"  Font-Names="Poppins" Font-Size="Small"  ControlToValidate="txtZipcode" ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator>
             <br />
            <asp:TextBox ID="txtCountry" runat="server"  placeholder="Country" Font-Names="Poppins"  CssClass="Register_un"></asp:TextBox>   
             <asp:RequiredFieldValidator ID="rfvCountry" runat="server" ErrorMessage="Please enter your country" ControlToValidate="txtCountry" ForeColor="#FF6666"  Font-Names="Poppins" Font-Size="Small" ></asp:RequiredFieldValidator>
            <br />

            <asp:TextBox ID="txtPhone" runat="server"  placeholder="Phone Number" Font-Names="Poppins"  CssClass="Register_un"></asp:TextBox>   
            
                <br /> 
            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" ControlToValidate="txtPhone" runat="server" ForeColor="#FF6666"  Font-Names="Poppins" Font-Size="Small" 
                 ErrorMessage="Please enter a valid phone number (Ex. 123-456-7890)" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>

            <asp:Button ID="btnRegister" runat="server" Font-Names="Poppins" Text="Register" CssClass="Login_btn" OnClick="btnRegister_Click" />
               <br /><br />
             <asp:Label ID="lblExist" runat="server" Font-Names="Poppins" Font-Size="Small" ForeColor="#FF6666" Font-Bold="False"></asp:Label>
           <br /><br />
            <h6>By creating an account, you agree to TKC's <asp:HyperLink ID="Conditions" runat="server">Conditions of Use</asp:HyperLink> and <asp:HyperLink ID="Privacy" runat="server">Privacy Notice</asp:HyperLink>.</h6>
            <hr>

    <h5><a href="signin.aspx" >Already have an account? Signin</a></h5>
  </div>

    </center> 
     <br /><br /><br /> <br /><br /><br /> <br /><br /><br />
     <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
     <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /> <br /><br /><br /><br /><br /><br /><br /><br />

        <script type="text/javascript">
        $(' .phone1').mask('(999) 999-9999');
    </script>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TKCConnectionString %>" 
        InsertCommand="INSERT INTO [SIGNUP] (Email, Password, FirstName, LastName, Address, City, State, Zipcode, Country, Phone) VALUES (@Email, @Password, @FirstName, @LastName, @Address, @City, @State, @Zipcode, @Country, @Phone)" 
        SelectCommand="SELECT Email, Password, FirstName, LastName, Address, City, State, Zipcode, Country, Phone FROM [SIGNUP]">
               
         <InsertParameters>
                        <asp:Parameter Name="Email" />
                        <asp:Parameter Name="Password" />
                        <asp:Parameter Name="FirstName" />
                        <asp:Parameter Name="LastName" />
                        <asp:Parameter Name="Address" />
                        <asp:Parameter Name="City" />
                        <asp:Parameter Name="State" />
                        <asp:Parameter Name="Zipcode" />
                        <asp:Parameter Name="Country" />
                        <asp:Parameter Name="Phone" />
         </InsertParameters>

    </asp:SqlDataSource>
 
</asp:Content>
