<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Update_Order_Details.aspx.cs" Inherits="Update_Order_Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"><br />
<%--     <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:TKCConnectionString %>"
            SelectCommand="SELECT [Email], [Password], [FirstName], [LastName], [Address], [City], [State], [Zipcode], [Country], [Phone], FROM [SIGNUP] WHERE ([Email] = @Email)"
            UpdateCommand="UPDATE [Orders] SET [Password] = @Password, [FirstName] = @FirstName, [LastName] = @LastName, [Address] = @Address,
             [City] = @City, [State] = @State, [Zipcode] = @Zipcode, [Country] = @Country, [Phone] = @Phone,  WHERE [Email] = @Email" 
            DeleteCommand="DELETE FROM [Orders] WHERE (Email = @Email)" 
            InsertCommand="INSERT INTO [Orders] (Email, Password, FirstName, LastName, Address, City, State, Zipcode, Country, Phone) VALUES (@Email, @Password, @FirstName, @LastName, @Address, @City, @State, @Zipcode, @Country, @Phone)">
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
        </asp:SqlDataSource> --%>

 <center>
        <div class ="Login">
        <h2>Ship to</h2>
        <center> 
            <asp:TextBox ID="txtFName1" runat="server" Font-Names="Poppins" placeholder="First name" CssClass="Register_un"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvFName" runat="server"  ErrorMessage="Please enter your First Name" ControlToValidate="txtFName1" ForeColor="#FF6666"  Font-Names="Poppins" Font-Size="Small" Font-Bold="False"></asp:RequiredFieldValidator><br />
            <asp:TextBox ID="txtLName1" runat="server" Font-Names="Poppins" placeholder="Last name" CssClass="Register_un" ></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvLName" runat="server" ErrorMessage="Please enter your Last Name" ControlToValidate="txtLName1" ForeColor="#FF6666" Font-Names="Poppins" Font-Size="Small" Font-Bold="False"></asp:RequiredFieldValidator><br />
            <%-- <asp:TextBox ID="txtEmail1" runat="server" Font-Names="Poppins" placeholder="Email" CssClass="Register_un" TextMode="Email" ></asp:TextBox>
           <asp:RegularExpressionValidator ID="revEmail" Font-Names="Poppins" runat="server" ControlToValidate="txtEmail1" Font-Size="Small" ErrorMessage="You must enter a valid email" ForeColor="#FF6666" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Bold="False"></asp:RegularExpressionValidator>
            <br />--%>
   
            <asp:TextBox ID="txtAddress1" runat="server"  placeholder="Address" Font-Names="Poppins"  CssClass="Register_un"></asp:TextBox> 
            <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ErrorMessage="Please enter your address" ControlToValidate="txtAddress1" ForeColor="#FF6666"  Font-Names="Poppins" Font-Size="Small" ></asp:RequiredFieldValidator><br />
            <asp:TextBox ID="txtCity1" runat="server"  placeholder="City" Font-Names="Poppins"  CssClass="Register_un"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvCity" runat="server" ErrorMessage="Please enter your city" ControlToValidate="txtCity1" ForeColor="#FF6666"  Font-Names="Poppins" Font-Size="Small" ></asp:RequiredFieldValidator><br /> 
             <asp:TextBox ID="txtState1" runat="server"  placeholder="State" Font-Names="Poppins"  CssClass="Register_un"></asp:TextBox>     
             <asp:RequiredFieldValidator ID="rfvState" runat="server" ErrorMessage="Please enter your state" ControlToValidate="txtState1" ForeColor="#FF6666"  Font-Names="Poppins" Font-Size="Small" ></asp:RequiredFieldValidator><br />
            <asp:TextBox ID="txtZipcode1" runat="server"  placeholder="Zipcode" Font-Names="Poppins"  CssClass="Register_un"></asp:TextBox>        
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please enter a valid zipcode" ForeColor="#FF6666"  Font-Names="Poppins" Font-Size="Small"  ControlToValidate="txtZipcode1" ValidationExpression="\d{5}(-\d{4})?"></asp:RegularExpressionValidator><br />
            <asp:TextBox ID="txtCountry1" runat="server"  placeholder="Country" Font-Names="Poppins"  CssClass="Register_un"></asp:TextBox>   
             <asp:RequiredFieldValidator ID="rfvCountry" runat="server" ErrorMessage="Please enter your country" ControlToValidate="txtCountry1" ForeColor="#FF6666"  Font-Names="Poppins" Font-Size="Small" ></asp:RequiredFieldValidator>      <br />
            <asp:TextBox ID="txtPhone1" runat="server"  placeholder="Phone Number" Font-Names="Poppins"  CssClass="Register_un"></asp:TextBox>   <br /> 
            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" ControlToValidate="txtPhone1" runat="server" ForeColor="#FF6666"  Font-Names="Poppins" Font-Size="Small" 
                 ErrorMessage="Please enter a valid phone number (Ex. 123-456-7890)" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator><br />    
            <asp:Button ID="ButtonUpdateOrderDetails" runat="server" class="btn btn-outline-secondary" OnClick="ButtonUpdateOrderDetails_Click" Text="Update and Continue" />
        </center>
  </div>
    </center> 
    
    <script type="text/javascript">
        $(' .phone1').mask('(999) 999-9999');
    </script>

    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</asp:Content>
