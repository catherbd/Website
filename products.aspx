<%@ Page Title="Products" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="products.aspx.cs" Inherits="products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <div>
        <header>
            <h1>Products Page</h1>
            <p>
                <%: DateTime.Now.ToString() %>
            </p>
        </header>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
       <%-- <div id="nav">
            <ul>
                
                <li><a href="Default.aspx">Home</a></li>
                <li><a href="products.aspx">Products</a></li>
                <li><a href="login.aspx">Log-in</a></li>
                <li><a href="about.aspx">About Us</a></li>
                <li><a href="contacts.aspx">Contact Us</a></li>
            </ul>
        </div>--%>
        <h2>Products</h2>    
        <p>
            These are the recommended products and their approximate prices. These products will improve the students ability to learn more about Biology.
        </p>  
        <asp:Label ID="Label1" runat="server" Text="Products"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Shopping Cart"></asp:Label>
    </div>
        <asp:ListBox ID="leftListBox" runat="server" Height="141px" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" Width="156px">
                </asp:ListBox>
        <asp:Button ID="Add" runat="server" Height="32px" style="margin-left: 88px; margin-top: 0px" Text="Add" Width="64px" OnClick="Add_Click" />
        <asp:ListBox ID="rightListBox" runat="server" Height="136px" style="margin-left: 71px; margin-top: 0px" Width="208px" OnSelectedIndexChanged="InventoryList_SelectedIndexChanged"></asp:ListBox>
      <br />
    <asp:Button ID="Delete" runat="server" Height="33px" style="margin-left: 246px" Text="Remove" Width="61px" OnClick="Delete_Click" />
    <br />
    <asp:Label ID="lblSummary" runat="server" BorderStyle="Solid" BorderWidth="1px" Height="136px" Width="267px" style="margin-top: 15px"></asp:Label>

</asp:Content>

