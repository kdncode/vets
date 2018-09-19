<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="update.aspx.cs" Inherits="update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<center>
        <div class ="Login">
        <h2 style="color: rebeccapurple";>Update Your Info</h2>

     <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:TKCConnectionString %>"
            SelectCommand="SELECT [Email], [Password], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Country], [Phone], FROM [SIGNUP] WHERE ([Email] = @Email)"
            UpdateCommand="UPDATE [SIGNUP] SET [Password] = @Password, [FirstName] = @FirstName, [LastName] = @LastName, [Address] = @Address,
             [City] = @City, [State] = @State, [Zipcode] = @Zipcode, [Country] = @Country, [Phone] = @Phone,  WHERE [Email] = @Email" 
            DeleteCommand="DELETE FROM [SIGNUP] WHERE (Email = @Email)" 
            InsertCommand="INSERT INTO [SIGNUP] (Email, Password, FirstName, LastName, Address, City, State, Zipcode, Country, Phone) VALUES (@Email, @Password, @FirstName, @LastName, @Address, @City, @State, @Zipcode, @Country, @Phone)">
            <UpdateParameters>
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="FirstName" Type="String" />
                <asp:Parameter Name="LastName" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="State" Type="String" />
                <asp:Parameter Name="Zipcode" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
            </UpdateParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="Email" QueryStringField="Email" Type="String" />
            </SelectParameters>
            <DeleteParameters>
                <asp:Parameter Name="Email" />
            </DeleteParameters>
            <InsertParameters>
                 <asp:Parameter Name="Password" />
                <asp:Parameter Name="FirstName"  />
                <asp:Parameter Name="LastName" />
                <asp:Parameter Name="Email"  />
                <asp:Parameter Name="Address"  />
                <asp:Parameter Name="City"  />
                <asp:Parameter Name="State" />
                <asp:Parameter Name="Zipcode" />
                <asp:Parameter Name="Country"  />
                <asp:Parameter Name="Phone"  />
            </InsertParameters>
        </asp:SqlDataSource>  
    
            <asp:TextBox ID="txtFName" runat="server" Font-Names="Poppins" placeholder="First name" CssClass="Register_un"></asp:TextBox><br />
            <asp:TextBox ID="txtLName" runat="server" Font-Names="Poppins" placeholder="Last name" CssClass="Register_un" ></asp:TextBox> <br />
            <asp:TextBox ID="txtEmail" runat="server" Font-Names="Poppins" placeholder="Email" CssClass="Register_un" TextMode="Email" ></asp:TextBox><br />
            <asp:TextBox ID="txtPassword" runat="server" Font-Names="Poppins" placeholder="Password" CssClass="Register_un" TextMode="Password"></asp:TextBox>
            <asp:TextBox ID="txtPass2" runat="server" Font-Names="Poppins" placeholder="Confirm Password" CssClass="Register_un"  TextMode="Password"></asp:TextBox>
            <asp:TextBox ID="txtAddress" runat="server"  placeholder="Address" Font-Names="Poppins"  CssClass="Register_un"></asp:TextBox> 
            <br />
            <asp:TextBox ID="txtCity" runat="server"  placeholder="City" Font-Names="Poppins"  CssClass="Register_un"></asp:TextBox>
            <br />
   
             <asp:TextBox ID="txtState" runat="server"  placeholder="State" Font-Names="Poppins"  CssClass="Register_un"></asp:TextBox>     
            <br />
            <asp:TextBox ID="txtZipcode" runat="server"  placeholder="Zipcode" Font-Names="Poppins"  CssClass="Register_un"></asp:TextBox>        
            <br />
            <asp:TextBox ID="txtCountry" runat="server"  placeholder="Country" Font-Names="Poppins"  CssClass="Register_un"></asp:TextBox>   
             <br />
            <asp:TextBox ID="txtPhone" runat="server"  placeholder="Phone Number" Font-Names="Poppins"  CssClass="Register_un"></asp:TextBox>   
            <br /><br /><br /><br />
            <asp:Button ID="btnSave" runat="server" class="btn btn-outline-secondary" OnClick="btnSave_Click" Text="Save" />
  </div>

    </center> 
              <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />

    <script type="text/javascript">
        $(' .phone1').mask('(999) 999-9999');
    </script>

</asp:Content>
